local QBCore = exports['qb-core']:GetCoreObject()
local closesthouseid, closestHouse
local insideHouse = false
local robbedHouseCoords = nil
local enteredHouseId = nil
local PlayerJob = {}
local robbing = false

local exitZone = false
local robZone = false

local coordsx, coordsy, coordsz
local coord = false
local isRendered = false
local pedSpawned = nil
local started = false
local receivedCoords = nil
local inHouseZone = false
local ox_inventory = exports.ox_inventory

CreateThread(function()
	QBCore.Functions.TriggerCallback('qb-houserobbery:pedSpawn', function(x,y,z)
		coordsx, coordsy, coordsz = x,y,z
		coord = true
	end)
end)

CreateThread(function()
	while true do
		Wait(500)
		--for k,v in pairs (Config.PedList) do
		local playerCoords = GetEntityCoords(PlayerPedId())
		local dist = #(playerCoords - vector3(coordsx, coordsy, coordsz))
		if dist < 50.0 and not isRendered then
			local ped = nearPed("a_m_m_soucent_03", vector3(coordsx, coordsy, coordsz), "male", nil, nil, "WORLD_HUMAN_AA_SMOKE", 3.5)
			pedSpawned = ped
			isRendered = true
		end
		if dist >= 50 and isRendered then
			for i = 255, 0, -51 do
				Wait(50)
				SetEntityAlpha(pedSpawned, i, false)
			end
			DeletePed(pedSpawned)
			exports['qb-target']:RemoveZone("ped_spawner-"..pedSpawned)
			pedSpawned = nil
			isRendered = false
		end
	end
end)

RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)
    local PlayerPos = GetEntityCoords(PlayerPedId())
    local random = math.random(1, 10)   -- Random check (originally part of the script)
    local chance = math.random(1, 100)  -- Chance for triggering an alert

    if isAdvanced then
        if closesthouseid then
            if ox_inventory:Search('count', 'advancedlockpick') then
                local dist = #(PlayerPos - vector3(closestHouse.x, closestHouse.y, closestHouse.z))
                if dist <= 1.5 then
                    QBCore.Functions.TriggerCallback('qb-houserobbery:server:getCops', function(cops)
                        if cops >= Config.Cops then
                            print('used advanced lockpick')
                            FreezeEntityPosition(PlayerPedId(), true)
                            LoadAnim('veh@break_in@0h@p_m_one@')
                            TaskPlayAnim(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0, 1.0, 1.0, 1, 0.0, 0, 0, 0)
                            exports['ps-ui']:Circle(function(success)
                                if success then
                                    robbing = true
                                    TriggerServerEvent("qb-houserobbery:server:enterHouse", closesthouseid)
                                    enteredHouseId = closesthouseid
                                    robbedHouseCoords = closestHouse
                                    ClearPedTasksImmediately(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    RemoveBlip(DestBlip)
                                    if chance <= 5 then  -- 5% chance for advanced success	
                                        exports['ps-dispatch']:SuspiciousActivity()
                                    end
                                    started = false
                                else
                                    ClearPedTasksImmediately(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    if chance <= 10 then  -- 10% chance for advanced fail	
                                        exports['ps-dispatch']:SuspiciousActivity()
                                        lib.notify({
                                            title = 'House Robbery',
                                            description = 'You failed and the alarm was triggered!',
                                            type = 'error',
                                            position = 'center-right'  -- Set to center-right
                                        })
                                        TriggerServerEvent("qb-houserobbery:server:breakLockpick", "advancedlockpick")
                                    elseif random > 10 then
                                        lib.notify({
                                            title = 'House Robbery',
                                            description = 'You failed! Try again.',
                                            type = 'error',
                                            position = 'center-right'  -- Set to center-right
                                        })
                                    end
                                end
                            end, 5, 15) -- Number of Circles, Milliseconds per circle
                        else
                            TriggerEvent('QBCore:Notify', "There are not enough cops on duty to do this!", "error", 3500)
                        end
                    end)
                end
            else
                lib.notify({
                    title = 'House Robbery',
                    description = 'You don\'t have an advanced lockpick.',
                    type = 'error',
                    position = 'center-right'
                })
            end
        end
    else
        if closesthouseid then
            if ox_inventory:Search('count', 'lockpick') then
                local dist = #(PlayerPos - vector3(closestHouse.x, closestHouse.y, closestHouse.z))
                if dist <= 1.5 then
                    FreezeEntityPosition(PlayerPedId(), true)
                    LoadAnim('veh@break_in@0h@p_m_one@')
                    TaskPlayAnim(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0, 1.0, 1.0, 1, 0.0, 0, 0, 0)
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            robbing = true
                            TriggerServerEvent("qb-houserobbery:server:enterHouse", closesthouseid)
                            enteredHouseId = closesthouseid
                            robbedHouseCoords = closestHouse
                            ClearPedTasksImmediately(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            RemoveBlip(DestBlip)
                            if chance <= 10 then  -- 10% chance for regular success	
                                exports['ps-dispatch']:SuspiciousActivity()
                            end
                            started = false
                        else
                            ClearPedTasksImmediately(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            if chance <= 20 then  -- 20% chance for regular fail	
                                exports['ps-dispatch']:SuspiciousActivity()
                                lib.notify({
                                    title = 'House Robbery',
                                    description = 'You failed and the alarm was triggered!',
                                    type = 'error',
                                    position = 'center-right'  -- Set to center-right
                                })
                                TriggerServerEvent("qb-houserobbery:server:breakLockpick", "lockpick")
                            elseif chance > 20 then
                                lib.notify({
                                    title = 'House Robbery',
                                    description = 'You failed! Try again.',
                                    type = 'error',
                                    position = 'center-right'  -- Set to center-right
                                })
                            end
                        end
                    end, 7, 15) -- Number of Circles, Milliseconds per circle
                end
            else
                lib.notify({
                    title = 'House Robbery',
                    description = 'You don\'t have a lockpick.',
                    type = 'error',
                    position = 'center-right'
                })
            end
        end
    end
end)

CreateThread(function()
	local houseZones = {}
    for _, v in pairs(Config.Houses) do
        houseZones[#houseZones+1] = BoxZone:Create(
            vector3(v.x, v.y, v.z), 1.5, 1.5, {
            name="box_zone",
            debugPoly = false,
            minZ = v.z - 1,
            maxZ = v.z + 1,
        })
    end

	local houseCombo = ComboZone:Create(houseZones, {name = "houseCombo", debugPoly = false})
    houseCombo:onPlayerInOut(function(isPointInside, point)
        if isPointInside then
			for k, v in pairs(Config.Houses) do
				if #(point - vector3(v.x, v.y, v.z)) < 4 then
					if Config.Houses[k].Opened then
						inHouseZone = true
						EnterThread(k, v)
						--exports['qb-ui']:DisplayText("[E] - To enter")
						lib.showTextUI('[E] - To Enter')
					end
				end
			end
		else
			-- exports['qb-ui']:HideText()
			lib.hideTextUI()
			inHouseZone = false
        end
    end)
end)

function EnterThread(k, v)
	CreateThread(function()
		while inHouseZone do
			if Config.Houses[k].Opened then
				if IsControlJustPressed(0, 38) then
					enteredHouseId = k
					closestHouse = v
					robbedHouseCoords = v
					enter()
				end
			end
			Wait(5)
		end
	end)
end


function enterHouseThread()
	CreateThread(function()
		local robbable = {}
		for i = 1, #Config.Houses[enteredHouseId].Items do
			local entityCoords = GetEntityCoords(Config.Houses[enteredHouseId].Items[i].objects)
			robbable[#robbable+1] = BoxZone:Create(
				entityCoords, 1.8, 1.6, {
				name="box_zone",
				debugPoly = false,
				minZ = entityCoords.z - 2,
				maxZ = entityCoords.z + 2,
			})

			local robbaleCombo = ComboZone:Create(robbable, {name = "houseCombo", debugPoly = false})
			robbaleCombo:onPlayerInOut(function(isPointInside, point)
				if isPointInside then
					if #(point - entityCoords) < 2 then
						robZone = true
						if not Config.Houses[enteredHouseId].Items[i].robbed then
							if Config.Houses[enteredHouseId].Items[i].delete then
								-- Show "Rob" text if the item should be deleted after robbery
								lib.showTextUI('[E] - Rob')
							else
								-- Show "Search" text if the item should not be deleted after robbery
								lib.showTextUI('[E] - Search')
							end
							-- Start the robThread for the item
							robThread(i)
						end
					end
				else
					-- Hide text UI and disable robZone when the player leaves the zone
					lib.hideTextUI()
					robZone = false
				end
			end)
		end

		-- Handle the house exit zone creation
		local boxZone = BoxZone:Create(vector3(Config.Houses[enteredHouseId].InteriorCoords.x, Config.Houses[enteredHouseId].InteriorCoords.y, Config.Houses[enteredHouseId].InteriorCoords.z), 1.2, 1.2, {
			name="House Exit",
			debugPoly = false,
			heading = 70,
			minZ = Config.Houses[enteredHouseId].InteriorCoords.z - 2,
			maxZ = Config.Houses[enteredHouseId].InteriorCoords.z + 2,
		})

		boxZone:onPlayerInOut(function(isPointInside)
			if isPointInside then
				lib.showTextUI('[E] - To Leave')
				exitZone = true
				ExitThread()
			else
				exitZone = false
				lib.hideTextUI()
			end
		end)
	end)
end


function robThread(i)
	CreateThread(function()
		while robZone do
			-- Check if the "E" key (Control 38) is pressed
			if IsControlJustPressed(0, 38) then
				-- Check if the player is holding any prop from 'sd-props'
				if not exports['sd-props']:GetPropStatus() then
					-- Ensure the item has not already been robbed
					if not Config.Houses[enteredHouseId].Items[i].robbed then
						-- Trigger server event to update the house interior and mark the item as robbed
						TriggerServerEvent('qb-houserobbery:server:updateInterior', enteredHouseId, i, Config.Houses[enteredHouseId].Items[i].delete)
						-- Trigger the event to play the robbery animation
						TriggerEvent('qb-houserobbery:anim', Config.Houses[enteredHouseId].Items[i].anim, Config.Houses[enteredHouseId].Items[i].delete, i)
					else
						-- Notification in case the item was already robbed
						lib.notify({
							title = 'House Robbery',
							description = 'This item has already been robbed.',
							type = 'inform',
							position = 'center-right'
						})
					end
				else
					-- Notification when the player can't rob due to an active prop
					lib.notify({
						title = 'House Robbery',
						description = 'You can\'t do this right now, maybe darker times..',
						type = 'error',
						position = 'center-right'
					})
				end
			end
			Wait(5)  -- Avoid unnecessary CPU usage
		end
	end)
end




function ExitThread()
	CreateThread(function()
		while exitZone do
			if IsControlJustPressed(0, 38) then
				leave()
			end
			Wait(5)
		end
	end)
end

--[[ function checkPlayerDistance()
	CreateThread(function()
		while true do
			local sleep = 1500
			if not insideHouse then
				sleep = 10
				if #(GetEntityCoords(PlayerPedId()) - vector3(Config.Houses[enteredHouseId].InteriorCoords.x, Config.Houses[enteredHouseId].InteriorCoords.y, Config.Houses[enteredHouseId].InteriorCoords.z)) > 300 then
					cleanUP()
					break
				end
			else
				sleep = 1500
			end
			Wait(sleep)
		end
	end)
end ]]

function noiseLevelFunction(houseId)
	local ped = PlayerPedId()
	while insideHouse do
		progessBar(Config.Houses[houseId].NoiseLevel)
		if IsPedShooting(ped) then
			Config.Houses[houseId].NoiseLevel = Config.Houses[houseId].NoiseLevel + 20
			TriggerServerEvent("qb-houserobbery:server:noiseLevel", houseId, Config.Houses[houseId].NoiseLevel)
		end
		if GetEntitySpeed(ped) > 1.7 then
			Config.Houses[houseId].NoiseLevel = Config.Houses[houseId].NoiseLevel + 10
			TriggerServerEvent("qb-houserobbery:server:noiseLevel", houseId, Config.Houses[houseId].NoiseLevel)
			if GetEntitySpeed(ped) > 2.5 then
				Config.Houses[houseId].NoiseLevel = Config.Houses[houseId].NoiseLevel + 15
				TriggerServerEvent("qb-houserobbery:server:noiseLevel", houseId, Config.Houses[houseId].NoiseLevel)
			end
			if GetEntitySpeed(ped) > 3.0 then
				Config.Houses[houseId].NoiseLevel = Config.Houses[houseId].NoiseLevel + 20
				TriggerServerEvent("qb-houserobbery:server:noiseLevel", houseId, Config.Houses[houseId].NoiseLevel)
			end
			Wait(300)
		else
			Config.Houses[houseId].NoiseLevel = Config.Houses[houseId].NoiseLevel - 2
			if Config.Houses[houseId].NoiseLevel < 0 then
				Config.Houses[houseId].NoiseLevel = 0
			end
			TriggerServerEvent("qb-houserobbery:server:noiseLevel", houseId, Config.Houses[houseId].NoiseLevel)
			Wait(1000)
		end
		progessBar(Config.Houses[houseId].NoiseLevel)
		if Config.Houses[houseId].NoiseLevel > 100 then
			QBCore.Functions.Notify(Config.Lang['alarm'], "error")
			exports['ps-dispatch']:HouseRobbery()
			SendNUIMessage({closeProgress = true})
			break
		end
		Wait(5)
	end
end

function enter()
	if not Config.Houses[enteredHouseId].InteriorSpawned then
		if closestHouse.houseModel == 'HighEnd' then
			Config.Houses[enteredHouseId].InteriorCoords, Config.Houses[enteredHouseId].Items, Config.Houses[enteredHouseId].InteriorObjects = HighEnd(closestHouse)
		elseif closestHouse.houseModel == 'MidApt' then
			Config.Houses[enteredHouseId].InteriorCoords, Config.Houses[enteredHouseId].Items, Config.Houses[enteredHouseId].InteriorObjects = MidApt(closestHouse)
		end
		Config.Houses[enteredHouseId].InteriorSpawned = true
		TriggerServerEvent("qb-houserobbery:server:interiorItems", enteredHouseId, Config.Houses[enteredHouseId].InteriorCoords, Config.Houses[enteredHouseId].Items, Config.Houses[enteredHouseId].InteriorObjects)
		ClearAreaOfPeds(Config.Houses[enteredHouseId].InteriorCoords.x, Config.Houses[enteredHouseId].InteriorCoords.y, Config.Houses[enteredHouseId].InteriorCoords.z, 100.0, 1)
		QBCore.Functions.TriggerCallback('qb-houserobbery:server:interiorRobbed', function(robbed)
			if not Config.Houses[enteredHouseId].Items[robbed].robbed then
				Config.Houses[enteredHouseId].Items[robbed].robbed = true
				if Config.Houses[enteredHouseId].Items[robbed].robbed and Config.Houses[enteredHouseId].Items[robbed].delete then
					DeleteEntity(Config.Houses[enteredHouseId].Items[robbed].objects)
				end
			end
		end, enteredHouseId)
	else
		DoScreenFadeOut(1000)
		Wait(1500)
		SetEntityCoords(PlayerPedId(), Config.Houses[enteredHouseId].InteriorCoords.x, Config.Houses[enteredHouseId].InteriorCoords.y, Config.Houses[enteredHouseId].InteriorCoords.z)
		Wait(2500)
		DoScreenFadeIn(1500)
	end
	TriggerEvent('qb-weathersync:PauseSync', true)
	if not insideHouse then
		robbing = true
		insideHouse = true
		enterHouseThread()
		if not Config.Houses[enteredHouseId].alarmTriggered then
			noiseLevelFunction(enteredHouseId)
		end
	end
end

function leave()
	insideHouse = false
	robbing = false
	enteredHouseId = nil
	DoScreenFadeOut(1000)
	Wait(1500)
	SetEntityCoords(PlayerPedId(), robbedHouseCoords.x, robbedHouseCoords.y, robbedHouseCoords.z)
	TriggerEvent('qb-weathersync:PauseSync', false)
	Wait(800)
	DoScreenFadeIn(2600)
	robbedHouseCoords = nil
	SendNUIMessage({closeProgress = true})
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

function LoadAnim(animDict)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Wait(10)
	end
end

function RequestWalking(set)
	RequestAnimSet(set)
	while not HasAnimSetLoaded(set) do
		Wait(1)
	end
end

function cleanUP(houseId)
	if #Config.Houses[houseId].Items > 0 then
		for i = 1, #Config.Houses[houseId].Items do
			DeleteEntity(Config.Houses[houseId].Items[i].objects)
		end
	end
	if #Config.Houses[houseId].InteriorObjects > 0 then
		for i = 1, #Config.Houses[houseId].InteriorObjects do
			DeleteEntity(Config.Houses[houseId].InteriorObjects[i])
		end
	end
	Config.Houses[houseId].InteriorCoords = nil
	Config.Houses[houseId].NoiseLevel = 0
	Config.Houses[houseId].alarmTriggered = false
	Config.Houses[houseId].InteriorSpawned = false
end

function progessBar(percentage)
	SendNUIMessage({runProgress = true, Length = percentage})
end

RegisterNetEvent('qb-houserobbery:client:noiseLevel', function(houseId, level)
	if not insideHouse and not robbing then return end
	Config.Houses[houseId].NoiseLevel = level
	if Config.Houses[houseId].NoiseLevel > 100 then
		Config.Houses[houseId].alarmTriggered = true
	end
end)

RegisterNetEvent('qb-houserobbery:client:enterHouse', function()
	if not robbing then return end
    enter()
--	checkPlayerDistance()
end)

RegisterNetEvent('qb-houserobbery:anim', function(anim, delete, i)
	if insideHouse == false and not robbing then return end
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
	if anim == 'tv' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'tv')
			local RepChance = math.random(1,100)
			local searchgain = math.random(4, 7)
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	elseif anim == 'safe' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(20000, 30000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'safe')
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	elseif anim == 'telescope' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'telescope')
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	elseif anim == 'art' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'art')
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	elseif anim == 'normal' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'random')
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	elseif anim == 'mesa' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'random')
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	elseif anim == 'laptop' then
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', 'laptop')
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	else
		TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        QBCore.Functions.Progressbar("hospital_checkin", "Securing Item", math.random(5000, 10000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
			TriggerServerEvent('qb-houserobbery:item', anim)
        end, function() -- Cancel
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
        end)
	end
end)

