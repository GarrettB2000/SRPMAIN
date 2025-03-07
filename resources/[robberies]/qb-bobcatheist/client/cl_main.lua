local QBCore = exports['qb-core']:GetCoreObject()

local hostage
local vaultOpened
local vaultdoorcoords = vector3(888.12, -2130.54, 31.24)

--- @description Sends an alert to the server that Bobcat has been hit
--- @return nil
local AlertCops = function()
    --TriggerServerEvent('qb-scoreboard:server:SetActivityBusy', 'bobcat', true) -- Create bobcat entry in your qb-scoreboard
    exports["ps-dispatch"]:BobcatRobbery()
  --  TriggerServerEvent('police:server:policeAlert', 'Bobcat Security Alarm')
end

--- @description Performs particle effect for thermite
--- @param index number - Index number to define position
--- @return nil
local ThermiteEffect = function(index)
    RequestAnimDict('anim@heists@ornate_bank@thermal_charge')
    while not HasAnimDictLoaded('anim@heists@ornate_bank@thermal_charge') do Wait(0) end
    local ped = PlayerPedId()
    local ptfx = Shared.Doors[index].ptfx
    Wait(1500)
    TriggerServerEvent('qb-bobcatheist:server:ThermitePtfx', ptfx, index)
    Wait(500)
    TaskPlayAnim(ped, 'anim@heists@ornate_bank@thermal_charge', 'cover_eyes_intro', 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, 'anim@heists@ornate_bank@thermal_charge', 'cover_eyes_loop', 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    Wait(25000)
    ClearPedTasks(ped)
    Wait(2000)
    TriggerServerEvent('vrp-bobcat:server:OpenDoor', Shared.Doors[index].id)
  --  TriggerServerEvent('qb-doorlock:server:updateState', Shared.Doors[index].id, false, false, false, true, false, false)
end

--- @description Perform planting thermite animation
--- @param index number - Index number to define position
--- @return nil
local PlantThermite = function(index)
    TriggerServerEvent('qb-bobcatheist:server:RemoveThermite')
    RequestAnimDict('anim@heists@ornate_bank@thermal_charge')
    RequestModel('hei_p_m_bag_var22_arm_s')
    RequestNamedPtfxAsset('scr_ornate_heist')
    while not HasAnimDictLoaded('anim@heists@ornate_bank@thermal_charge') and not HasModelLoaded('hei_p_m_bag_var22_arm_s') and not HasNamedPtfxAssetLoaded('scr_ornate_heist') do Wait(0) end
    local ped = PlayerPedId()
    local pos = Shared.Doors[index].anim
    SetEntityHeading(ped, pos.w)
    Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local bagscene = NetworkCreateSynchronisedScene(pos.x, pos.y, pos.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, pos.x, pos.y, pos.z,  true,  true, false)
    SetEntityCollision(bag, false, true)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local charge = CreateObject(`hei_prop_heist_thermite`, x, y, z + 0.2,  true,  true, true)
    SetEntityCollision(charge, false, true)
    AttachEntityToEntity(charge, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'bag_thermal_charge', 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Wait(5000)
    DetachEntity(charge, 1, 1)
    FreezeEntityPosition(charge, true)
    DeleteObject(bag)
    NetworkStopSynchronisedScene(bagscene)
    CreateThread(function()
        Wait(15000)
        DeleteEntity(charge)
    end)
end

RegisterNetEvent('thermite:UseThermite', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    for i=1, 2 do
        if #(pos - Shared.Doors[i].anim.xyz) < 1.5 then
            if Shared.Doors[i].hit then
                QBCore.Functions.Notify('Somebody already thermited this door..', 'error', 2500)
                return
            end

            QBCore.Functions.TriggerCallback('qb-bobcatheist:server:getCops', function(result)
                if result >= Shared.MinCops then
                    if math.random(100) <= 85 and not QBCore.Functions.IsWearingGloves() then
                        TriggerServerEvent('evidence:server:CreateFingerDrop', pos)
                    end
                    PlantThermite(i)
                    AlertCops()
                    exports['memorygame']:thermiteminigame(Shared.ThermiteSettings.correctBlocks, Shared.ThermiteSettings.incorrectBlocks, Shared.ThermiteSettings.timetoShow, Shared.ThermiteSettings.timetoLose, function()
                        ThermiteEffect(i)
                    end, function()
                        QBCore.Functions.Notify('Thermite failed..', 'error', 2500)
                    end)
                else
                    QBCore.Functions.Notify('Not enough police on duty..', 'error', 2500)
                end
            end)

            break
        end
    end
end)

RegisterNetEvent('qb-bobcatheist:client:ThermitePtfx', function(coords, index)
    Shared.Doors[index].hit = true
    RequestNamedPtfxAsset('scr_ornate_heist')
    while not HasNamedPtfxAssetLoaded('scr_ornate_heist') do Wait(0) end
    SetPtfxAssetNextCall('scr_ornate_heist')
    local effect = StartParticleFxLoopedAtCoord('scr_heist_ornate_thermal_burn', coords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Wait(27500)
    StopParticleFxLooped(effect, 0)
end)

RegisterNetEvent('qb-bobcatheist:client:LootCrate', function()
    QBCore.Functions.Progressbar('LootCrate', 'Looting Crate', 4500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('qb-bobcatheist:server:LootCrate')
    end, function()
        QBCore.Functions.Notify('Canceled', 'error', 2500)
    end)
end)

RegisterNetEvent('qb-bobcatheist:client:UseCard', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    if #(pos - vector3(905.51, -2119.6, 31.23)) < 1.5 then
        if not Shared.Doors[3].hit then
            local hasItem = QBCore.Functions.HasItem('sec_c')
            if hasItem then
                if math.random(1, 100) <= 85 and not QBCore.Functions.IsWearingGloves() then
                    TriggerServerEvent('evidence:server:CreateFingerDrop', pos)
                end
                TriggerEvent('ultra-voltlab', 12, function(result,reason)
                    if result == 1 then
                        QBCore.Functions.Progressbar('security_pass', 'Swiping security card..', math.random(2500, 5000), false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                            animDict = 'anim@gangops@facility@servers@',
                            anim = 'hotwire',
                            flags = 16,
                        }, {}, {}, function() -- Done
                            StopAnimTask(ped, 'anim@gangops@facility@servers@', 'hotwire', 1.0)
                            TriggerServerEvent('qb-bobcatheist:server:RemoveCard')
                            QBCore.Functions.TriggerCallback('qb-bobcatheist:server:spawnguards', function(netIds)
                                Wait(1000)
                                for i=1, #netIds do
                                    local guard = NetworkGetEntityFromNetworkId(netIds[i])
                                    SetPedDropsWeaponsWhenDead(guard, false)
                                    SetEntityMaxHealth(guard, 200)
                                    SetEntityHealth(guard, 200)
                                    SetCanAttackFriendly(guard, false, true)
                                    SetPedCombatAttributes(guard, 46, true)
                                    SetPedCombatAttributes(guard, 0, false)
                                    SetPedCombatAbility(guard, 100)
                                    SetPedAsCop(guard, true)
                                    SetPedRelationshipGroupHash(guard, HATES_PLAYER)
                                    SetPedAccuracy(guard, 100)
                                    SetPedFleeAttributes(guard, 0, 0)
                                    SetPedKeepTask(guard, true)
                                end
                            end)
                            TriggerServerEvent('vrp-bobcat:server:OpenDoor', Shared.Doorlock3)
                        end, function() -- Cancel
                            StopAnimTask(ped, 'anim@gangops@facility@servers@', 'hotwire', 1.0)
                            QBCore.Functions.Notify('Canceled..', 'error')
                        end)
                    else
                        QBCore.Functions.Notify('You do not have the required access level.', 'error')
                    end
                end)
            else
                QBCore.Functions.Notify('You are missing the correct item(s)..', 'error', 2500)
            end
        else
            QBCore.Functions.Notify('This door has already been hit..', 'error', 2500)
        end
    end
end)

RegisterNetEvent('qb-bobcatheist:client:SetCard', function()
    Shared.Doors[3].hit = true
end)

RegisterNetEvent('qb-bobcatheist:client:hostage', function()
    FreezeEntityPosition(hostage, false)
    ClearPedTasks(hostage)
	TaskGoStraightToCoord(hostage, 881.31, -2109.26, 31.23, 150.0, -1, 85.0, 0)
	Wait(3000)
	TaskGoStraightToCoord(hostage, 879.4, -2132.36, 31.23, 150.0, -1, 175.0, 0)
	Wait(6000)
    TaskGoStraightToCoord(hostage, 888.19, -2133.65, 31.23, 150.0, -1, 355.0, 0)
	Wait(5500)
    local x, y, z = table.unpack(GetEntityCoords(hostage))
    RequestModel('prop_bomb_01')
    while not HasModelLoaded('prop_bomb_01') do Wait(0) end
    local stickybomb = CreateObject(`prop_bomb_01`, x, y, z + 0.4, false, true, true)
    SetEntityCollision(stickybomb, false, true)
    AttachEntityToEntity(stickybomb, hostage, GetPedBoneIndex(hostage, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    RequestAnimDict('weapons@projectile@grenade_str')
    while not HasAnimDictLoaded('weapons@projectile@grenade_str') do Wait(0) end
    TaskPlayAnim(hostage, 'weapons@projectile@grenade_str', 'throw_h_fb_backward', 8.0, 8.0, -1, 33, 0, 0, 0, 0)
	Wait(1000)
    DeleteObject(stickybomb)
    ClearPedTasks(hostage)
	AddExplosion(888.12, -2130.54, 31.24, 2, 0.0, true, false, 4.0)
    SetEntityHealth(hostage, 0)
    vaultOpened = true
    local vaultobject = GetRayfireMapObject(vaultdoorcoords.x, vaultdoorcoords.y, vaultdoorcoords.z, 10.0, "DES_VaultDoor001")
    SetStateOfRayfireMapObject(vaultobject, 9)
end)

CreateThread(function()
    -- Hostage ped and IPL
    QBCore.Functions.TriggerCallback('qb-bobcatheist:server:GetConfig', function(config, hostageDone)
        Shared = config
        vaultOpened = hostageDone

        if not hostageDone then
            -- Hostage
            local model = `cs_drfriedlander`
            RequestModel(model)
            while not HasModelLoaded(model) do Wait(0) end
            hostage = CreatePed(30, model, 884.9, -2109.71, 30.23, 85.0, false, false)
            SetBlockingOfNonTemporaryEvents(hostage, true)
            SetPedDiesWhenInjured(hostage, false)
            SetPedCanPlayAmbientAnims(hostage, true)
            SetPedCanRagdollFromPlayerImpact(hostage, false)
            SetEntityInvincible(hostage, false)
            RequestAnimDict('random@arrests@busted')
            while not HasAnimDictLoaded('random@arrests@busted') do Wait(0) end
            TaskPlayAnim(hostage, 'random@arrests@busted', 'idle_a', 8.0, 8.0, -1, 33, 0, 0, 0, 0)
            FreezeEntityPosition(hostage, true)

            exports['qb-target']:AddTargetEntity(hostage, {
                options = {
                    {
                        type = 'server',
                        event = 'qb-bobcatheist:server:hostage',
                        icon = 'fas fa-bomb',
                        label = 'Blast the Door!',
                        canInteract = function()
                            return Shared.Doors[3].hit and not IsEntityDead(hostage)
                        end
                    }
                },
                distance = 1.5,
            })
        end
    end)

    local object_model = "xm_prop_crates_weapon_mix_01a"
	RequestModel(object_model)
	while not HasModelLoaded(object_model) do Wait(0) end
	if not HasModelLoaded(object_model) then
		SetModelAsNoLongerNeeded(object_model)
	else
		local created_object = CreateObjectNoOffset(object_model, 889.76, -2121.86, 30.23, false, false, false)
        SetEntityHeading(created_object, 265.0)
		PlaceObjectOnGroundProperly(created_object)
		FreezeEntityPosition(created_object, true)
		SetModelAsNoLongerNeeded(object_model)
        exports['qb-target']:AddTargetEntity(created_object, {
            options = {
                {
                    type = 'client',
                    event = 'qb-bobcatheist:client:LootCrate',
                    icon = 'fas fa-box',
                    label = 'Loot Weapon Crate'
                }
            },
            distance = 1.5,
        })
	end

    exports['qb-target']:AddBoxZone('bobcatcard', vector3(905.06, -2119.38, 31.23), 0.4, 0.3, {
        name = 'bobcatcard',
        heading = 354.0,
        debugPoly = false,
        minZ = 31.14,
        maxZ = 31.94
     }, {
        options = {
            {
                type = 'client',
                event = 'qb-bobcatheist:client:UseCard',
                icon = 'fas fa-user-secret',
                label = 'Unlock Door',
                canInteract = function()
                    return not Shared.Doors[3].hit
                end
            },
        },
        distance = 1.5
    })

    local PolyZone = CircleZone:Create(vaultdoorcoords, 25, {
        name = "bobcat_vaultzone",
        debugPoly = false
    })

    PolyZone:onPlayerInOut(function(isPointInside, point)
        if isPointInside then
            local vaultobject = GetRayfireMapObject(vaultdoorcoords.x, vaultdoorcoords.y, vaultdoorcoords.z, 10.0, "DES_VaultDoor001")
            if vaultOpened then
                SetStateOfRayfireMapObject(vaultobject, 9)
            else
                SetStateOfRayfireMapObject(vaultobject, 4)
            end
        end
    end, 2000)
end)
