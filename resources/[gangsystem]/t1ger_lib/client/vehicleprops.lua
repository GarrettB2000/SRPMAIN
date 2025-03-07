-- Credits to Linden @ https://github.com/overextended/ox_lib/blob/master/resource/vehicleProperties/client.lua

local gameBuild = GetGameBuildNumber()

---@param vehicle number
---@return VehicleProperties?
GetVehicleProperties = function(vehicle)
    if DoesEntityExist(vehicle) then
        ---@type number | number[], number | number[]
        local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
        local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
        local paintType1 = GetVehicleModColor_1(vehicle)
        local paintType2 = GetVehicleModColor_2(vehicle)

        -- Custom Colors:
        if GetIsVehiclePrimaryColourCustom(vehicle) then
            colorPrimary = { GetVehicleCustomPrimaryColour(vehicle) }
        end

        if GetIsVehicleSecondaryColourCustom(vehicle) then
            colorSecondary = { GetVehicleCustomSecondaryColour(vehicle) }
        end

        -- Custom Xenon (RGB):
        local hasCustomXenon, customXenonR, customXenonG, customXenonB = GetVehicleXenonLightsCustomColor(vehicle)
        local customXenon = nil
        if hasCustomXenon then 
            customXenon = {customXenonR, customXenonG, customXenonB}
        end

        local extras = {}
        for i = 0, 14 do
            if DoesExtraExist(vehicle, i) then
                extras[tostring(i)] = IsVehicleExtraTurnedOn(vehicle, i) and 0 or 1
            end
        end

        local modLivery = GetVehicleMod(vehicle, 48)
        if GetVehicleMod(vehicle, 48) == -1 and GetVehicleLivery(vehicle) ~= 0 then
            modLivery = GetVehicleLivery(vehicle)
        end

        local damage = {
            windows = {},
            doors = {},
            tyres = {},
        }

        local windows = 0

        for i = 0, 7 do
            RollUpWindow(vehicle, i)

            if not IsVehicleWindowIntact(vehicle, i) then
                windows += 1
                damage.windows[windows] = i
            end
        end

        local doors = 0

        for i = 0, 5 do
            if IsVehicleDoorDamaged(vehicle, i) then
                doors += 1
                damage.doors[doors] = i
            end
        end

        for i = 0, 7 do
            if IsVehicleTyreBurst(vehicle, i, false) then
                damage.tyres[i] = IsVehicleTyreBurst(vehicle, i, true) and 2 or 1
            end
        end

        local neons = {}
        for i = 0, 3 do
            neons[tostring(i)] = IsVehicleNeonLightEnabled(vehicle, i)
        end

        return {
            model = GetEntityModel(vehicle),
            plate = GetVehicleNumberPlateText(vehicle),
            plateIndex = GetVehicleNumberPlateTextIndex(vehicle),
            bodyHealth = math.floor(GetVehicleBodyHealth(vehicle) + 0.5),
            engineHealth = math.floor(GetVehicleEngineHealth(vehicle) + 0.5),
            tankHealth = math.floor(GetVehiclePetrolTankHealth(vehicle) + 0.5),
            fuelLevel = math.floor(GetVehicleFuelLevel(vehicle) + 0.5),
            oilLevel = math.floor(GetVehicleOilLevel(vehicle) + 0.5),
            dirtLevel = math.floor(GetVehicleDirtLevel(vehicle) + 0.5),
            paintType1 = paintType1,
            paintType2 = paintType2,
            color1 = colorPrimary,
            color2 = colorSecondary,
            pearlescentColor = pearlescentColor,
            interiorColor = GetVehicleInteriorColor(vehicle),
            dashboardColor = GetVehicleDashboardColour(vehicle),
            wheelColor = wheelColor,
            wheelWidth = GetVehicleWheelWidth(vehicle),
            wheelSize = GetVehicleWheelSize(vehicle),
            wheels = GetVehicleWheelType(vehicle),
            windowTint = GetVehicleWindowTint(vehicle),
            xenonColor = GetVehicleXenonLightsColor(vehicle),
            customXenon = customXenon,
            neonEnabled = neons,
            neonColor = { GetVehicleNeonLightsColour(vehicle) },
            extras = extras,
            tyreSmokeColor = { GetVehicleTyreSmokeColor(vehicle) },
            modSpoilers = GetVehicleMod(vehicle, 0),
            modFrontBumper = GetVehicleMod(vehicle, 1),
            modRearBumper = GetVehicleMod(vehicle, 2),
            modSideSkirt = GetVehicleMod(vehicle, 3),
            modExhaust = GetVehicleMod(vehicle, 4),
            modFrame = GetVehicleMod(vehicle, 5),
            modGrille = GetVehicleMod(vehicle, 6),
            modHood = GetVehicleMod(vehicle, 7),
            modFender = GetVehicleMod(vehicle, 8),
            modRightFender = GetVehicleMod(vehicle, 9),
            modRoof = GetVehicleMod(vehicle, 10),
            modEngine = GetVehicleMod(vehicle, 11),
            modBrakes = GetVehicleMod(vehicle, 12),
            modTransmission = GetVehicleMod(vehicle, 13),
            modHorns = GetVehicleMod(vehicle, 14),
            modSuspension = GetVehicleMod(vehicle, 15),
            modArmor = GetVehicleMod(vehicle, 16),
            modNitrous = GetVehicleMod(vehicle, 17),
            modTurbo = IsToggleModOn(vehicle, 18),
            modSubwoofer = GetVehicleMod(vehicle, 19),
            modSmokeEnabled = IsToggleModOn(vehicle, 20),
            modHydraulics = IsToggleModOn(vehicle, 21),
            modXenon = IsToggleModOn(vehicle, 22),
            modFrontWheels = GetVehicleMod(vehicle, 23),
            modBackWheels = GetVehicleMod(vehicle, 24),
            modCustomTiresF = GetVehicleModVariation(vehicle, 23),
            modCustomTiresR = GetVehicleModVariation(vehicle, 24),
            modPlateHolder = GetVehicleMod(vehicle, 25),
            modVanityPlate = GetVehicleMod(vehicle, 26),
            modTrimA = GetVehicleMod(vehicle, 27),
            modOrnaments = GetVehicleMod(vehicle, 28),
            modDashboard = GetVehicleMod(vehicle, 29),
            modDial = GetVehicleMod(vehicle, 30),
            modDoorSpeaker = GetVehicleMod(vehicle, 31),
            modSeats = GetVehicleMod(vehicle, 32),
            modSteeringWheel = GetVehicleMod(vehicle, 33),
            modShifterLeavers = GetVehicleMod(vehicle, 34),
            modAPlate = GetVehicleMod(vehicle, 35),
            modSpeakers = GetVehicleMod(vehicle, 36),
            modTrunk = GetVehicleMod(vehicle, 37),
            modHydrolic = GetVehicleMod(vehicle, 38),
            modEngineBlock = GetVehicleMod(vehicle, 39),
            modAirFilter = GetVehicleMod(vehicle, 40),
            modStruts = GetVehicleMod(vehicle, 41),
            modArchCover = GetVehicleMod(vehicle, 42),
            modAerials = GetVehicleMod(vehicle, 43),
            modTrimB = GetVehicleMod(vehicle, 44),
            modTank = GetVehicleMod(vehicle, 45),
            modWindows = GetVehicleMod(vehicle, 46),
            modDoorR = GetVehicleMod(vehicle, 47),
            modLivery = modLivery,
            modRoofLivery = GetVehicleRoofLivery(vehicle),
            modLightbar = GetVehicleMod(vehicle, 49),
            windows = damage.windows,
            doors = damage.doors,
            tyres = damage.tyres,
            bulletProofTyres = GetVehicleTyresCanBurst(vehicle),
            driftTyres = gameBuild >= 2372 and GetDriftTyresEnabled(vehicle),
            -- no setters?
            -- leftHeadlight = GetIsLeftVehicleHeadlightDamaged(vehicle),
            -- rightHeadlight = GetIsRightVehicleHeadlightDamaged(vehicle),
            -- frontBumper = IsVehicleBumperBrokenOff(vehicle, true),
            -- rearBumper = IsVehicleBumperBrokenOff(vehicle, false),
        }
    end