RegisterNetEvent('qb-houserobbery:client:interiorItems', function(house, coords, items, objects)
	if Config.Houses[house].InteriorCoords == nil and not next(Config.Houses[house].Items) and not next(Config.Houses[house].InteriorObjects) then
		Config.Houses[house].InteriorCoords = coords
		Config.Houses[house].Items = items
		Config.Houses[house].InteriorObjects = objects
	end
end)

RegisterNetEvent('qb-houserobbery:client:cleanHouseStatus', function(house, opened, robbed)
	Config.Houses[house].Opened = false
	Config.Houses[house].Robbed = false
	cleanUP(house)
end)

RegisterNetEvent('qb-houserobbery:client:updateRobStatus', function(house)
	Config.Houses[house].Robbed = true
end)

RegisterNetEvent('qb-houserobbery:client:updateOpenStatus', function(house, opened)
	Config.Houses[house].Opened = opened
end)

RegisterNetEvent('qb-houserobbery:client:updateInterior', function(house, i, delete)
	if not Config.Houses[house].Items[i].robbed then
		Config.Houses[house].Items[i].robbed = true
		if Config.Houses[house].Items[i].robbed and Config.Houses[house].Items[i].delete then
			DeleteEntity(Config.Houses[house].Items[i].objects)
		end
	end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-houserobbery:server:GetHouseConfig', function(HouseConfig)
        Config.Houses = HouseConfig
    end)
