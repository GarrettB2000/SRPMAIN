copsCalled = false

--- Functions

--- Handles what happens after completing a laptop hack
---@param success bool - Whether the minigame was successfull
---@param bank string - Name of the bank
---@return nil
OnLaptopHackDone = function(success, bank)
    if not success then return end
    utils.notify(Locales['bank_hacked'], 'success', 3000)

    TriggerServerEvent('bankrobbery:server:SetBankHacked', bank)
end

LaptopAnimation = function(bank)
    local loc = Config.Banks[bank].laptop
    LocalPlayer.state:set("inv_busy", true, true)
    local animDict = "anim@heists@ornate_bank@hack"
    RequestAnimDict(animDict)
    RequestModel("hei_prop_hst_laptop")
    RequestModel("hei_p_m_bag_var22_arm_s")
    while not HasAnimDictLoaded(animDict) or not HasModelLoaded("hei_prop_hst_laptop") or not HasModelLoaded("hei_p_m_bag_var22_arm_s") do Wait(10) end
    local ped = PlayerPedId()
    local targetPosition, targetRotation = (vec3(GetEntityCoords(ped))), vec3(GetEntityRotation(ped))
    if math.random(1, 100) <= 65 and not QBCore.Functions.IsWearingGloves() then
        TriggerServerEvent("core_evidence:addFingerPrint", {coords = targetPosition})
    end

    local animPos = GetAnimInitialOffsetPosition(animDict, "hack_enter", loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    local animPos2 = GetAnimInitialOffsetPosition(animDict, "hack_loop", loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    local animPos3 = GetAnimInitialOffsetPosition(animDict, "hack_exit", loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    FreezeEntityPosition(ped, true)

    local netScene = NetworkCreateSynchronisedScene(animPos, targetRotation, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, targetPosition, 1, 1, 0)
    local laptop = CreateObject(`hei_prop_hst_laptop`, targetPosition, 1, 1, 0)
    NetworkAddPedToSynchronisedScene(ped, netScene, animDict, "hack_enter", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene, animDict, "hack_enter_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene, animDict, "hack_enter_laptop", 4.0, -8.0, 1)

    local netScene2 = NetworkCreateSynchronisedScene(animPos2, targetRotation, 2, false, true, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, "hack_loop", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene2, animDict, "hack_loop_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene2, animDict, "hack_loop_laptop", 4.0, -8.0, 1)

    local netScene3 = NetworkCreateSynchronisedScene(animPos3, targetRotation, 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, netScene3, animDict, "hack_exit", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene3, animDict, "hack_exit_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene3, animDict, "hack_exit_laptop", 4.0, -8.0, 1)

    Wait(200)
    NetworkStartSynchronisedScene(netScene)
    Wait(6300)
    NetworkStartSynchronisedScene(netScene2)
    Wait(2000)
    
    -- Use ultra-voltlab hack
   --[[TriggerEvent('ultra-voltlab', 20, function(result, reason)
        if result == 1 then
            OnLaptopHackDone(true, bank)
        else
            OnLaptopHackDone(false, bank)
        end
    end)]]

    TriggerEvent('ultra-fingerprint', 2, 180, function(outcome, reason)
        if outcome == 1 then
            OnLaptopHackDone(true, bank)
        else
            OnLaptopHackDone(false, bank)
        end
    end)

    Wait(4600)
    NetworkStartSynchronisedScene(netScene3)
    Wait(3000)
    DeleteObject(bag)
    DeleteObject(laptop)
    FreezeEntityPosition(ped, false)
    LocalPlayer.state:set("inv_busy", false, true)
end



LootTrolly = function(trolly, bank, index)
    local ped = cache.ped

    local moneyModel = `hei_prop_heist_cash_pile`
    if Config.Banks[bank].trolly[index].type == 'gold' then moneyModel = `ch_prop_gold_bar_01a` end

    local CurrentTrolly = trolly
    local netId = NetworkGetNetworkIdFromEntity(CurrentTrolly)

    local MoneyObject = CreateObject(moneyModel, GetEntityCoords(ped), true)
    SetEntityVisible(MoneyObject, false, false)
    AttachEntityToEntity(MoneyObject, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
    
    lib.requestModel(`hei_p_m_bag_var22_arm_s`)
    local GrabBag = CreateObject(`hei_p_m_bag_var22_arm_s`, GetEntityCoords(ped), true, false, false)
    SetModelAsNoLongerNeeded(`hei_p_m_bag_var22_arm_s`)
    
    local GrabOne = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, GrabOne, 'anim@heists@ornate_bank@grab_cash', 'intro', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(GrabBag, GrabOne, 'anim@heists@ornate_bank@grab_cash', 'bag_intro', 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    
    NetworkStartSynchronisedScene(GrabOne)
    Wait(1500)
    SetEntityVisible(MoneyObject, true, true)
    
    local GrabTwo = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, GrabTwo, 'anim@heists@ornate_bank@grab_cash', 'grab', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(GrabBag, GrabTwo, 'anim@heists@ornate_bank@grab_cash', 'bag_grab', 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(CurrentTrolly, GrabTwo, 'anim@heists@ornate_bank@grab_cash', 'cart_cash_dissapear', 4.0, -8.0, 1)
    
    NetworkStartSynchronisedScene(GrabTwo)
    Wait(37000)
    SetEntityVisible(MoneyObject, false, false)
    
    local GrabThree = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, GrabThree, 'anim@heists@ornate_bank@grab_cash', 'exit', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(GrabBag, GrabThree, 'anim@heists@ornate_bank@grab_cash', 'bag_exit', 4.0, -8.0, 1)
    
    NetworkStartSynchronisedScene(GrabThree)

    -- Evidence
    utils.createEvidence()

    -- Reward
    TriggerServerEvent('bankrobbery:server:TrollyReward', netId, bank, index)
    Wait(1800)

    DeleteEntity(GrabBag)
    DeleteObject(MoneyObject)
end

--- Performs the animation of planting thermite charge for a given bank and given index number
---@param bank string - Name of the bank
---@param index number - Index number of thermite spot
---@return nil
local PlantThermite = function(bank, index)
    TriggerServerEvent('bankrobbery:server:RemoveThermite')

    lib.requestAnimDict('anim@heists@ornate_bank@thermal_charge')
    lib.requestModel('hei_p_m_bag_var22_arm_s')
    lib.requestNamedPtfxAsset('scr_ornate_heist')
    
    local ped = cache.ped
    local pos = Config.Banks[bank].thermite[index].coords.xyz
    SetEntityHeading(ped, Config.Banks[bank].thermite[index].coords.w)

    utils.createEvidence(pos)
    Wait(100)

    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(cache.ped)))

    lib.requestModel(`hei_p_m_bag_var22_arm_s`)
    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, pos.x, pos.y, pos.z, true, true, false)
    SetModelAsNoLongerNeeded(`hei_p_m_bag_var22_arm_s`)

    SetEntityCollision(bag, false, true)
    local x, y, z = table.unpack(GetEntityCoords(ped))

    lib.requestModel(`hei_prop_heist_thermite`)
    local charge = CreateObject(`hei_prop_heist_thermite`, x, y, z + 0.2, true, true, true)
    SetModelAsNoLongerNeeded(`hei_prop_heist_thermite`)

    SetEntityCollision(charge, false, true)
    AttachEntityToEntity(charge, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)

    lib.requestAnimDict('anim@heists@ornate_bank@thermal_charge')
    local bagscene = NetworkCreateSynchronisedScene(pos.x, pos.y, pos.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'bag_thermal_charge', 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Wait(5000)

    DetachEntity(charge, 1, 1)
    FreezeEntityPosition(charge, true)
    DeleteObject(bag)
    NetworkStopSynchronisedScene(bagscene)
    RemoveAnimDict('anim@heists@ornate_bank@thermal_charge')

    CreateThread(function()
        Wait(15000)
        DeleteEntity(charge)
    end)
end

--- Performs the animation of covering eyes and starts a server synced ptfx for given bank and thermite index, sets door unlocked
---@param bank string - Name of the bank
---@param index number - Index number of thermite spot
---@return nil
local ThermiteEffect = function(bank, index)
    local ped = cache.ped
    Wait(1500)

    TriggerServerEvent('bankrobbery:server:ThermitePtfx', bank, index)
    Wait(500)

    lib.playAnim(ped, 'anim@heists@ornate_bank@thermal_charge', 'cover_eyes_intro', 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    lib.playAnim(ped, 'anim@heists@ornate_bank@thermal_charge', 'cover_eyes_loop', 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    Wait(25000)

    ClearPedTasks(ped)
    Wait(2000)

    utils.notify(Locales['thermite_success'], 'success', 3000)
end

--- Performs the PlantThermite function and starts the minigame for thermite
---@param bank string - Name of the bank
---@param index number - Index number of trolly in a bank
---@return nil
local StartThermite = function(bank, index) -- Globally used
    if not Config.Banks[bank].thermite[index].hit then
        local pos = GetEntityCoords(cache.ped)

        if #(pos - Config.Banks[bank].thermite[index].coords.xyz) < 2.0 then
            PlantThermite(bank, index)
            local bankType = Config.Banks[bank].type

            exports['memorygame']:thermiteminigame(Config.MinigameSettings.thermite.correctBlocks, Config.MinigameSettings.thermite.incorrectBlocks, Config.MinigameSettings.thermite.timetoShow, Config.MinigameSettings.thermite.timetoLose, function()
                TriggerServerEvent('bankrobbery:server:SetThermiteHit', bank, index)
                ThermiteEffect(bank, index)
            end, function()
                utils.notify(Locales['thermite_failed'], 'error', 3000)
            end)
        end
    end
end

--- Events

RegisterNetEvent('bankrobbery:client:SetBankHacked', function(bank)
    -- Open Door
    local object = GetClosestObjectOfType(Config.Banks[bank].coords.x, Config.Banks[bank].coords.y, Config.Banks[bank].coords.z, 5.0, Config.Banks[bank].vaultDoor.object, false, false, false)
    
    if object ~= 0 then
        local heading = Config.Banks[bank].vaultDoor.closed

        while heading >= Config.Banks[bank].vaultDoor.open do
            SetEntityHeading(object, heading - 0.5)
            heading -= 0.5
            Wait(10)
        end
    end

    -- Set state
    Config.Banks[bank].hacked = true
end)

RegisterNetEvent('bankrobbery:client:PDClose', function(bank)
    Config.Banks[bank].policeClose = not Config.Banks[bank].policeClose
    local object = GetClosestObjectOfType(Config.Banks[bank].coords.x, Config.Banks[bank].coords.y, Config.Banks[bank].coords.z, 5.0, Config.Banks[bank].vaultDoor.object, false, false, false)
    
    if object == 0 then return end

    if Config.Banks[bank].policeClose then -- Close
        local heading = Config.Banks[bank].vaultDoor.open

        while heading <= Config.Banks[bank].vaultDoor.closed do
            SetEntityHeading(object, heading + 0.5)
            heading += 0.5
            Wait(10)
        end
    else -- Open
        local heading = Config.Banks[bank].vaultDoor.closed

        while heading >= Config.Banks[bank].vaultDoor.open do
            SetEntityHeading(object, heading - 0.5)
            heading -= 0.5
            Wait(10)
        end
    end
end)

RegisterNetEvent('bankrobbery:client:ResetBank', function(bank)
    -- Door
    Config.Banks[bank].hacked = false
    Config.Banks[bank].policeClose = false

    if Config.Banks[bank].type == 'fleeca' then
        Config.Banks[bank].keycardTaken = false
        Config.Banks[bank].innerDoor.hacked = false
    end

    -- lockers
    for i=1, #Config.Banks[bank].lockers, 1 do
        Config.Banks[bank].lockers[i].busy = false
        Config.Banks[bank].lockers[i].taken = false
    end

    -- Trollys
    for j=1, #Config.Banks[bank].trolly, 1 do
        Config.Banks[bank].trolly[j].taken = false
        Config.Banks[bank].trolly[j].busy = false
    end

    -- Thermite spots
    if Config.Banks[bank].thermite then
        for k=1, #Config.Banks[bank].thermite, 1 do
            Config.Banks[bank].thermite[k].hit = false
        end
    end

    -- Big Banks
    if bank == 'Paleto' then
        Config.Banks['Paleto'].securityEntrance.hacked = false
        Config.Banks['Paleto'].sideEntrance.hacked = false
        Config.Banks['Paleto'].sideHack.hacked = false
        Config.Banks['Paleto'].officeHacks[1].hacked = false
        Config.Banks['Paleto'].officeHacks[2].hacked = false
        Config.Banks['Paleto'].officeHacks[3].hacked = false
    elseif bank == 'Pacific' then
        Config.Banks['Pacific'].lockdown = false
        Config.Banks['Pacific'].laserPanel = false
        Config.Banks['Pacific'].sideEntrance.hacked = false
        Config.Banks['Pacific'].computers['main'].hacked = false
        Config.Banks['Pacific'].computers['office1'].hacked = false
        Config.Banks['Pacific'].computers['office2'].hacked = false
        Config.Banks['Pacific'].computers['office3'].hacked = false
        Config.Banks['Pacific'].computers['office4'].hacked = false
        Config.Banks['Pacific'].sideVaults[1].hacked = false
        Config.Banks['Pacific'].sideVaults[2].hacked = false
    end

    -- Close Vault
    local object = GetClosestObjectOfType(Config.Banks[bank].coords.x, Config.Banks[bank].coords.y, Config.Banks[bank].coords.z, 5.0, Config.Banks[bank].vaultDoor.object, false, false, false)
    
    if object ~= 0 then
        local heading = Config.Banks[bank].vaultDoor.open
        while heading <= Config.Banks[bank].vaultDoor.closed do
            SetEntityHeading(object, heading + 0.5)
            heading += 0.5
            Wait(10)
        end
    end
end)

RegisterNetEvent('bankrobbery:client:LootTrolly', function(data)
    if not currentBank then return end

    local trolly = data.entity
    local pos = GetEntityCoords(trolly)

    for k, v in pairs(Config.Banks[currentBank].trolly) do
        if #(pos - v.coords.xyz) < 1.0 then
            -- If taken or busy return
            if v.busy or v.taken then
                utils.notify(Locales['trolly_hit'], 'success', 3000)
                return 
            end
            
            -- Set Busy
            TriggerServerEvent('bankrobbery:server:SetTrollyBusy', currentBank, k)
            LocalPlayer.state.inv_busy = true

            -- Loot trolly animation
            LootTrolly(trolly, currentBank, k)
            LocalPlayer.state.inv_busy = false

            -- Evidence
            utils.createEvidence(pos)

            return
        end
    end
end)

RegisterNetEvent('bankrobbery:client:SetTrollyBusy', function(bank, index)
    Config.Banks[bank].trolly[index].busy = true
end)

RegisterNetEvent('bankrobbery:client:SetTrollyTaken', function(bank, index)
    Config.Banks[bank].trolly[index].taken = true
end)


RegisterNetEvent('bankrobbery:client:LootLocker', function(data)
    if not currentBank then return end
    
    -- Check drill
    local hasItem = client.hasItems('drill')
    if not hasItem then
        utils.notify(Locales['locker_missing_drill'], 'error', 2500)
        return
    end
    
    -- If taken or busy return
    if Config.Banks[data.bank].lockers[data.locker].busy or Config.Banks[data.bank].lockers[data.locker].taken then
        utils.notify(Locales['locker_hit'], 'error', 3000)
        return
    end

    -- Evidence
    local ped = cache.ped
    local pos = GetEntityCoords(ped)

    utils.createEvidence(pos)

    -- Lockpick minigame
    local success = exports['bd-minigames']:Lockpick("Lockpick", 3, 20)

    if not success then
        utils.notify(Locales['minigame_failed'], 'error', 3000)
        return
    end

    -- Set Busy
    TriggerServerEvent('bankrobbery:server:SetLockerBusy', data.bank, data.locker)
    LocalPlayer.state.inv_busy = true

    -- Create Drill and Attach
    local drillObjectModel = joaat('hei_prop_heist_drill')
    lib.requestModel(drillObjectModel)
    local DrillObject = CreateObject(drillObjectModel, pos.x, pos.y, pos.z, true, true, true)
    SetModelAsNoLongerNeeded(drillObjectModel)
    AttachEntityToEntity(DrillObject, ped, GetPedBoneIndex(ped, 57005), 0.14, 0, -0.01, 90.0, -90.0, 180.0, true, true, false, true, 1, true)

    -- Loot locker animation
    lib.playAnim(ped, 'anim@heists@fleeca_bank@drilling', 'drill_straight_idle', 3.0, 3.0, -1, 1, 0, false, false, false)

    -- STRESS
    local isDrilling = true

    -- Request and load the audio bank
    RequestScriptAudioBank('DLC_HEIST_FLEECA_SOUNDSET', false)

    -- Wait for a short period (e.g., 1 second) to ensure the bank is loaded
    Citizen.Wait(1000) -- Adjust time as needed

    -- Sounds & Anim loading
    RequestScriptAudioBank('DLC_HEIST_FLEECA_SOUNDSET', false)
    local soundId = GetSoundId()
    PlaySoundFromEntity(soundId, 'Drill', DrillObject, 'DLC_HEIST_FLEECA_SOUNDSET', true, 0)


    -- Drilling Loop for dust
    CreateThread(function()
        lib.requestNamedPtfxAsset('core')

        while isDrilling do
            UseParticleFxAssetNextCall('core')
            local drillObjectCoords = GetEntityCoords(DrillObject)
            local dust = StartNetworkedParticleFxNonLoopedAtCoord('ent_dst_dust', drillObjectCoords.x, drillObjectCoords.y, drillObjectCoords.z, 0.0, 0.0, GetEntityHeading(ped) - 180.0, 1.0, 0.0, 0.0, 0.0)
            Wait(600)
        end

        RemoveNamedPtfxAsset('core')
    end)

    TriggerEvent('Drilling:Start', function(success)
        if success then
            TriggerServerEvent('bankrobbery:server:LockerReward', data.bank, data.locker)
        else
            utils.notify(Locales['locker_failed'], 'error', 3000)
        end

        StopAnimTask(ped, 'anim@heists@fleeca_bank@drilling', 'drill_straight_idle', 1.0)

        -- Stop Sound
        StopSound(soundId)
        ReleaseSoundId(soundId)
        ReleaseScriptAudioBank()

        -- Delete Drill
        DeleteEntity(DrillObject)

        isDrilling = false
        LocalPlayer.state.inv_busy = false
    end)
end)

RegisterNetEvent('bankrobbery:client:SetLockerBusy', function(bank, index)
    Config.Banks[bank].lockers[index].busy = true
end)

RegisterNetEvent('bankrobbery:client:SetLockerTaken', function(bank, index)
    Config.Banks[bank].lockers[index].taken = true
end)

RegisterNetEvent('thermite:UseThermite', function()
    local pos = GetEntityCoords(cache.ped)
    if currentBank then
        if not Config.Banks[currentBank].thermite then return end

        for i = 1, #Config.Banks[currentBank].thermite, 1 do
            if #(pos - Config.Banks[currentBank].thermite[i].coords.xyz) < 2 then
                StartThermite(currentBank, i)
            end
        end
    end
end)

RegisterNetEvent('bankrobbery:client:ThermitePtfx', function(coords)
    if #(GetEntityCoords(cache.ped) - coords) > 250 then return end

    lib.requestNamedPtfxAsset('scr_ornate_heist')
    UseParticleFxAsset('scr_ornate_heist')

    local effect = StartParticleFxLoopedAtCoord('scr_heist_ornate_thermal_burn', coords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Wait(27500)

    StopParticleFxLooped(effect, 0)
    RemoveNamedPtfxAsset('scr_ornate_heist')
end)

RegisterNetEvent('bankrobbery:client:SetThermiteHit', function(bank, index)
    Config.Banks[bank].thermite[index].hit = true
end)

--- Targets

-- Target for trollys
local trollyModels = { `hei_prop_hei_cash_trolly_01`, `ch_prop_gold_trolly_01a` }

exports['qb-target']:AddTargetModel(trollyModels, {
    options = {
        {
            type = 'client',
            event = 'bankrobbery:client:LootTrolly',
            icon = 'fas fa-hand-holding',
            label = Locales['trolly_target_label'],
            canInteract = function(entity)
                return currentBank and Config.Banks[currentBank].hacked
            end,
        }
    },
    distance = 0.85, 
})

-- Target for lockers
for k, v in pairs(Config.Banks) do
    for i = 1, #v.lockers do
        exports['qb-target']:AddBoxZone('bankrobbery_locker_' .. k .. i, vec3(v.lockers[i].coords.x, v.lockers[i].coords.y, v.lockers[i].coords.z - 1.0), 0.5, 2.0, {
            name = 'bankrobbery_locker_' .. k .. i,
            heading = v.lockers[i].coords.w,
            debugPoly = Config.Debug,
            minZ = v.lockers[i].coords.z - 1.0,
            maxZ = v.lockers[i].coords.z + 1.0
        }, {
            options = { 
                {
                    type = 'client',
                    event = 'bankrobbery:client:LootLocker',
                    icon = 'fas fa-hand-holding',
                    label = Locales['locker_target_label'],
                    canInteract = function()
                        return Config.Banks[k].hacked and not Config.Banks[k].lockers[i].taken and not Config.Banks[k].lockers[i].busy
                    end,
                    bank = k,
                    locker = i
                }
            },
            distance = 1.0,
        })

    end
end

--- Threads

CreateThread(function()
    -- Get Config on startup
    Config = lib.callback.await('bankrobbery:server:GetConfig', 200)
end)