end

---@param vehicle number
---@param props VehicleProperties
SetVehicleProperties = function(vehicle, props)
    if not DoesEntityExist(vehicle) then
        return
    end

    local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
    local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)

    SetVehicleModKit(vehicle, 0)

    if props.extras then
        for id, toggle in pairs(props.extras) do
            local extraId = tonumber(id)
            if type(toggle) == 'boolean' then
                if toggle then 
                    SetVehicleExtra(vehicle, extraId, 0)
                else
                    SetVehicleExtra(vehicle, extraId, 1)
                end
            else
                SetVehicleExtra(vehicle, extraId, toggle)
            end
        end
    end

    if props.plate then
        SetVehicleNumberPlateText(vehicle, props.plate)
    end

    if props.plateIndex then
        SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex)
    end

    if props.bodyHealth then
        SetVehicleBodyHealth(vehicle, props.bodyHealth + 0.0)
    end

    if props.engineHealth then
        SetVehicleEngineHealth(vehicle, props.engineHealth + 0.0)
    end

    if props.tankHealth then
        SetVehiclePetrolTankHealth(vehicle, props.tankHealth + 0.0)
    end

    if props.fuelLevel then
        SetVehicleFuelLevel(vehicle, props.fuelLevel + 0.0)
    end

    if props.oilLevel then
        SetVehicleOilLevel(vehicle, props.oilLevel + 0.0)
    end

    if props.dirtLevel then
        SetVehicleDirtLevel(vehicle, props.dirtLevel + 0.0)
    end

    if props.color1 then
        if type(props.color1) == 'number' then
            ClearVehicleCustomPrimaryColour(vehicle)
            SetVehicleModColor_1(vehicle, props.paintType1, props.color1, pearlescentColor)
            SetVehicleColours(vehicle, props.color1, type(props.color2) == 'number' and props.color2 or colorSecondary)
        else
            if props.paintType1 then
                SetVehicleModColor_1(vehicle, props.paintType1, 0, pearlescentColor)
            end
            ClearVehicleCustomPrimaryColour(vehicle)
            SetVehicleCustomPrimaryColour(vehicle, props.color1[1], props.color1[2], props.color1[3])
        end
    end

    if props.color2 then
        if type(props.color2) == 'number' then
            ClearVehicleCustomSecondaryColour(vehicle)
            SetVehicleModColor_2(vehicle, props.paintType2, props.color2)
            SetVehicleColours(vehicle, type(props.color1) == 'number' and props.color1 or colorPrimary, props.color2)
            if type(props.color1) ~= 'number' then
                SetVehicleModColor_1(vehicle, props.paintType1, 0, pearlescentColor)
            end
        else
            if props.paintType2 then
                SetVehicleModColor_2(vehicle, props.paintType2, 0)
            end
            SetVehicleCustomSecondaryColour(vehicle, props.color2[1], props.color2[2], props.color2[3])
        end
    end

    if props.pearlescentColor or props.wheelColor then
        SetVehicleExtraColours(vehicle, props.pearlescentColor or pearlescentColor, props.wheelColor or wheelColor)
    end

    if props.interiorColor then
        SetVehicleInteriorColor(vehicle, props.interiorColor)
    end

    if props.dashboardColor then
        SetVehicleDashboardColor(vehicle, props.dashboardColor)
    end

    if props.wheels then
        SetVehicleWheelType(vehicle, props.wheels)
    end

    if props.wheelSize then
        SetVehicleWheelSize(vehicle, props.wheelSize)
    end

    if props.wheelWidth then
        SetVehicleWheelWidth(vehicle, props.wheelWidth)
    end

    if props.windowTint then
        SetVehicleWindowTint(vehicle, props.windowTint)
    end

    if props.neonEnabled then
        for k,v in pairs(props.neonEnabled) do
            SetVehicleNeonLightEnabled(vehicle, tonumber(k), v)
        end
    end

    if props.windows then
        for i = 1, #props.windows do
            RemoveVehicleWindow(vehicle, props.windows[i])
        end
    end

    if props.doors then
        for i = 1, #props.doors do
            SetVehicleDoorBroken(vehicle, props.doors[i], true)
        end
    end

    if props.tyres then
        for tyre, state in pairs(props.tyres) do
            SetVehicleTyreBurst(vehicle, tonumber(tyre) --[[@as number]], state == 2, 1000.0)
        end
    end

    if props.neonColor then
        SetVehicleNeonLightsColour(vehicle, props.neonColor[1], props.neonColor[2], props.neonColor[3])
    end

    if props.modSmokeEnabled ~= nil then
        ToggleVehicleMod(vehicle, 20, props.modSmokeEnabled)
    end

    if props.tyreSmokeColor then
        SetVehicleTyreSmokeColor(vehicle, props.tyreSmokeColor[1], props.tyreSmokeColor[2], props.tyreSmokeColor[3])
    end

    if props.modSpoilers then
        SetVehicleMod(vehicle, 0, props.modSpoilers, false)
    end

    if props.modFrontBumper then
        SetVehicleMod(vehicle, 1, props.modFrontBumper, false)
    end

    if props.modRearBumper then
        SetVehicleMod(vehicle, 2, props.modRearBumper, false)
    end

    if props.modSideSkirt then
        SetVehicleMod(vehicle, 3, props.modSideSkirt, false)
    end

    if props.modExhaust then
        SetVehicleMod(vehicle, 4, props.modExhaust, false)
    end

    if props.modFrame then
        SetVehicleMod(vehicle, 5, props.modFrame, false)
    end

    if props.modGrille then
        SetVehicleMod(vehicle, 6, props.modGrille, false)
    end

    if props.modHood then
        SetVehicleMod(vehicle, 7, props.modHood, false)
    end

    if props.modFender then
        SetVehicleMod(vehicle, 8, props.modFender, false)
    end

    if props.modRightFender then
        SetVehicleMod(vehicle, 9, props.modRightFender, false)
    end

    if props.modRoof then
        SetVehicleMod(vehicle, 10, props.modRoof, false)
    end

    if props.modEngine then
        SetVehicleMod(vehicle, 11, props.modEngine, false)
    end

    if props.modBrakes then
        SetVehicleMod(vehicle, 12, props.modBrakes, false)
    end

    if props.modTransmission then
        SetVehicleMod(vehicle, 13, props.modTransmission, false)
    end

    if props.modHorns then
        SetVehicleMod(vehicle, 14, props.modHorns, false)
    end

    if props.modSuspension then
        SetVehicleMod(vehicle, 15, props.modSuspension, false)
    end

    if props.modArmor then
        SetVehicleMod(vehicle, 16, props.modArmor, false)
    end

    if props.modNitrous then
        SetVehicleMod(vehicle, 17, props.modNitrous, false)
    end

    if props.modTurbo ~= nil then
        ToggleVehicleMod(vehicle, 18, props.modTurbo)
    end

    if props.modSubwoofer ~= nil then
        ToggleVehicleMod(vehicle, 19, props.modSubwoofer)
    end

    if props.modHydraulics ~= nil then
        ToggleVehicleMod(vehicle, 21, props.modHydraulics)
    end

    if props.modXenon ~= nil then
        ToggleVehicleMod(vehicle, 22, props.modXenon)
    end

    if props.xenonColor then
        ClearVehicleXenonLightsCustomColor(vehicle)
        SetVehicleXenonLightsColor(vehicle, props.xenonColor)
    end

    if props.customXenon then
        SetVehicleXenonLightsCustomColor(vehicle, props.customXenon[1], props.customXenon[2], props.customXenon[3])
    end

    if props.modFrontWheels then
        SetVehicleMod(vehicle, 23, props.modFrontWheels, props.modCustomTiresF)
    end

    if props.modBackWheels then
        SetVehicleMod(vehicle, 24, props.modBackWheels, props.modCustomTiresR)
    end

    if props.modPlateHolder then
        SetVehicleMod(vehicle, 25, props.modPlateHolder, false)
    end

    if props.modVanityPlate then
        SetVehicleMod(vehicle, 26, props.modVanityPlate, false)
    end

    if props.modTrimA then
        SetVehicleMod(vehicle, 27, props.modTrimA, false)
    end

    if props.modOrnaments then
        SetVehicleMod(vehicle, 28, props.modOrnaments, false)
    end

    if props.modDashboard then
        SetVehicleMod(vehicle, 29, props.modDashboard, false)
    end

    if props.modDial then
        SetVehicleMod(vehicle, 30, props.modDial, false)
    end

    if props.modDoorSpeaker then
        SetVehicleMod(vehicle, 31, props.modDoorSpeaker, false)
    end

    if props.modSeats then
        SetVehicleMod(vehicle, 32, props.modSeats, false)
    end

    if props.modSteeringWheel then
        SetVehicleMod(vehicle, 33, props.modSteeringWheel, false)
    end

    if props.modShifterLeavers then
        SetVehicleMod(vehicle, 34, props.modShifterLeavers, false)
    end

    if props.modAPlate then
        SetVehicleMod(vehicle, 35, props.modAPlate, false)
    end

    if props.modSpeakers then
        SetVehicleMod(vehicle, 36, props.modSpeakers, false)
    end

    if props.modTrunk then
        SetVehicleMod(vehicle, 37, props.modTrunk, false)
    end

    if props.modHydrolic then
        SetVehicleMod(vehicle, 38, props.modHydrolic, false)
    end

    if props.modEngineBlock then
        SetVehicleMod(vehicle, 39, props.modEngineBlock, false)
    end

    if props.modAirFilter then
        SetVehicleMod(vehicle, 40, props.modAirFilter, false)
    end

    if props.modStruts then
        SetVehicleMod(vehicle, 41, props.modStruts, false)
    end

    if props.modArchCover then
        SetVehicleMod(vehicle, 42, props.modArchCover, false)
    end

    if props.modAerials then
        SetVehicleMod(vehicle, 43, props.modAerials, false)
    end

    if props.modTrimB then
        SetVehicleMod(vehicle, 44, props.modTrimB, false)
    end

    if props.modTank then
        SetVehicleMod(vehicle, 45, props.modTank, false)
    end

    if props.modWindows then
        SetVehicleMod(vehicle, 46, props.modWindows, false)
    end

    if props.modDoorR then
        SetVehicleMod(vehicle, 47, props.modDoorR, false)
    end

    if props.modLivery then
        SetVehicleMod(vehicle, 48, props.modLivery, false)
        SetVehicleLivery(vehicle, props.modLivery)
    end

    if props.modRoofLivery then
        SetVehicleRoofLivery(vehicle, props.modRoofLivery)
    end

    if props.modLightbar then
        SetVehicleMod(vehicle, 49, props.modLightbar, false)
    end

    if props.bulletProofTyres ~= nil then
        SetVehicleTyresCanBurst(vehicle, props.bulletProofTyres)
    end

    if gameBuild >= 2372 and props.driftTyres ~= nil then
        SetDriftTyresEnabled(vehicle, props.driftTyres)
        if type(props.driftTyres) == 'boolean' and props.driftTyres == true or props.driftTyres == 1 then
            SetReduceDriftVehicleSuspension(vehicle, true)
        else
            SetReduceDriftVehicleSuspension(vehicle, false)
        end
    end
end

AddStateBagChangeHandler('t1ger_lib:setVehicleProps' --[[key filter]], nil --[[bag filter]], function(bagName, key, value, _unused, replicated)
	Wait(0)

	if not value then
        return
    end

	local net = tonumber(bagName:gsub('entity:', ''), 10)
	local vehicle = net and NetworkGetEntityFromNetworkId(net)
    
	if DoesEntityExist(vehicle) then
        SetVehicleProperties(vehicle, value)
	end
end)