end)

RegisterNetEvent('qb-houserobbery:startrobbing', function()
    if not started then
        started = true
        closesthouseid, closestHouse = robbableHouses()

        TriggerServerEvent('qb-houserobbery:server:robHouseStatus', closesthouseid)

        -- Send initial email about waiting for the boss (qs-smartphone)
        TriggerServerEvent('qs-smartphone:server:sendNewMail', {
            sender = 'Third Eye',
            subject = 'House Robbery',
            message = 'Wait until the boss assigns you a house.',
            button = {} -- No button for this email
        })

        lib.notify({
            title = 'House Robbery',
            description = 'An email has been sent to your phone. Check it for details.',
            type = 'success',
            position = 'center-right', -- Set position to center-right
            icon = 'fa-envelope',      -- Font Awesome envelope icon
            iconColor = '#28a745',     -- Set icon color (green)
            duration = 5000,           -- 5 seconds
            showDuration = true,       -- Display the duration
            alignIcon = 'top',         -- Align icon to the top
            sound = {                  -- Play a custom notification sound
                bank = 'Phone_SoundSet_Default',
                set = 'Menu_Accept',
                name = 'Menu_Accept'
            }
        })

        Wait(math.random(1,2) * 60 * 1000)

        if closesthouseid and closestHouse then
            PlaySoundFrontend(-1, "Menu_Accept", "Phone_SoundSet_Default", true)

            -- Send email about the assigned house (qs-smartphone)
            TriggerServerEvent('qs-smartphone:server:sendNewMail', {
                sender = 'Third Eye',
                subject = 'House Robbery',
                message = 'The boss found a perfect house for you! Check your GPS for the location.',
                button = {
                    label = "Set GPS",
                    event = "qb-phone:client:setGPS",
                    args = { closestHouse }
                }
            })

            lib.notify({
                title = 'House Robbery',
                description = 'An email has been sent to your phone with house details.',
                type = 'success',
                position = 'center-right', -- Set position to center-right
                icon = 'fa-house',         -- Font Awesome house icon
                iconColor = '#00d1b2',     -- Set icon color (teal)
                duration = 5000,           -- 5 seconds
                alignIcon = 'center',      -- Center the icon
            })

            CreateThread(function()
                Wait(2500)

                -- Create and configure blip for the house location
                DestBlip = AddBlipForCoord(closestHouse.x, closestHouse.y, closestHouse.z)
                SetBlipSprite(DestBlip, 414)
                SetBlipColour(DestBlip, 0)
                SetBlipRoute(DestBlip, true)
                SetBlipRouteColour(DestBlip, 15)
                SetBlipAsShortRange(DestBlip, false)
                SetBlipScale(DestBlip, 0.75)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString("Assigned House")
                EndTextCommandSetBlipName(DestBlip)
            end)

        else
            started = false
            
            -- Send email that no houses are available (qs-smartphone)
            TriggerServerEvent('qs-smartphone:server:sendNewMail', {
                sender = 'Boss',
                subject = 'House Robbery',
                message = 'Currently there are no houses available to rob.',
                button = {} -- No button for this email
            })

            lib.notify({
                title = 'House Robbery',
                description = 'An email has been sent to your phone.',
                type = 'error',
                position = 'center-right', -- Set position to center-right
                icon = 'fa-exclamation-circle', -- Font Awesome error icon
                iconColor = '#dc3545',          -- Set icon color (red)
                duration = 5000,                -- 5 seconds
                alignIcon = 'center',           -- Center the icon
            })
        end

    else
        lib.notify({
            title = 'House Robbery',
            description = 'Chill, the boss is looking for a house..',
            type = 'error',
            position = 'center-right', -- Set position to center-right
            icon = 'fa-exclamation-triangle', -- Font Awesome warning icon
            iconColor = '#ffcc00',             -- Set icon color (yellow)
            duration = 5000,                   -- 5 seconds
            alignIcon = 'center',              -- Center the icon
        })
    end
end)

