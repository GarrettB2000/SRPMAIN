---------------------------------
--- Custom Script (Exclusive) ---
---     created by Badger     ---
---------------------------------

function OpenMenu()
	--[[
		- Cuffing
		- Seating someone in a car/taking them out
		- Jailing (through Badger_Jailing)
		- Toggle Weapons (Shotgun & Carbine)
		- Turn on Dispatch
		- Priority Cooldown

		Menu would only appear if they've done /duty (PoliceEMSActivity)
		The menu would have a way to toggle seeing 911 calls (Badger-911)
		The menu would support a way for officers to turn on Priority Cooldown (Badger-Priorities)
			WarMenu.CreateMenu('demo', 'Demo Menu', 'Thank you for using WarMenu')

			WarMenu.CreateSubMenu('demo_menu', 'demo', 'Menu')
			WarMenu.CreateSubMenu('demo_controls', 'demo', 'Controls')
			WarMenu.CreateSubMenu('demo_style', 'demo', 'Style')
			WarMenu.CreateSubMenu('demo_exit', 'demo', 'Are you sure?')

			RegisterNetEvent('warmenu:showDemo')
			AddEventHandler('warmenu:showDemo', function()
				if WarMenu.IsAnyMenuOpened() then
					return
				end

				WarMenu.OpenMenu('demo')

				while true do
					if WarMenu.Begin('demo') then
						WarMenu.MenuButton('Menu', 'demo_menu')
						WarMenu.MenuButton('Controls', 'demo_controls')
						WarMenu.MenuButton('Style', 'demo_style')
                        WarMenu.MenuButton('Exit', 'demo_exit')
                    end
                end
            end 
Example:
    Citizen.CreateThread(function()
        BMenu.CreateMenu('BMenu', '~r~Police Menu', 'Select an option below...');
        BMenu.CreateSubMenu('BMenu_Cuffing', 'BMenu', 'Cuffing');
        BMenu.CreateSubMenu('BMenu_Seating', 'BMenu', 'Seating');
        BMenu.CreateSubMenu('BMenu_Jailing', 'BMenu', 'Jailing');
        BMenu.CreateSubMenu('BMenu_Weapons', 'BMenu', 'Weapons');
        BMenu.CreateSubMenu('BMenu_Dispatch', 'BMenu', 'Dispatch');
        BMenu.CreateSubMenu('BMenu_Priorities', 'BMenu', 'Priority Management');
        while true do 
            Citizen.Wait(0);
            if BMenu.Begin('BMenu') then 
                BMenu.MenuButton('Cuffing', 'BMenu_Cuffing');
                BMenu.MenuButton('Seating', 'BMenu_Seating');
                BMenu.MenuButton('Jailing', 'BMenu_Jailing');
                BMenu.MenuButton('Weapons', 'BMenu_Weapons');
                BMenu.MenuButton('Dispatch', 'BMenu_Dispatch');
                BMenu.MenuButton('Priority Management', 'BMenu_Priorities');

                BMenu.Exit();
            elseif BMenu.Begin('BMenu_Cuffing') then 
                -- Cuffing menu
                BMenu.Button('Cuff', 'Cuff the nearest player to you')
                if (BMenu.IsItemSelected()) then 
                    -- Cuff nearest player
                end
                BMenu.Button('Uncuff', 'Uncuff the nearest player to you')
                if (BMenu.IsItemSelected()) then 
                    -- Uncuff nearest player
                end
            end
        end
    end)
	]]--

    if BMenu.IsAnyMenuOpened() then 
        BMenu.CloseMenu();
		return;
	end   

	BMenu.OpenMenu('BMenu');
end

Citizen.CreateThread(function()
    local engineon = false
    local sirenon = false
    local snd_pwrcall = {}
    local state_pwrcall = {}
    while true do 
        Citizen.Wait(0);
        local ped = GetPlayerPed(-1)
        local coordA = GetEntityCoords(ped, 1)
        local coordB = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 3.0, 0.0)
        local targetVehicle = GetVehiclePedIsIn(ped, 0);
        if targetVehicle == nil or targetVehicle == 0 then 
            -- Check if they are in the vehicle and set it to this
            targetVehicle = getVehicleInDirection(coordA, coordB)
        end
        if targetVehicle ~= nil and targetVehicle ~= 0 then 
            local veh = targetVehicle;
            BMenu.CreateMenu('BMenu', '~w~Vehicle Menu', '~r~Select an option below...');
            BMenu.SetTitleBackgroundSprite('BMenu', 'RedSaint', 'redsaint');
            BMenu.SetTitleBackgroundSprite('BMenu_Doors', 'RedSaint', 'redsaint');
            BMenu.SetTitleBackgroundSprite('BMenu_Exterior', 'RedSaint', 'redsaint');
            BMenu.SetTitleBackgroundSprite('BMenu_Extras', 'RedSaint', 'redsaint');
            BMenu.SetTitleBackgroundSprite('BMenu_VehControls', 'RedSaint', 'redsaint');
            BMenu.CreateSubMenu('BMenu_Doors', 'BMenu', '~w~Doors');
            BMenu.CreateSubMenu('BMenu_Exterior', 'BMenu', '~w~Exterior');
            BMenu.CreateSubMenu('BMenu_Extras', 'BMenu', '~w~Extras');
            BMenu.CreateSubMenu('BMenu_VehControls', 'BMenu', '~w~Vehicle Controls');
            -- DoesExtraExist()
            -- SetVehicleExtra()
            --[[
                    Note: only some vehicle have extras  
                        extra ids are from 1 - 9 depending on the vehicle
            ]]--
            --[[ 
                FixVehicleWindow()
                RemoveVehicleWindow()
                    0 = Front Right Window  
                    1 = Front Left Window  
                    2 = Back Right Window  
                    3 = Back Left Window  
                SetVehicleDoorOpen()
                    0 = Front Left Door  
                    1 = Front Right Door  
                    2 = Back Left Door  
                    3 = Back Right Door  
                    4 = Hood  
                    5 = Trunk  
                    6 = Back  
                    7 = Back2  
            ]]--
            if BMenu.Begin('BMenu') then 
                -- Show menu buttons
                BMenu.MenuButton('Doors', 'BMenu_Doors');
                BMenu.MenuButton('Exterior', 'BMenu_Exterior');
                BMenu.MenuButton('Extras', 'BMenu_Extras');
                BMenu.MenuButton('Vehicle Controls', 'BMenu_VehControls');

                BMenu.End();
            elseif BMenu.Begin('BMenu_Doors') then
                BMenu.Button('Front Left Door', 'Toggle front left door');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 0)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 0, false);
                    else 
                        SetVehicleDoorOpen(veh, 0, false, false);
                    end
                end
                BMenu.Button('Front Right Door', 'Toggle front right door');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 1)
                    if isopen ~= 0 then  
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 1, false);
                    else 
                        SetVehicleDoorOpen(veh, 1, false, false);
                    end
                end
                BMenu.Button('Back Left Door', 'Toggle back left door');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 2)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 2, false);
                    else 
                        SetVehicleDoorOpen(veh, 2, false, false);
                    end
                end
                BMenu.Button('Back Right Door', 'Toggle back right door');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 3)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 3, false);
                    else 
                        SetVehicleDoorOpen(veh, 3, false, false);
                    end
                end
                BMenu.Button('Back', 'Toggle back');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 6)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 6, false);
                    else 
                        SetVehicleDoorOpen(veh, 6, false, false);
                    end
                end
                BMenu.Button('Back2', 'Toggle back2');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 7)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 7, false);
                    else 
                        SetVehicleDoorOpen(veh, 7, false, false);
                    end
                end

                BMenu.End();
            elseif BMenu.Begin('BMenu_Exterior') then
                BMenu.Button('Hood', 'Toggle Hood');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 4)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 4, false);
                    else 
                        SetVehicleDoorOpen(veh, 4, false, false);
                    end
                end
                BMenu.Button('Trunk', 'Toggle Trunk');
                if BMenu.IsItemSelected() then 
                    local isopen = GetVehicleDoorAngleRatio(veh, 5)
                    if isopen ~= 0 then 
                        -- It's open, close it 
                        SetVehicleDoorShut(veh, 5, false);
                    else 
                        SetVehicleDoorOpen(veh, 5, false, false);
                    end
                end

                BMenu.End();
            elseif BMenu.Begin('BMenu_Extras') then    
            --[[
                    Note: only some vehicle have extras  
                        extra ids are from 1 - 9 depending on the vehicle
            ]]--
                for i = 1, 12 do 
                    if DoesExtraExist(veh, i) then 
                        if IsVehicleExtraTurnedOn(veh, i) then 
                            BMenu.Button("Toggle Extra " .. tostring(i) .. " ~g~ON", 'Turn this extra on');
                        else 
                            BMenu.Button("Toggle Extra " .. tostring(i) .. " ~r~OFF", 'Turn this extra off');
                        end
                        if BMenu.IsItemSelected() then
                            if IsVehicleExtraTurnedOn(veh, i) then 
                                -- Turn it off 
                                SetVehicleExtra(veh, i, true);
                            else 
                                SetVehicleExtra(veh, i, false);
                            end
                        end
                    end
                end

                BMenu.End();
            elseif BMenu.Begin('BMenu_VehControls') then
                --[[
                    Start of the vehicle control menu 
                    Done by: Jordan.#2139
                ]]--  
                BMenu.Button("Engine", "Toggles Engine")
                if BMenu.IsItemSelected() then
                    EngineControl()
                 end
                BMenu.Button("Low Beams On", "Turns On Low Beams")
                if BMenu.IsItemSelected() then
                    SetVehicleLights(veh, 2) -- Force turn light on
                    SetVehicleFullbeam(veh, true)
                    SetVehicleFullbeam(veh, false)
                    SetVehicleLightMultiplier(veh, 0.5) -- Set light brightness to normal
                end
                BMenu.Button("High Beams On", "Turns On High Beams")
                if BMenu.IsItemSelected() then
                    SetVehicleLights(veh, 2) -- Force turn light on
                    SetVehicleFullbeam(veh, true) 
                    SetVehicleLightMultiplier(veh, 1.0)
                end
                BMenu.Button("Lights Off", "Turns Off Lights")
                if BMenu.IsItemSelected() then
                        SetVehicleLights(veh, 1) -- Set light mode to normal
                        SetVehicleLightMultiplier(veh, 0.0) -- Set light brightness to 0
                end
                BMenu.Button("Blinker ~y~R", "Toggle Right Blinkers")
                if BMenu.IsItemSelected() then
                    if GetVehicleIndicatorLights(veh) == 2 then -- Is the right blinker on?
                    SetVehicleIndicatorLights(veh, 0, false) -- If yes turn it off
                    else -- Otherwise run this:
                        SetVehicleIndicatorLights(veh, 0, true) -- Turn on right blinker
                    end
                end
                BMenu.Button("Blinker ~y~L", "Toggle Left Blinkers")
                if BMenu.IsItemSelected() then
                    if GetVehicleIndicatorLights(veh) == 1 then -- Is the left blinker on?
                    SetVehicleIndicatorLights(veh, 1, false) -- If yes turn it off
                    else -- Otherwise run this:
                        SetVehicleIndicatorLights(veh, 1, true) -- Turn on left blinker
                    end
                end
                BMenu.Button("Hazard", "Toggles Hazard Lights")
                if BMenu.IsItemSelected() then
                    if GetVehicleIndicatorLights(veh) == 3 then -- Are the hazard lights on?
                        SetVehicleIndicatorLights(veh, 1, false) -- If yes turn off the left
                        SetVehicleIndicatorLights(veh, 0, false) -- If yes turn off the right
                    else -- Otherwise run this:
                        SetVehicleIndicatorLights(veh, 1, true) -- Turn on left blinker
                        SetVehicleIndicatorLights(veh, 0, true) -- Turn on right blinker
                    end
                end
                if GetVehicleClass(veh) == 18 then -- Is this an emergency vehicle?
                BMenu.Button("Lights", "Toggles Emergency Lights")
                if BMenu.IsItemSelected() then
                        if IsVehicleSirenOn(veh) then -- Are the lights already on?
                        PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        SetVehicleSiren(veh, false) -- Turn off lights
                    else -- If not then turn them on!
                        SetVehicleSiren(veh, true) -- Turn on lights
                        TogMuteDfltSrnForVeh(veh, true) -- Mute the siren from wailing away
                    end
                end
                end
                if GetVehicleClass(veh) == 18 then -- Is this an emergency vehicle?
                    BMenu.Button("Siren", "Toggles Siren")
                        if BMenu.IsItemSelected() then
                            if sirenon == false then
                                PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                                snd_pwrcall[veh] = GetSoundId()
                                PlaySoundFromEntity(snd_pwrcall[veh], "VEHICLES_HORNS_SIREN_1", veh, 0, 0, 0)
                                print("the siren is turning on")
                                print(sirenon)
                                sirenon = true
                                print(sirenon)
                            else
                                print("siren should turn off")
                                StopSound(snd_pwrcall[veh])
                                ReleaseSoundId(snd_pwrcall[veh])
                                sirenon = false
                            end
                        end
                end
                    if GetVehicleClass(veh) == 18 then -- Is this an emergency vehicle?
                        BMenu.Button("Spotlight ~y~R", "Turn Spotlight Right")
                        if BMenu.IsItemHovered() then -- Are they on the button?
                            if IsDisabledControlPressed(0, 176) then -- Are they pressing the button down?
                                SetVehicleLights(veh, 2) -- Force turn light on
                                SetVehicleFullbeam(veh, true) 
                                SetVehicleLightMultiplier(veh, 1.0)
                                SetVehicleBulldozerArmPosition(veh, 0.0, false)
                            end
                        end
                    end
                    if GetVehicleClass(veh) == 18 then -- Is this an emergency vehicle?
                        BMenu.Button("Spotlight ~y~L", "Turn Spotlight Left")
                        if BMenu.IsItemHovered() then -- Are they on the button?
                            if IsDisabledControlPressed(0, 176) then -- Are they pressing the button down?
                                SetVehicleLights(veh, 2) -- Force turn light on
                                SetVehicleFullbeam(veh, true) 
                                SetVehicleLightMultiplier(veh, 1.0)
                                SetVehicleBulldozerArmPosition(veh, 1.0, false)
                            end
                        end
                    end
                    --[[
                        Beginning of Tow Script:
                    ]]--

                    local vehName = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(veh)))
                    local CoordOffset = GetOffsetFromEntityInWorldCoords(veh, 1.0, 6.0, -5.0)
                    local TowVehCoordsWrld = GetEntityCoords(veh)
                    local CoordsVehLock = getVehicleInDirection(TowVehCoordsWrld, CoordOffset)
                    local trailName = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(CoordsVehLock)))

                    --[[
                        Note: Below is what the numbers mean for attaching entities as seen here: ["SPAWNCODE"] = {10, 1.2, 2.2, 0.40, 0.0, 0.0, 0.0, false, false, true, false, 20, true}
	                        boneIndex -- [ integer ] (usually bone 10)
	                        xPos -- [ number ] 
	                        yPos -- [ number ]
	                        zPos -- [ number ]
	                        xRot -- [ number ]
	                        yRot -- [ number ]
	                        zRot -- [ number ]
	                        p9 -- [ boolean ] Keep this false
	                        useSoftPinning -- [ boolean ] - when 2 entities with collision collide and form into a ball they will break the attachment of the entity that they were attached to. Or when an entity is attached far away and then the resets. (keep this false)
	                        collision -- [ boolean ] - controls collision between the two entities (FALSE disables collision). (keep this false)
	                        isPed -- [ boolean ] Keep this false for obvious reasons
	                        vertexIndex -- [ integer ] - Position of vertex
	                        fixedRot -- [ boolean ] - if false it ignores entity vector (I'd recommend keeping to true)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    Demo code (Copy and edit the code below appropriatly to add more cars)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local Car1Tow = {
                        ["SPAWNCODE "] = {10, 1.2, 2.2, 0.40, 0.0, 0.0, 0.0, false, false, true, false, 20, true}
                    }

                    if Car1Tow[vehName] then -- Vehicle to be towed
                    if trailName == "TRAILERCODE" then -- Vehicle towing
                        if IsEntityAttached(veh) then -- Is the car attached already?
                            BMenu.Button("Detach", "Detach the vehicle") -- If car is attached show the button to detach
                            if BMenu.IsItemSelected() then
                                DetachEntity(veh, false, true) -- Detach the car
                            end
                        else
                            BMenu.Button("Attach", "Tow the vehicle") -- If car isn't attached then show button to attach
                            if BMenu.IsItemSelected() then
                                local towcaryes = Car1Tow[vehName] -- Define car
                                AttachEntityToEntity(veh, CoordsVehLock, towcaryes[1], towcaryes[2], towcaryes[3], towcaryes[4], towcaryes[5], towcaryes[6], towcaryes[7], towcaryes[8], towcaryes[9], towcaryes[10], towcaryes[11], towcaryes[12], towcaryes[13]) -- Attach the car
                            end
                        end
                    end
                end
                ------------------------------------------------------------------
                                         END OF DEMO CODE
                ------------------------------------------------------------------
                    ]]--
                    local Car1Tow = {
                        ["SPAWNCODE "] = {10, 1.2, 2.2, 0.40, 0.0, 0.0, 0.0, false, false, true, false, 20, true}
                    }

                    if Car1Tow[vehName] then -- Vehicle to be towed
                    if trailName == "TRAILERCODE" then -- Vehicle towing
                        if IsEntityAttached(veh) then -- Is the car attached already?
                            BMenu.Button("Detach", "Detach the vehicle") -- If car is attached show the button to detach
                            if BMenu.IsItemSelected() then
                                DetachEntity(veh, false, true) -- Detach the car
                            end
                        else
                            BMenu.Button("Attach", "Tow the vehicle") -- If car isn't attached then show button to attach
                            if BMenu.IsItemSelected() then
                                local towcaryes = Car1Tow[vehName] -- Define car
                                AttachEntityToEntity(veh, CoordsVehLock, towcaryes[1], towcaryes[2], towcaryes[3], towcaryes[4], towcaryes[5], towcaryes[6], towcaryes[7], towcaryes[8], towcaryes[9], towcaryes[10], towcaryes[11], towcaryes[12], towcaryes[13]) -- Attach the car
                            end
                        end
                    end
                end
                    BMenu.End();
                end
        end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0);
        if IsControlJustReleased(0, Config.OpenMenuKey) then 
            OpenMenu();
        end
    end
end)

function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end

function EngineControl() -- Function to toggle the engine off and on
    local ped = GetPlayerPed(-1) -- Define ped
    local coordA = GetEntityCoords(ped, 1) -- Get coords from ped
    local coordB = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 3.0, 0.0) -- Get coords from ped
    local targetVehicle = GetVehiclePedIsIn(ped, 0) -- Get the peds vehicle
    if targetVehicle == nil or targetVehicle == 0 then  
        -- Check if they are in the vehicle and set it to this
        targetVehicle = getVehicleInDirection(coordA, coordB)
    end
    if targetVehicle ~= nil and targetVehicle ~= 0 then
            -- Check if they are not in the vehicle and set it to this
        local veh = targetVehicle;
    if veh ~= nil and veh ~= 0 then
        SetVehicleEngineOn(veh, (not GetIsVehicleEngineRunning(veh)), false, true) -- Switch between engine on and off
        print("engine was turned on")
end
end
end

function TogMuteDfltSrnForVeh(veh, toggle) -- Function to mute the siren of a car
	if DoesEntityExist(veh) and not IsEntityDead(veh) then -- Is the car real and not exploded?
		DisableVehicleImpactExplosionActivation(veh, toggle) -- Mute the siren
	end
end