RegisterNetEvent('qb-houserobbery:attemptSafeBox', function(id)
	local ped = PlayerPedId()
	attemptTreasureChest()
	-- if QBCore.Functions.HasItem("stolensafe") then
	if ox_inventory:Search('count', 'stolensafe') then
		QBCore.Functions.Progressbar("accepted_key", "Cracking Safe..", (math.random(30000, 45000)), false, true, {
			disableMovement = false,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "mini@repair",
			anim = "fixing_a_player",
			flags = 16,
		}, {}, {}, function() -- Done
			ClearPedTasks(ped)
			openedSafe(id)
		end, function() -- Cancel
			ClearPedTasks(ped)
			-- QBCore.Functions.Notify("Canceled!", "error")
			lib.notify({
				title = 'House Robbery',
				description = 'Canceled!',
				type = 'error'
			})
		end)
	end
end)

function attemptTreasureChest()
	local ped = PlayerPedId()
	local animDict = "veh@break_in@0h@p_m_one@"
	local animName = "low_force_entry_ds"
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Wait(100)
	end
	TaskPlayAnim(ped, animDict, animName, 1.0, 1.0, 1.0, 1, 0.0, 0, 0, 0)
	RemoveAnimDict(animDict)
	-- QBCore.Functions.Notify('Attempting to open Safe Box', 'primary', 1500)
	lib.notify({
		title = 'House Robbery',
		description = 'Atttempting to open the safe box..',
		type = 'success'
	})
	Wait(1500)
	ClearPedTasks(PlayerPedId())
end


function openedSafe()
	exports.ox_inventory:openInventory('stash', 'TreasureChest_' .. id)
end

function robbableHouses()
	local key, value = nil, nil
	math.randomseed(GetGameTimer())
	for k,v in pairs(Config.Houses) do
		if not v.Robbed then
			local selected = math.random(1, k)
			local c = Config.Houses[selected]
			key, value = selected, c
		end
	end
	return key, value
end


function nearPed(model, coords, gender, animDict, animName, scenario, distance)
	local genderNum = 0
--AddEventHandler('nearPed', function(model, coords, gender, animDict, animName)
	-- Request the models of the peds from the server, so they can be ready to spawn.
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Citizen.Wait(1)
	end

	-- Convert plain language genders into what fivem uses for ped types.
	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then
		genderNum = 5
	else
		print("No gender provided! Check your configuration!")
	end

	--Check if someones coordinate grabber thingy needs to subract 1 from Z or not.
	ped = CreatePed(genderNum, GetHashKey(model), coords.x, coords.y, coords.z - 1.0, coords.w, false, true)
	SetEntityAlpha(ped, 0, false)
	FreezeEntityPosition(ped, true) --Don't let the ped move.
	SetEntityInvincible(ped, true) --Don't let the ped die.
	SetBlockingOfNonTemporaryEvents(ped, true) --Don't let the ped react to his surroundings.

	--Add an animation to the ped, if one exists.
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(1)
		end
		TaskPlayAnim(ped, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end

	if scenario then
		TaskStartScenarioInPlace(ped, scenario, 0, true) -- begins peds animation
	end

	for i = 0, 255, 51 do
		Citizen.Wait(50)
		SetEntityAlpha(ped, i, false)
	end

	if distance then
		exports['qb-target']:AddEntityZone("house_spawner-"..ped, ped, {
			name = "house_spawner-"..ped,
			heading=GetEntityHeading(ped),
			debugPoly=false,
		}, {
			options = {
				{
					type = "client",
					event = "qb-houserobbery:startrobbing",
					icon = "fas fa-people-carry-box",
					label = "Get a job",
				},
			},
			distance = distance
		})
	end

	return ped
end