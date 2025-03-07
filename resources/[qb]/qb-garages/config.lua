Config = Config or {}
--[[
    Author: JDev17#8160
    TRANSLATION:
        To create a new translation file, copy an existing one and rename it to e.g. es (spanish), then translate it and change the imported file in the fxmanifest under shared_scripts.
    GARAGE CONFIGURATION EXAMPLE:
    ['somegarage'] = {
        ['Zone'] = {
            ['Shape'] = { -- Create a polyzone by using '/pzcreate poly', '/pzadd' and '/pzfinish' or '/pzcancel' to cancel it. the newly created polyzone will be in txData/QBCoreFramework_******.base/polyzone_created_zones.txt
            vector2(-1030.4713134766, -3016.3388671875),
            vector2(-970.09686279296, -2914.7397460938),
            vector2(-948.322265625, -2927.9030761718),
            vector2(-950.47174072266, -2941.6584472656),
            vector2(-949.04180908204, -2953.9467773438),
            vector2(-940.78369140625, -2957.2941894532),
            vector2(-943.88732910156, -2964.5512695312),
            vector2(-897.61529541016, -2990.0505371094),
            vector2(-930.01025390625, -3046.0695800782),
            vector2(-942.36407470704, -3044.7858886718),
            vector2(-952.97467041016, -3056.5122070312),
            vector2(-957.11712646484, -3057.0900878906)
            },
            ['minZ'] = 12.5,  -- min height of the parking zone, cannot be the same as maxZ, and must be smaller than maxZ
            ['maxZ'] = 20.0,  -- max height of the parking zone
            -- Important: Make sure the parking zone is high enough - higher than the tallest vehicle and touches the ground (turn on debug to see)
        },
        label = 'Hangar', -- label displayed on phone
        type = 'public', -- 'public', 'job', 'depot' or 'gang'
        showBlip = true, -- optional, when not defined, defaults to false
        blipName = 'Police', -- otional
        blipNumber = 90, -- optional, numbers can be found here: https://docs.fivem.net/docs/game-references/blips/
        blipColor = 69, -- optional, defaults to 3 (Blue), numbers can be found here: https://docs.fivem.net/docs/game-references/blips/
        blipcoords = vector3(-972.66, -3005.4, 13.32), -- blip coordinates
        job = 'police', -- optional, everyone can use it when not defined
        -- job = {'police', 'ambulance'), -- optional, multi job support
        useVehicleSpawner = true, uses the configured job vehicles, make sure to have the job attribute set! (job = 'police')                                                           <---    NEW
        jobGarageIdentifier = 'pd1', required when using vehicle spawner, references the JobVehicles down below, make sure this matches what you used in the JobVehicles table          <---    NEW
        gang = 'vagos', -- optional, same as job but for gangs, do not use both
        -- gang = {'vagos', 'gsf'}, -- optional, multi gang support
        jobVehiclesIndex = 'pd1', -- the corresponding index (JobVehicles)
        vehicleCategories = {'helicopter', 'plane'}, -- categories defined in VehicleCategories
        drawText = 'Hangar', -- the drawtext text, shown when entering the polyzone of that garage
        ParkingDistance = 10.0 -- Optional ParkingDistance, to override the global ParkingDistance
        SpawnDistance = 5.0 -- Optional SpawnDistance, to override the global SpawnDistance
        debug = false -- will show the polyzone and the parking spots, helpful when creating new garages. If too many garages are set to debug, it will not show all parking lots
        ExitWarpLocations: { -- Optional, Used for e.g. Boat parking, to teleport the player out of the boat to the closest location defined in the list.
            vector3(-807.15, -1496.86, 1.6),
            vector3(-800.17, -1494.87, 1.6),
            vector3(-792.92, -1492.18, 1.6),
            vector3(-787.58, -1508.59, 1.6),
            vector3(-794.89, -1511.16, 1.6),
            vector3(-800.21, -1513.05, 1.6),
        }
    },
]]

-- NEW ---
-- There is a new clientside export called 'TrackVehicleByPlate' that can be used to track vehicles by plate, this is useful for other scripts that want to track vehicles by plate (e.g. exports['qb-garages']:TrackVehicleByPlate(plate))
-- And the clientside event 'qb-garages:client:TrackVehicleByPlate'(e.g. TriggerEvent('qb-garages:client:TrackVehicleByPlate', plate))

Config.TrackVehicleByPlateCommand = true -- Allow players to track their vehicles by plate using /trackvehicle <plate>
Config.TrackVehicleByPlateCommandPermissionLevel = 'god' -- Permission level required to use /trackvehicle <plate>, false for anyone / everyone

-- NEW --



-- NEW --
Config.SharedGangGarages = false -- Allow shared gang garages, if false, the player can only access their own vehicles
-- for specific gangs, use this:
-- Config.SharedGangGarages = {
--     ['vagos'] = true, -- Allow shared gang garages, if false, the player can only access their own vehicles
--     ['gsf'] = true, -- Allow shared gang garages, if false, the player can only access their own vehicles
-- }
-- NEW ---

Config.SharedHouseGarage = true -- Allow shared house garages, if false, the player can only access their own vehicles

-- NEW ---
Config.AllowParkingAnyonesVehicle = false -- Allow anyones vehicle to be stored in the garage, if false, only vehicles you own can be stored in the garage (supports only public garages)
Config.AllowParkingFromOutsideVehicle = false -- Allow parking from outside the vehicle, if false, you have to be inside the vehicle to park it
Config.VehicleParkDistance = 2.0 -- Distance from the player to the vehicle to park it, radial option will dissapear beyond this distance
-- NEW -

Config.GlobalParking = false -- if true, you can access your cars from any garage, if false, you can only access your cars from the garage you stored them in
-- NEW

-- NEW
Config.SpawnVehiclesServerside = true -- REQUIRES THE ABSOLUTE LATEST VERSION OF QBCORE, OR MAKE SURE YOU HAVE THESE: https://github.com/qbcore-framework/qb-core/blob/81ffd872319d2eb8e496c3b3faaf37e791912c84/server/events.lua#L252
-- NEW 

-- NEW -- Only relevant if AllowSpawningFromAnywhere = false
Config.SpawnAtFreeParkingSpot = false -- Will spawn at the closest free parking spot if you walk up to a occupied parking spot (basically you have to walk up close to a parking lot but it does not matter if there is a vehicle blocking the spawn as it will spawn at the closest free parking spot)

-- DEPRECATED - will be removed in the future
Config.StoreDamageAccuratly = false -- Do not use, if on latest qb-core, if set to true, make sure to apply / run patch1.sql
-- DEPRECATED - will be removed in the future

Config.StoreParkinglotAccuratly = false  -- store the last parking lot in the DB, if set to true, make sure to apply / run patch1.sql, I recommend applying the tracking snippet for qb-phone from the ReadMe to the phone so you can track the vehicle to the exact parking lot
Config.SpawnAtLastParkinglot = false -- spawn the vehicle at the last parked location if StoreParkinglotAccuratly = true, if set to true, make sure to apply / run patch1.sql
Config.GarageNameAsBlipName = true -- if set to true, the blips name will match the garage name
Config.FuelScript = 'cdn-fuel' -- change to lj-fuel / ps-fuel if you use lj-fuel / ps-fuel or something else if you use any other LegcyFuel compatible script
Config.AllowSpawningFromAnywhere = true -- if set to true, the car can be spawned from anywhere inside the zone on the closest parking lot, if set to false you will have to walk up to a parking lot 
Config.AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
Config.WarpPlayerIntoVehicle = true -- True == Will Warp Player Into their vehicle after pulling it out of garage. False It will spawn on the parking lot / in front of them  (Global, can be overriden by each garage)
Config.HouseParkingDrawText = 'Parking' -- text when driving on to the HOUSE parking lot
Config.ParkingDistance = 2.0 -- Distance to the parking lot when trying to park the vehicle  (Global, can be overriden by each garage)
Config.SpawnDistance = 4.5 -- The maximum distance you can be from a parking spot, to spawn a car (Global, can be overriden by each garage)
Config.DepotPrice = 2000.0 -- The price to take out a despawned vehicle from impound.
Config.DrawTextPosition = 'left' -- location of drawtext: left, top, right

-- set useVehicleSpawner = true for each garage that has type job and should use the vehicle spawner instead of personal vehicles
Config.JobVehicles = {
	['pd1'] = { -- jobGarageIdentifier
        label = "Police Vehicles",
        job = 'police',
        -- Grade 0
        vehicles = {
            [0] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 1
            [1] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",

            },
            -- Grade 2
            [2] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 3
            [3] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 4
            [4] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            }
        }
    }
}

-- '/restorelostcars <destination_garage>' allows you to restore cars that have been parked in garages which no longer exist in the config (garage renamed or removed). The restored cars get sent to the destination garage or if left empty to a random garage in the list.
-- NOTE: This may also send helis and boats to said garaga so choose wisely
Config.RestoreCommandPermissionLevel = 'god' -- sets the permission level for the above mentioned command

-- THESE VEHICLE CATEGORIES ARE NOT RELATED TO THE ONES IN shared/vehicles.lua
-- Here you can define which category contains which vehicle class. These categories can then be used in the garage config
-- All vehicle classes can be found here: https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.VehicleCategories = {
    ['car'] = { 0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12 },
    ['motorcycle'] = { 8 },
    ['other'] = { 13 }, -- cycles: 13 - you can move cycles to cars if you want and have anything else like military vehicles in this category
    ['boat'] = { 14 },
    ['helicopter'] = { 15 },
    ['plane'] = { 16 },
    ['service'] = { 17 },
    ['emergency'] = { 18 },
    ['military'] = { 19 },
    ['commercial'] = { 20 },
    -- you can also create new / delete or update categories, and use them below in the config.
}

Config.HouseGarageCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane', 'boat'} -- Which categories are allowed to be parked at a house garage


Config.VehicleHeading = 'driverside' -- only used when NO parking spots are defined in the garage config
--[[^^^^^^^^
    'forward' = will face the sameway as the ped
    'driverside' = will put the driver door closets to the ped
    'hood' = will face the hood towards ped
    'passengerside' = will put the passenger door closets to the ped
]]

Config.SharedJobGarages = { -- define the job garages which are shared
    --'pdgarage',
}

Config.Garages = {
    --[[
        types:
        - public
        - job
        - depot
        vehicleCategories:
        - car
        - motorcycle
        - boat
        - helicopter
        - plane
        - other
    ]]
    ['pillboxgarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(75.48, -576.16),
                vector2(63.96, -572.52),
                vector2(55.68, -570.44),
                vector2(48.57, -568.98),
                vector2(38.42, -567.4),
                vector2(31.73, -566.63),
                vector2(20.83, -566.22),
                vector2(19.61, -569.19),
                vector2(15.02, -567.57),
                vector2(3.76, -598.58),
                vector2(23.77, -605.67),
                vector2(7.99, -648.6),
                vector2(21.81, -653.62),
                vector2(20.7, -657.82),
                vector2(32.76, -662.45),
                vector2(34.63, -661.22),
                vector2(48.2, -666.25),
                vector2(78.06, -584.13),
                vector2(73.72, -582.12),
            },
            ['minZ'] = 30.6,  -- min height of the parking zone
            ['maxZ'] = 32.6,  -- max height of the parking zone
        },
        label = 'Pillbox Parking',
        showBlip = true,
        blipcoords = vector3(37.08, -616.99, 34.19),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(48.46, -600.58, 31.05, 339.83),
            vector4(45.27, -598.81, 31.05, 337.94),
            vector4(41.67, -597.67, 31.05, 340.45),
            vector4(38.56, -596.16, 31.05, 338.12),
            vector4(34.99, -595.47, 31.05, 340.89),
            vector4(31.2, -593.92, 31.05, 339.65),
            vector4(27.64, -592.9, 31.05, 341.86),
            vector4(7.72, -596.58, 31.05, 251.56),
            vector4(9.52, -592.97, 31.05, 249.91),
            vector4(10.79, -589.67, 31.05, 248.15),
            vector4(11.64, -586.28, 31.05, 250.38),
            vector4(13.02, -582.73, 31.05, 250.56),
            vector4(14.43, -579.28, 31.05, 250.48),
            vector4(15.79, -575.91, 31.05, 250.57),
            vector4(16.99, -572.2, 31.05, 250.35),
            vector4(32.27, -579.78, 31.05, 338.59),
            vector4(36.28, -581.01, 31.05, 342.11),
            vector4(39.79, -581.82, 31.05, 339.93),
            vector4(42.7, -583.86, 31.05, 338.52),
            vector4(46.25, -584.88, 31.05, 343.14),
            vector4(49.66, -586.2, 31.05, 341.91),
            vector4(53.64, -586.94, 31.05, 341.75),
            vector4(57.03, -588.71, 31.05, 340.63),
            vector4(64.95, -576.19, 31.05, 163.06),
            vector4(68.08, -577.66, 31.05, 154.95),
            vector4(72.16, -578.61, 31.05, 155.89),
            vector4(73.41, -586.19, 31.05, 69.64),
            vector4(72.48, -589.82, 31.05, 67.8),
            vector4(70.89, -592.9, 31.05, 68.41),
            vector4(69.46, -596.76, 31.05, 68.6),
            vector4(67.89, -600.17, 31.05, 69.91),
            vector4(67.24, -603.68, 31.05, 67.92),
            vector4(65.89, -607.19, 31.05, 68.69),
            vector4(64.22, -611.22, 31.1, 68.4),
            vector4(54.68, -638.55, 31.09, 246.21),
            vector4(53.23, -641.75, 31.06, 69.7),
            vector4(52.06, -645.06, 31.05, 70.13),
            vector4(50.58, -648.56, 31.05, 67.35),
            vector4(49.61, -652.33, 31.05, 69.85),
            vector4(48.33, -655.49, 31.05, 68.67),
            vector4(47.37, -659.23, 31.05, 69.73),
            vector4(45.67, -662.47, 31.05, 66.96),
        }
    },
    ['pierparking'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1590.0551757812, -1060.3591308594),
                vector2(-1585.4135742188, -1054.6623535156),
                vector2(-1610.2999267578, -1034.6142578125),
                vector2(-1614.5028076172, -1039.6356201172)
            },
            ['minZ'] = 13.017408370972,  -- min height of the parking zone
            ['maxZ'] = 13.154326438904,  -- max height of the parking zone
        },
        label = 'Pier Parking',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Pier Parking',
        showBlip = true,
        blipName = 'Pier Parking',
        blipNumber = 357,
        blipColor = 2,
        blipcoords = vector3(-1603.11, -1046.04, 13.04),
        ParkingDistance = 20.0,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1589.3, -1056.3, 13.02, 243.3),
            vector4(-1591.72, -1054.12, 13.02, 50.98),
            vector4(-1594.57, -1051.84, 13.02, 50.04),
            vector4(-1597.22, -1050.09, 13.02, 42.93),
            vector4(-1607.3, -1040.96, 13.11, 46.07),
            vector4(-1610.52, -1038.82, 13.14, 223.92)
        }
    },
    ['mazebankarena'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-267.82391357422, -2105.1604003906),
                vector2(-244.38444519043, -2109.732421875),
                vector2(-228.80404663086, -2100.9663085938),
                vector2(-215.8318939209, -2091.2556152344),
                vector2(-205.00207519531, -2081.583984375),
                vector2(-193.83006286621, -2067.7517089844),
                vector2(-182.88595581055, -2051.3254394531),
                vector2(-176.71022033691, -2037.5819091797),
                vector2(-170.99101257324, -2019.5743408203),
                vector2(-170.56056213379, -2016.7907714844),
                vector2(-188.25343322754, -2013.7186279297),
                vector2(-186.29884338379, -1997.7005615234),
                vector2(-168.5559387207, -1997.8962402344),
                vector2(-168.04360961914, -1981.7883300781),
                vector2(-169.34033203125, -1967.2785644531),
                vector2(-173.62382507324, -1947.9343261719),
                vector2(-179.58908081055, -1933.2825927734),
                vector2(-184.98793029785, -1922.6706542969),
                vector2(-187.66920471191, -1918.9857177734),
                vector2(-222.68211364746, -1939.0089111328),
                vector2(-216.55157470703, -1957.1285400391),
                vector2(-210.34809875488, -1977.9693603516),
                vector2(-210.0715637207, -1994.1656494141),
                vector2(-212.57263183594, -2011.3801269531),
                vector2(-219.44281005859, -2030.0629882812),
                vector2(-239.36163330078, -2056.3825683594),
                vector2(-255.06343078613, -2067.3132324219),
                vector2(-273.69744873047, -2075.4504394531)
            },
            ['minZ'] = 26.00,
            ['maxZ'] = 29.00
        },
        label = 'Maze Bank Arena Parking',
        showBlip = true,
        blipcoords = vector3(888.47, -37.44, 78.76),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-261.11, -2074.84, 27.62, 29.65),
            vector4(-258.47, -2073.55, 27.62, 20.52),
            vector4(-255.59, -2071.85, 27.62, 24.13),
            vector4(-252.33, -2070.39, 27.62, 25.5),
            vector4(-249.75, -2068.35, 27.62, 28.75),
            vector4(-246.94, -2066.58, 27.62, 33.6),
            vector4(-243.85, -2064.24, 27.62, 20.54),
            vector4(-241.11, -2062.22, 27.62, 35.77),
            vector4(-237.83, -2059.91, 27.62, 37.01),
            vector4(-218.84, -2038.08, 27.62, 58.25),
            vector4(-217.57, -2034.89, 27.62, 51.53),
            vector4(-215.94, -2031.27, 27.62, 60.59),
            vector4(-214.16, -2027.94, 27.62, 61.89),
            vector4(-212.99, -2025.02, 27.62, 59.45),
            vector4(-211.95, -2021.48, 27.62, 66.69),
            vector4(-211.04, -2018.5, 27.62, 64.27),
            vector4(-210.3, -2015.25, 27.62, 65.96),
            vector4(-209.47, -2012.07, 27.62, 76.83),
            vector4(-205.44, -1988.89, 27.62, 90.92),
            vector4(-205.88, -1985.82, 27.62, 81.49),
            vector4(-206.0, -1982.83, 27.62, 84.04),
            vector4(-206.56, -1979.78, 27.62, 88.98),
            vector4(-206.83, -1976.77, 27.62, 85.37),
            vector4(-206.97, -1973.67, 27.62, 82.98),
            vector4(-207.36, -1970.66, 27.62, 95.73),
            vector4(-208.42, -1967.76, 27.62, 98.76),
            vector4(-209.08, -1964.79, 27.62, 101.21),
            vector4(-210.03, -1962.09, 27.62, 98.86),
            vector4(-211.09, -1959.09, 27.62, 100.86),
            vector4(-212.18, -1956.29, 27.62, 102.49),
            vector4(-213.3, -1953.41, 27.62, 109.36),
            vector4(-214.25, -1950.57, 27.62, 104.82),
            vector4(-215.4, -1947.56, 27.62, 112.71),
            vector4(-213.62, -1940.99, 27.62, 23.7),
            vector4(-210.36, -1939.51, 27.62, 26.52),
            vector4(-207.48, -1937.65, 27.62, 25.54),
            vector4(-204.83, -1935.62, 27.62, 20.12),
            vector4(-201.92, -1933.53, 27.62, 22.21),
            vector4(-198.86, -1932.12, 27.62, 24.84),
            vector4(-196.0, -1930.36, 27.62, 11.13),
            vector4(-192.87, -1928.33, 27.62, 24.75),
            vector4(-186.02, -1933.26, 27.62, 291.3),
            vector4(-184.28, -1936.91, 27.62, 297.35),
            vector4(-182.68, -1939.71, 27.62, 289.52),
            vector4(-181.56, -1942.62, 27.62, 285.33),
            vector4(-180.12, -1946.03, 27.62, 285.26),
            vector4(-179.03, -1948.92, 27.62, 280.75),
            vector4(-178.19, -1952.09, 27.62, 283.72),
            vector4(-177.14, -1955.55, 27.62, 276.3),
            vector4(-176.46, -1958.9, 27.62, 281.19),
            vector4(-175.55, -1962.3, 27.62, 276.72),
            vector4(-175.39, -1965.67, 27.62, 274.69),
            vector4(-174.67, -1968.77, 27.62, 267.42),
            vector4(-174.1, -1972.06, 27.62, 264.27),
            vector4(-173.51, -1975.68, 27.62, 273.89),
            vector4(-173.58, -1978.97, 27.62, 270.29),
            vector4(-173.29, -1982.21, 27.62, 269.48),
            vector4(-173.25, -1985.74, 27.62, 264.9),
            vector4(-173.2, -1988.97, 27.62, 261.93),
            vector4(-173.01, -1992.27, 27.62, 261.75),
            vector4(-267.34, -2082.0, 27.62, 111.47),
            vector4(-266.29, -2085.16, 27.62, 109.22),
            vector4(-265.26, -2088.5, 27.62, 110.69),
            vector4(-263.94, -2091.82, 27.62, 110.12),
            vector4(-262.82, -2095.18, 27.62, 112.82),
            vector4(-261.86, -2098.43, 27.62, 106.4),
            vector4(-250.55, -2084.96, 27.62, 205.98),
            vector4(-247.52, -2083.5, 27.62, 209.5),
            vector4(-244.03, -2081.56, 27.62, 196.92),
            vector4(-241.38, -2079.28, 27.62, 213.26),
            vector4(-238.05, -2077.48, 27.62, 215.67),
            vector4(-235.13, -2075.29, 27.62, 217.07),
            vector4(-231.81, -2073.01, 27.62, 219.26),
            vector4(-228.94, -2070.54, 27.62, 223.32),
            vector4(-225.96, -2067.86, 27.62, 223.58),
            vector4(-223.35, -2065.03, 27.62, 224.13),
            vector4(-212.72, -2050.99, 27.62, 234.1),
            vector4(-209.96, -2048.16, 27.62, 242.92),
            vector4(-207.98, -2044.61, 27.62, 240.15),
            vector4(-206.21, -2041.58, 27.62, 254.54),
            vector4(-204.22, -2038.12, 27.62, 241.89),
            vector4(-202.47, -2034.82, 27.62, 247.61),
            vector4(-200.72, -2031.68, 27.62, 253.04),
            vector4(-199.57, -2028.06, 27.62, 263.04),
            vector4(-197.87, -2024.56, 27.62, 263.12),
            vector4(-193.07, -1982.95, 27.62, 276.28),
            vector4(-193.12, -1978.88, 27.62, 278.19),
            vector4(-193.35, -1975.33, 27.62, 283.42),
            vector4(-193.68, -1971.52, 27.62, 289.1),
            vector4(-194.51, -1967.56, 27.62, 285.64),
            vector4(-194.95, -1963.96, 27.62, 286.0),
            vector4(-195.99, -1960.13, 27.62, 294.14),
            vector4(-197.13, -1956.37, 27.62, 288.38),
            vector4(-198.04, -1952.7, 27.62, 299.79),
            vector4(-199.07, -1949.27, 27.62, 290.56),
            vector4(-193.89, -1946.7, 27.62, 96.01),
            vector4(-192.31, -1950.31, 27.62, 110.63),
            vector4(-191.19, -1954.11, 27.62, 111.64),
            vector4(-190.15, -1958.39, 27.62, 113.4),
            vector4(-188.56, -1962.2, 27.62, 111.29),
            vector4(-187.91, -1966.13, 27.62, 100.84),
            vector4(-187.36, -1970.28, 27.62, 107.76),
            vector4(-187.01, -1974.22, 27.62, 97.24),
            vector4(-186.51, -1978.4, 27.62, 105.3),
            vector4(-186.15, -1982.26, 27.62, 97.38),
            vector4(-191.14, -2026.74, 27.62, 72.87),
            vector4(-193.23, -2030.24, 27.62, 67.42),
            vector4(-194.35, -2033.92, 27.62, 72.01),
            vector4(-196.45, -2037.38, 27.62, 65.32),
            vector4(-198.26, -2040.84, 27.62, 74.5),
            vector4(-200.11, -2044.6, 27.62, 71.29),
            vector4(-202.14, -2047.92, 27.62, 75.38),
            vector4(-204.44, -2051.54, 27.62, 74.19),
            vector4(-206.78, -2055.0, 27.62, 58.42),
            vector4(-218.62, -2069.55, 27.62, 46.51),
            vector4(-221.87, -2071.93, 27.62, 49.43),
            vector4(-224.96, -2074.81, 27.62, 49.74),
            vector4(-227.97, -2077.42, 27.62, 59.45),
            vector4(-230.97, -2080.27, 27.62, 44.62),
            vector4(-234.21, -2082.38, 27.62, 36.75),
            vector4(-237.78, -2084.31, 27.62, 39.72),
            vector4(-241.13, -2086.91, 27.62, 50.24),
            vector4(-244.17, -2088.56, 27.62, 38.89),
            vector4(-247.71, -2090.31, 27.62, 26.65),
        }
    },
    ['boatdock'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-810.31042480469, -1411.3059082031),
                vector2(-729.57434082031, -1315.1131591797),
                vector2(-697.99578857422, -1341.5162353516),
                vector2(-778.478515625, -1437.3989257812)
            },
            ['minZ'] = -0.39895623922348,  -- min height of the parking zone
            ['maxZ'] = 1.5954074859619,  -- max height of the parking zone
        },
        label = 'Boat Dock',
        type = 'public',
        vehicleCategories = {'boat'},
        drawText = 'Boat Dock',
        showBlip = true,
        blipName = 'Boat Dock',
        blipNumber = 356,
        blipColor = 2,
        blipcoords = vector3(-747.92, -1381.8, -6.9),
        ParkingDistance = 20.0,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-724.63, -1328.13, 0.41, 50.92),
            vector4(-730.98, -1335.91, -0.08, 51.52),
            vector4(-737.27, -1341.31, -0.07, 52.89),
            vector4(-742.88, -1347.52, -0.05, 50.18),
            vector4(-749.5, -1354.59, -0.1, 56.0),
            vector4(-754.55, -1363.36, -0.08, 48.91),
            vector4(-768.7, -1379.12, -0.06, 51.44),
            vector4(-774.87, -1384.88, -0.09, 51.14),
            vector4(-780.4, -1392.33, -0.1, 49.39),
            vector4(-786.87, -1398.59, -0.08, 55.24),
            vector4(-791.37, -1406.34, -0.07, 48.83),
            vector4(-796.94, -1413.4, -0.1, 48.67)

        }
    },
    ['pierdock'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1800.0665283203, -1222.0811767578),
                vector2(-1773.5812988281, -1245.0620117188),
                vector2(-1784.4584960938, -1254.8630371094),
                vector2(-1809.7349853516, -1234.8494873047)
            },
            ['minZ'] = -0.39895623922348,  -- min height of the parking zone
            ['maxZ'] = 1.5954074859619,  -- max height of the parking zone
        },
        label = 'Pier Dock',
        type = 'public',
        vehicleCategories = {'boat'},
        drawText = 'Pier Dock',
        showBlip = true,
        blipName = 'Pier Dock',
        blipNumber = 356,
        blipColor = 2,
        blipcoords = vector3(-1803.45, -1231.77, 1.62),
        ParkingDistance = 20.0,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1787.58, -1239.53, -0.35, 300.06)

        }
    },
    ['mountzonahgarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1991.7407226562, -306.2067565918),
                vector2(-1997.115234375, -302.56484985352),
                vector2(-1985.6329345703, -286.78366088867),
                vector2(-1980.4803466797, -290.24853515625)
            },
            ['minZ'] = 42.906002807617,
            ['maxZ'] = 49.506090545654
        },
        label = 'Ocean Hospital',
        showBlip = true,
        blipcoords = vector3(-1985.75, -305.93, 44.11),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Ocean Hospital Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1993.6371, -302.9313, 43.8120, 236.0488), -- spot 1
            vector4(-1992.2057, -300.2313, 43.8146, 236.4536), -- spot 2
            vector4(-1990.3967, -298.0245, 43.8123, 237.3949), -- spot 3
            vector4(-1988.1998, -294.5140, 43.8117, 235.5919), -- spot 4
            vector4(-1986.3828, -292.0864, 43.8103, 232.9619), -- spot 5
            vector4(-1984.5828, -289.6967, 43.8102, 234.5575) -- spot 6
        }
    },
    ['mirrorpark'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1043.447265625, -767.26947021484),
                vector2(1049.4702148438, -769.44775390625),
                vector2(1049.4797363281, -794.31622314453),
                vector2(1048.9655761719, -794.32214355469),
                vector2(1049.03125, -793.87451171875),
                vector2(1043.466796875, -793.80151367188),
                vector2(1043.3436279297, -794.52691650391),
                vector2(1031.5026855469, -794.34808349609),
                vector2(1007.7255859375, -764.88061523438),
                vector2(1022.2494506836, -752.11022949219),
                vector2(1025.6563720703, -755.25653076172),
                vector2(1030.9210205078, -758.50311279297),
                vector2(1031.2462158203, -758.19201660156),
                vector2(1035.1042480469, -760.79956054688),
                vector2(1030.6268310547, -767.16302490234),
                vector2(1025.9473876953, -763.81085205078),
                vector2(1024.8063964844, -765.39245605469),
                vector2(1033.9915771484, -772.05816650391),
                vector2(1036.6497802734, -781.24871826172),
                vector2(1038.708984375, -780.87786865234),
                vector2(1035.7690429688, -770.72528076172),
                vector2(1032.0593261719, -768.04278564453),
                vector2(1034.0390625, -764.51586914062),
                vector2(1036.8060302734, -766.30773925781),
                vector2(1038.0424804688, -763.41851806641),
                vector2(1043.5157470703, -766.21325683594)
            },
            ['minZ'] = 56.50,
            ['maxZ'] = 59.20
        },
        label = 'Mirror Park Parking',
        showBlip = true,
        blipcoords = vector3(1037.65, -771.62, 58.01),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(1023.5, -756.15, 57.48, 225.44),
            vector4(1020.64, -758.19, 57.49, 225.22),
            vector4(1017.57, -760.75, 57.47, 222.83),
            vector4(1014.9, -763.11, 57.4, 223.82),
            vector4(1016.1, -770.57, 57.41, 311.2),
            vector4(1018.8, -773.42, 57.43, 308.15),
            vector4(1020.68, -776.34, 57.39, 311.86),
            vector4(1023.75, -779.38, 57.41, 309.66),
            vector4(1025.72, -782.07, 57.4, 308.8),
            vector4(1028.49, -784.92, 57.41, 307.36),
            vector4(1030.06, -787.96, 57.38, 310.65),
            vector4(1038.12, -791.16, 57.47, 1.48),
            vector4(1046.49, -785.56, 57.5, 89.6),
            vector4(1046.38, -782.01, 57.51, 92.17),
            vector4(1046.22, -778.03, 57.52, 89.04),
            vector4(1046.27, -774.45, 57.52, 90.5),
            vector4(1030.96, -773.4, 57.57, 144.89),
            vector4(1028.05, -771.42, 57.55, 146.44),
            vector4(1029.35, -763.6, 57.49, 56.05),
            vector4(1041.6, -791.45, 57.5, 0.97)
        }
    },
    ['casinop'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(915.48345947266, -14.229139328003),
                vector2(912.52160644531, -19.256662368774),
                vector2(914.41729736328, -20.468030929565),
                vector2(928.14013671875, -29.422761917114),
                vector2(931.68640136719, -24.097787857056),
                vector2(943.31915283203, -31.373510360718),
                vector2(940.18115234375, -36.682193756104),
                vector2(940.63336181641, -37.222324371338),
                vector2(941.06457519531, -38.056762695312),
                vector2(940.69250488281, -39.514526367188),
                vector2(945.86834716797, -42.898574829102),
                vector2(936.578125, -58.041912078857),
                vector2(935.71746826172, -59.93187713623),
                vector2(935.32781982422, -63.596141815186),
                vector2(935.49609375, -65.299346923828),
                vector2(936.2734375, -67.329566955566),
                vector2(938.08367919922, -69.736022949219),
                vector2(939.06182861328, -70.789291381836),
                vector2(942.05615234375, -73.50260925293),
                vector2(944.24096679688, -76.701873779297),
                vector2(945.71282958984, -80.333465576172),
                vector2(945.46759033203, -86.331184387207),
                vector2(944.24163818359, -90.072593688965),
                vector2(942.83435058594, -92.46647644043),
                vector2(928.69256591797, -105.37116241455),
                vector2(926.07592773438, -107.04386138916),
                vector2(922.68194580078, -107.79019927979),
                vector2(918.29956054688, -107.78350067139),
                vector2(914.76385498047, -106.68801879883),
                vector2(891.66986083984, -92.136535644531),
                vector2(894.90283203125, -86.966018676758),
                vector2(877.28314208984, -75.933624267578),
                vector2(873.83764648438, -81.048561096191),
                vector2(849.61877441406, -65.853485107422),
                vector2(842.07305908203, -59.212493896484),
                vector2(832.29779052734, -48.991901397705),
                vector2(836.66088867188, -44.546573638916),
                vector2(834.18530273438, -42.00004196167),
                vector2(832.93865966797, -39.975162506104),
                vector2(832.380859375, -35.275825500488),
                vector2(833.16229248047, -31.17188835144),
                vector2(839.43792724609, -22.388980865479),
                vector2(849.22601318359, -10.30827331543),
                vector2(871.66424560547, 12.689045906067),
                vector2(872.94342041016, 12.611633300781),
                vector2(881.33111572266, 7.0416121482849),
                vector2(880.61773681641, 5.6222538948059),
                vector2(880.45855712891, 1.066015958786),
                vector2(889.86468505859, -5.0284695625305),
                vector2(894.46960449219, -2.9582657814026),
                vector2(895.51623535156, -1.5529407262802)
            },
            ['minZ'] = 77.50,
            ['maxZ'] = 80.00
        },
        label = 'Casino Parking',
        showBlip = true,
        blipcoords = vector3(888.47, -37.44, 78.76),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(874.36, -77.52, 78.34, 326.7),
            vector4(868.22, -74.12, 78.34, 327.6),
            vector4(865.89, -71.32, 78.34, 327.2),
            vector4(862.79, -70.26, 78.34, 327.35),
            vector4(859.57, -67.92, 78.34, 326.45),
            vector4(856.54, -66.59, 78.34, 326.94),
            vector4(853.6, -64.76, 78.34, 329.96),
            vector4(850.98, -62.23, 78.34, 315.33);
            vector4(848.28, -60.42, 78.34, 316.25),
            vector4(845.29, -58.06, 78.34, 316.99),
            vector4(843.2, -55.19, 78.34, 315.68),
            vector4(841.22, -52.13, 78.34, 315.19),
            vector4(838.31, -49.98, 78.34, 309.63),
            vector4(836.03, -47.87, 78.34, 310.48),
            vector4(871.34, -75.41, 78.34, 327.5),
            vector4(934.99, -72.5, 78.27, 132.69),
            vector4(937.69, -74.87, 78.27, 135.96),
            vector4(940.12, -77.9, 78.27, 124.93),
            vector4(874.36, -77.52, 78.34, 326.7),
            vector4(871.34, -75.41, 78.34, 327.5),
            vector4(894.66, -90.02, 78.34, 329.43),
            vector4(897.75, -92.07, 78.34, 328.5),
            vector4(900.96, -93.67, 78.34, 326.42),
            vector4(903.67, -95.7, 78.34, 328.69),
            vector4(906.77, -97.42, 78.34, 326.69),
            vector4(909.56, -98.98, 78.27, 329.54),
            vector4(912.88, -100.65, 78.27, 327.47),
            vector4(915.52, -102.44, 78.27, 328.46),
            vector4(919.92, -104.15, 78.27, 355.56),
            vector4(924.34, -102.86, 78.27, 23.29),
            vector4(928.29, -100.03, 78.27, 41.76),
            vector4(931.14, -98.26, 78.27, 42.82),
            vector4(933.29, -95.84, 78.27, 43.98),
            vector4(935.95, -93.66, 78.27, 43.12),
            vector4(938.28, -91.0, 78.27, 43.96),
            vector4(941.5, -86.74, 78.27, 71.64),
            vector4(942.22, -82.22, 78.27, 96.61),
            vector4(932.29, -67.33, 78.27, 108.81),
            vector4(931.48, -62.49, 78.27, 87.5),
            vector4(933.04, -58.41, 78.27, 74.44),
            vector4(934.81, -53.94, 78.27, 56.79),
            vector4(936.58, -51.51, 78.27, 59.07),
            vector4(938.49, -48.34, 78.27, 57.96),
            vector4(939.46, -45.37, 78.27, 57.51),
            vector4(941.87, -42.09, 78.27, 57.26),
            vector4(939.92, -33.37, 78.27, 147.28),
            vector4(937.11, -31.58, 78.27, 146.31),
            vector4(934.46, -29.74, 78.27, 147.43),
            vector4(931.24, -28.27, 78.27, 148.17),
            vector4(911.98, -15.91, 78.27, 148.59),
            vector4(908.33, -14.25, 78.27, 151.66),
            vector4(905.28, -11.85, 78.27, 146.75),
            vector4(901.6, -10.25, 78.27, 151.03),
            vector4(898.56, -7.47, 78.27, 150.42),
            vector4(894.74, -5.36, 78.27, 147.31),
            vector4(878.41, 5.09, 78.27, 148.03),
            vector4(874.81, 6.34, 78.27, 145.35),
            vector4(872.04, 8.2, 78.27, 147.69),
            vector4(857.52, -16.84, 78.27, 61.37),
            vector4(855.4, -18.91, 78.27, 56.95),
            vector4(853.22, -21.71, 78.27, 58.03),
            vector4(851.4, -24.62, 78.27, 56.48),
            vector4(849.71, -27.73, 78.27, 56.12),
            vector4(848.46, -30.95, 78.27, 58.58),
            vector4(846.43, -33.78, 78.27, 58.11),
            vector4(844.31, -36.58, 78.27, 58.6),
            vector4(851.99, -41.32, 78.27, 237.04),
            vector4(854.14, -38.45, 78.27, 237.84),
            vector4(855.52, -35.12, 78.27, 239.77),
            vector4(857.58, -32.6, 78.27, 237.61),
            vector4(859.49, -29.77, 78.27, 238.44),
            vector4(860.76, -26.41, 78.27, 239.23),
            vector4(862.82, -23.64, 78.27, 238.93),
            vector4(864.37, -20.41, 78.27, 237.61),
            vector4(867.05, -18.08, 78.27, 237.15),
            vector4(868.52, -15.1, 78.27, 236.79),
            vector4(870.25, -12.23, 78.27, 236.92),
            vector4(871.96, -9.18, 78.27, 236.79),
            vector4(860.59, -50.52, 78.27, 56.19),
            vector4(862.21, -47.59, 78.27, 57.87),
            vector4(864.07, -44.72, 78.27, 57.35),
            vector4(866.09, -41.98, 78.27, 59.81),
            vector4(868.02, -39.09, 78.27, 58.16),
            vector4(869.38, -35.99, 78.27, 59.41),
            vector4(871.76, -33.27, 78.27, 57.79),
            vector4(873.26, -30.41, 78.27, 58.11),
            vector4(875.5, -27.57, 78.27, 59.75),
            vector4(876.7, -24.3, 78.27, 55.59),
            vector4(878.68, -21.55, 78.27, 55.73),
            vector4(880.83, -18.82, 78.27, 58.7),
            vector4(882.29, -15.94, 78.27, 59.44),
            vector4(868.59, -55.55, 78.27, 239.79),
            vector4(870.31, -52.52, 78.27, 237.16),
            vector4(872.25, -49.62, 78.27, 238.25),
            vector4(873.82, -46.81, 78.27, 237.55),
            vector4(875.38, -43.64, 78.27, 240.61),
            vector4(877.57, -40.99, 78.27, 238.89),
            vector4(879.2, -37.86, 78.27, 239.24),
            vector4(881.32, -35.29, 78.27, 239.98),
            vector4(882.71, -32.06, 78.27, 239.47),
            vector4(884.88, -29.13, 78.27, 238.24),
            vector4(886.69, -26.11, 78.27, 238.21),
            vector4(888.29, -23.61, 78.27, 236.97),
            vector4(890.23, -20.25, 78.27, 237.91),
            vector4(879.01, -62.07, 78.27, 57.16),
            vector4(880.87, -59.46, 78.27, 56.4),
            vector4(882.31, -55.9, 78.27, 56.01),
            vector4(884.39, -53.05, 78.27, 55.15),
            vector4(886.74, -50.98, 78.27, 57.74),
            vector4(887.88, -47.3, 78.27, 56.18),
            vector4(889.9, -44.62, 78.27, 57.31),
            vector4(891.22, -41.1, 78.27, 56.82),
            vector4(893.37, -38.44, 78.27, 57.27),
            vector4(894.9, -35.5, 78.27, 57.88),
            vector4(896.66, -32.62, 78.27, 56.27),
            vector4(898.89, -29.89, 78.27, 59.62),
            vector4(900.59, -27.03, 78.27, 57.96),
            vector4(918.92, -38.5, 78.27, 57.96),
            vector4(917.27, -41.62, 78.27, 57.19),
            vector4(915.72, -44.57, 78.27, 58.35),
            vector4(913.25, -46.72, 78.27, 59.34),
            vector4(911.8, -50.19, 78.27, 58.27),
            vector4(909.86, -52.95, 78.27, 56.01),
            vector4(907.82, -56.09, 78.27, 58.75),
            vector4(906.64, -59.22, 78.27, 59.0),
            vector4(904.82, -62.24, 78.27, 58.09),
            vector4(902.76, -64.94, 78.27, 57.42),
            vector4(900.32, -67.77, 78.27, 60.95),
            vector4(898.92, -70.71, 78.27, 59.52),
            vector4(897.37, -73.94, 78.27, 60.01),
            vector4(905.41, -78.55, 78.27, 237.47),
            vector4(906.51, -75.4, 78.27, 239.08),
            vector4(908.51, -72.21, 78.27, 240.06),
            vector4(910.57, -69.75, 78.27, 239.33),
            vector4(912.5, -66.76, 78.27, 236.77),
            vector4(914.61, -63.85, 78.27, 236.27),
            vector4(916.47, -61.02, 78.27, 239.26),
            vector4(918.2, -57.97, 78.27, 239.18),
            vector4(919.83, -55.26, 78.27, 239.26),
            vector4(921.38, -52.13, 78.27, 239.95),
            vector4(923.46, -49.15, 78.27, 240.09),
            vector4(925.59, -46.6, 78.27, 238.16),
            vector4(925.88, -42.81, 78.27, 239.65),
            vector4(915.9, -84.07, 78.27, 56.96),
            vector4(917.48, -81.16, 78.27, 58.09),
            vector4(920.09, -78.3, 78.27, 55.86),
            vector4(927.69, -83.29, 78.27, 238.3),
            vector4(926.1, -86.14, 78.27, 236.23),
            vector4(924.0, -89.35, 78.27, 237.62)
        }
    },
    ['bloods'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1561.57421875, -258.92938232422),
                vector2(-1570.8947753906, -251.82069396973),
                vector2(-1551.2045898438, -228.21676635742),
                vector2(-1542.4022216797, -237.98452758789)
            },
            ['minZ'] = 10.50,
            ['maxZ'] = 80.00
        },
        label = 'Bloods Parking',
        showBlip = false,
        blipcoords = vector3(888.47, -37.44, 78.76),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1566.66, -252.32, 47.85, 234),
            vector4(-1564.74, -249.33, 47.86, 233),
            vector4(-1562.01, -246.14, 47.85, 232),
            vector4(-1559.82, -243.03, 47.85, 231),
            vector4(-1557.52, -240.21, 47.85, 228),
            vector4(-1555.02, -237.08, 47.85, 223)
        }
    },
    -- ['leigonsquarealley'] = {
    --     ['Zone'] = {
    --         ['Shape'] = {
    --             vector2(69.414520263672, -849.34320068359),
    --             vector2(59.563220977783, -876.13598632812),
    --             vector2(53.812015533447, -873.94421386719),
    --             vector2(52.552845001221, -876.92974853516),
    --             vector2(58.53719329834, -879.25579833984),
    --             vector2(49.19457244873, -904.89520263672),
    --             vector2(12.526390075684, -891.47192382812),
    --             vector2(32.711112976074, -835.94616699219),
    --             vector2(43.370277404785, -840.03533935547),
    --             vector2(41.773113250732, -844.49047851562),
    --             vector2(44.550273895264, -845.6552734375),
    --             vector2(46.358081817627, -841.06768798828)
    --         },
    --         ['minZ'] = 29.0,
    --         ['maxZ'] = 31.10
    --     },
    --     label = 'Legion Alley Parking',
    --     showBlip = true,
    --     blipcoords = vector3(52.41, -874.53, 30.42),
    --     blipName = 'Public Parking',
    --     blipNumber = 357,
    --     type = 'public',
    --     vehicleCategories = {'car', 'motorcycle', 'other'},
    --     drawText = 'Parking',
    --     debug = false,
    --     ['ParkingSpots'] = {
    --         vector4(19.23, -880.71, 29.8, 341.54),
    --         vector4(22.45, -882.16, 29.79, 340.09),
    --         vector4(25.93, -883.46, 29.79, 343.72),
    --         vector4(37.8, -887.64, 29.77, 160.81),
    --         vector4(40.91, -889.25, 29.75, 160.21),
    --         vector4(44.33, -890.22, 29.75, 159.58),
    --         vector4(48.14, -890.77, 29.75, 161.49),
    --         vector4(51.0, -892.1, 29.74, 158.87),
    --         vector4(52.71, -887.68, 29.81, 158.88),
    --         vector4(49.66, -885.99, 29.83, 161.45),
    --         vector4(45.81, -885.22, 29.83, 161.8),
    --         vector4(42.78, -884.27, 29.83, 161.42),
    --         vector4(39.63, -883.03, 29.84, 159.02),
    --         vector4(27.5, -878.27, 29.87, 160.31),
    --         vector4(24.28, -877.02, 29.88, 158.81),
    --         vector4(20.96, -876.17, 29.88, 157.99),
    --         vector4(25.15, -864.12, 30.08, 161.27),
    --         vector4(28.23, -865.24, 30.07, 158.11),
    --         vector4(32.0, -866.64, 30.06, 158.96),
    --         vector4(44.22, -870.05, 30.05, 159.97),
    --         vector4(47.29, -872.04, 30.03, 160.4),
    --         vector4(50.56, -873.75, 30.01, 158.52),
    --         vector4(60.1, -866.79, 30.13, 159.36),
    --         vector4(56.83, -865.6, 30.14, 161.35),
    --         vector4(53.77, -864.08, 30.16, 158.58),
    --         vector4(50.79, -863.1, 30.16, 159.63),
    --         vector4(47.46, -861.17, 30.18, 160.06),
    --         vector4(35.2, -857.05, 30.21, 160.46),
    --         vector4(31.39, -855.98, 30.22, 163.34),
    --         vector4(28.65, -854.67, 30.24, 156.84),
    --         vector4(34.44, -839.08, 30.49, 161.56),
    --         vector4(37.43, -840.18, 30.48, 159.6),
    --         vector4(41.04, -841.14, 30.47, 157.63),
    --         vector4(53.89, -846.47, 30.42, 159.93),
    --         vector4(56.93, -847.64, 30.41, 162.76),
    --         vector4(60.37, -848.47, 30.41, 161.79),
    --         vector4(63.44, -850.18, 30.39, 157.81),
    --         vector4(236.68, -795.08, 30.08, 66.13),
    --         vector4(233.41, -774.07, 30.31, 248.68)
    --     }
    -- },
    ['motelgarage'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(266.04238891602, -348.67025756836),
                vector2(285.89639282227, -356.23840332031),
                vector2(287.69180297852, -351.80249023438),
                vector2(294.92953491211, -354.30316162109),
                vector2(304.30255126953, -329.3703918457),
                vector2(268.12475585938, -316.15463256836),
                vector2(261.09896850586, -334.95642089844),
                vector2(268.07708740234, -337.50454711914),
                vector2(266.080078125, -343.24353027344),
                vector2(267.49453735352, -344.12811279297)
            },
            ['minZ'] = 43.5,  -- min height of the parking zone
            ['maxZ'] = 47.15,  -- max height of the parking zone
        },
        label = "Motel Parking",
        showBlip = true,
        blipcoords = vector3(273.43, -343.99, 44.91),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                -- public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},                --car, air, sea
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(277.62, -340.01, 44.5, 70.08),
            vector4(284.0, -342.32, 44.5, 70.09),
            vector4(278.33, -336.51, 44.49, 70.34),
            vector4(284.94, -338.87, 44.5, 70.28),
            vector4(285.3, -335.65, 44.5, 70.49),
            vector4(286.94, -332.56, 44.5, 67.79),
            vector4(288.56, -329.41, 44.5, 69.87),
            vector4(289.54, -325.98, 44.5, 70.81),
            vector4(300.23, -330.3, 44.5, 69.25),
            vector4(298.52, -333.09, 44.5, 69.25),
            vector4(298.66, -337.07, 44.5, 67.98),
            vector4(297.0, -340.11, 44.49, 69.9),
            vector4(296.05, -342.85, 44.49, 68.75),
            vector4(294.61, -346.22, 44.5, 67.07),
            vector4(292.54, -349.49, 44.52, 68.4),
            vector4(268.42, -325.58, 44.5, 249.47),
            vector4(267.58, -329.12, 44.49, 247.62),
            vector4(266.03, -332.22, 44.5, 247.32),
            vector4(271.12, -319.16, 44.5, 67.31),
            vector4(283.0, -323.71, 44.5, 73.83),
            vector4(281.99, -326.86, 44.5, 69.26),
            vector4(281.1, -330.43, 44.49, 71.55),
            vector4(279.59, -333.68, 44.5, 71.98),
            vector4(269.97, -322.62, 44.5, 248.07)
        }
    },
    ['sapcounsel'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-362.48254394531, -793.2802734375),
                vector2(-362.46408081055, -730.71594238281),
                vector2(-360.078125, -727.29187011719),
                vector2(-359.91299438477, -726.02014160156),
                vector2(-355.41589355469, -725.94165039062),
                vector2(-347.00802612305, -729.64282226562),
                vector2(-312.21273803711, -742.18682861328),
                vector2(-310.43478393555, -737.13165283203),
                vector2(-266.06091308594, -753.01647949219),
                vector2(-275.53680419922, -777.63562011719),
                vector2(-284.21676635742, -774.40985107422),
                vector2(-285.57073974609, -778.85809326172),
                vector2(-287.20227050781, -778.1279296875),
                vector2(-289.10836791992, -783.76214599609),
                vector2(-319.63018798828, -772.48706054688),
                vector2(-335.69149780273, -786.58020019531),
                vector2(-345.55349731445, -791.60711669922)
            },
            ['minZ'] = 33.00,  -- min height of the parking zone
            ['maxZ'] = 37.60,  -- max height of the parking zone
        },
        label = "Red Garage Parking",
        showBlip = true,
        blipcoords = vector3(-330.01, -780.33, 33.96),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false,                 --car, air, sea
        ['ParkingSpots'] = {
            vector4(-356.89, -749.29, 33.54, 270.15),
            vector4(-356.83, -753.66, 33.54, 269.64),
            vector4(-357.22, -756.74, 33.54, 269.93),
            vector4(-357.17, -760.01, 33.54, 269.71),
            vector4(-357.4, -764.54, 33.54, 268.82),
            vector4(-357.14, -767.51, 33.54, 269.67),
            vector4(-357.09, -770.59, 33.54, 271.03),
            vector4(-357.09, -776.02, 33.54, 267.95),
            vector4(-292.62, -763.17, 33.54, 160.52),
            vector4(-357.37, -746.23, 33.54, 269.64),
            vector4(-292.62, -763.17, 33.54, 160.52),
            vector4(-289.82, -764.25, 33.54, 160.83),
            vector4(-292.62, -763.17, 33.54, 160.52),
            vector4(-295.59, -762.4, 33.54, 160.93),
            vector4(-298.43, -761.45, 33.54, 159.95),
            vector4(-302.41, -760.02, 33.54, 161.24),
            vector4(-305.16, -758.37, 33.54, 158.98),
            vector4(-308.23, -757.98, 33.54, 160.64),
            vector4(-311.14, -757.03, 33.54, 158.78),
            vector4(-315.09, -755.34, 33.54, 157.34),
            vector4(-317.51, -753.39, 33.54, 160.53),
            vector4(-320.45, -752.5, 33.55, 161.44),
            vector4(-323.24, -751.76, 33.54, 158.57),
            vector4(-329.02, -750.3, 33.54, 179.15),
            vector4(-331.75, -750.26, 33.54, 179.53),
            vector4(-334.52, -750.73, 33.54, 181.13),
            vector4(-337.46, -751.25, 33.54, 183.02),
            vector4(-342.14, -749.82, 33.55, 272.39),
            vector4(-341.94, -753.53, 33.55, 94.28),
            vector4(-341.97, -756.82, 33.55, 90.65),
            vector4(-342.23, -760.49, 33.55, 88.42),
            vector4(-341.84, -764.1, 33.55, 89.13),
            vector4(-341.93, -767.36, 33.55, 91.18),
            vector4(-357.3, -732.9, 33.54, 270.41),
            vector4(-357.24, -737.63, 33.55, 269.9),
            vector4(-357.33, -743.24, 33.54, 270.89),
            vector4(-295.82, -778.26, 33.54, 342.22),
            vector4(-299.37, -776.74, 33.54, 342.64),
            vector4(-307.47, -773.5, 33.54, 340.32),
            vector4(-303.19, -775.79, 33.54, 339.27),
            vector4(-310.37, -772.78, 33.54, 339.1),
            vector4(-313.07, -771.64, 33.54, 338.38),
            vector4(-315.73, -770.26, 33.54, 339.87),
            vector4(-273.07, -761.54, 33.54, 69.58),
            vector4(-273.81, -765.05, 33.54, 71.99),
            vector4(-276.05, -771.7, 33.54, 68.27),
            vector4(-277.3, -775.37, 33.54, 70.28),
            vector4(-277.07, -751.83, 33.54, 160.8),
            vector4(-279.97, -750.75, 33.54, 160.08),
            vector4(-284.28, -748.9, 33.54, 159.2),
            vector4(-287.28, -748.29, 33.54, 160.63),
            vector4(-290.22, -747.64, 33.54, 159.94),
            vector4(-292.89, -746.25, 33.54, 160.17),
            vector4(-297.03, -744.69, 33.54, 159.37),
            vector4(-299.71, -743.7, 33.54, 159.26),
            vector4(-302.62, -742.8, 33.54, 159.48),
            vector4(-275.18, -768.22, 33.54, 71.26)
        }
    },
    ['northrockford'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-1135.1311035156, -778.41644287109),
                vector2(-1114.7188720703, -761.08288574219),
                vector2(-1142.3354492188, -729.19293212891),
                vector2(-1161.1352539062, -745.50402832031)
            },
            ['minZ'] = 17.69,  -- min height of the parking zone
            ['maxZ'] = 20.61,  -- max height of the parking zone
        },
        label = "North Rockford Parking",
        showBlip = true,
        blipcoords = vector3(-1160.86, -741.41, 19.63),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1144.92, -745.32, 19.69, 105.6),
            vector4(-1143.46, -748.47, 19.51, 111.41),
            vector4(-1140.84, -751.4, 19.37, 112.09),
            vector4(-1138.4, -754.54, 19.21, 112.51),
            vector4(-1135.45, -757.27, 19.08, 109.69),
            vector4(-1133.38, -760.28, 18.91, 112.11),
            vector4(-1130.78, -763.25, 18.76, 111.18),
            vector4(-1128.38, -758.73, 19.13, 286.83),
            vector4(-1130.16, -755.67, 19.29, 291.44),
            vector4(-1132.5, -752.58, 19.45, 289.94),
            vector4(-1135.36, -749.6, 19.59, 287.4),
            vector4(-1137.97, -746.77, 19.71, 287.88),
            vector4(-1140.21, -743.83, 19.85, 289.91),
            vector4(-1142.87, -740.91, 20.01, 289.42),
        }
    },
    ['spanishave'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(76.188446044922, 7.9120540618896),
                vector2(81.977760314941, 23.525623321533),
                vector2(55.219917297363, 32.982769012451),
                vector2(49.228351593018, 16.684007644653),
                vector2(68.127639770508, 9.6578321456909),
                vector2(68.597557067871, 10.655039787292)
            },
            ['minZ'] = 68.00,  -- min height of the parking zone
            ['maxZ'] = 70.45,  -- max height of the parking zone
        },
        label = "Spanish Ave Parking",
        showBlip = true,
        blipcoords = vector3(69.84, 12.6, 68.96),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(54.49, 19.49, 69.14, 339.68),
            vector4(57.48, 17.98, 68.92, 340.13),
            vector4(60.49, 16.99, 68.8, 338.05),
            vector4(64.03, 16.28, 68.75, 337.71),
        }
    },
    ['caears242'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-480.87042236328, -819.84265136719),
                vector2(-441.08392333984, -820.39178466797),
                vector2(-440.29922485352, -795.61010742188),
                vector2(-450.12713623047, -795.83892822266),
                vector2(-450.57876586914, -792.54748535156),
                vector2(-480.38143920898, -792.79217529297)
            },
            ['minZ'] = 29.47,  -- min height of the parking zone
            ['maxZ'] = 32.82,  -- max height of the parking zone
        },
        label = "Caesar 24h Parking",
        showBlip = true,
        blipcoords = vector3(-475.31, -818.73, 30.46),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(-477.62, -816.44, 30.05, 271.2),
            vector4(-477.28, -813.29, 30.1, 265.04),
            vector4(-477.3, -809.77, 30.12, 268.93),
            vector4(-477.37, -806.7, 30.12, 271.51),
            vector4(-477.45, -803.55, 30.12, 268.73),
            vector4(-477.12, -800.59, 30.12, 270.28),
            vector4(-476.98, -796.99, 30.12, 269.26),
            vector4(-476.98, -796.99, 30.12, 269.26),
            vector4(-476.99, -794.09, 30.13, 268.72),
            vector4(-459.54, -797.15, 30.12, 267.11),
            vector4(-460.45, -800.21, 30.12, 270.89),
            vector4(-460.18, -803.33, 30.11, 269.85),
            vector4(-460.74, -809.84, 30.11, 270.31),
            vector4(-460.21, -813.14, 30.13, 271.44),
            vector4(-460.21, -816.42, 30.16, 269.02),
            vector4(-444.8, -797.5, 30.12, 90.73),
            vector4(-444.33, -801.16, 30.12, 92.51),
            vector4(-444.6, -804.72, 30.11, 90.88),
            vector4(-444.63, -808.75, 30.11, 89.24),
            vector4(-443.84, -812.02, 30.13, 87.33),
            vector4(-444.21, -816.02, 30.24, 89.21),
            vector4(-460.34, -806.46, 30.11, 267.68),
            vector4(-466.14, -816.36, 30.11, 88.66),
            vector4(-466.18, -812.98, 30.11, 88.96),
            vector4(-466.22, -809.72, 30.11, 89.54),
            vector4(-467.38, -806.99, 30.11, 89.36),
            vector4(-466.99, -803.3, 30.12, 85.98),
            vector4(-466.81, -800.55, 30.12, 89.29),
            vector4(-466.41, -797.08, 30.12, 88.09),
            vector4(-460.34, -806.46, 30.11, 267.68),
        }
    },
    ['lagunapi'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(358.69207763672, 302.30017089844),
                vector2(351.44546508789, 277.92486572266),
                vector2(355.01831054688, 277.03842163086),
                vector2(353.3766784668, 270.50997924805),
                vector2(387.72875976562, 257.78961181641),
                vector2(399.73132324219, 290.71780395508),
                vector2(364.49926757812, 300.54202270508),
                vector2(362.70568847656, 295.12139892578),
                vector2(359.67681884766, 296.56146240234),
                vector2(361.49871826172, 301.58950805664)
            },
            ['minZ'] = 102.00,  -- min height of the parking zone
            ['maxZ'] = 105.89,  -- max height of the parking zone
        },
        label = "Laguna Parking",
        showBlip = true,
        blipcoords = vector3(364.37, 297.83, 103.49),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(359.53, 270.99, 102.65, 341.37),
            vector4(363.59, 269.88, 102.64, 341.77),
            vector4(368.05, 267.75, 102.62, 337.77),
            vector4(371.2, 266.77, 102.6, 340.94),
            vector4(375.32, 265.38, 102.59, 339.29),
            vector4(379.12, 264.74, 102.59, 337.98),
            vector4(388.53, 269.67, 102.58, 68.7),
            vector4(389.17, 272.93, 102.58, 72.26),
            vector4(391.11, 276.63, 102.57, 69.67),
            vector4(392.57, 280.58, 102.57, 70.77),
            vector4(393.81, 283.91, 102.55, 71.82),
            vector4(390.92, 290.55, 102.58, 163.29),
            vector4(386.89, 291.62, 102.63, 162.58),
            vector4(383.07, 292.87, 102.69, 164.08),
            vector4(379.23, 293.87, 102.77, 162.43),
            vector4(374.93, 294.49, 102.85, 162.54),
            vector4(375.86, 274.26, 102.65, 157.86),
            vector4(371.94, 275.54, 102.71, 158.54),
            vector4(368.03, 277.26, 102.77, 156.9),
            vector4(378.84, 281.93, 102.68, 336.98),
            vector4(375.05, 283.0, 102.75, 339.72),
            vector4(370.91, 284.66, 102.83, 337.04),
            vector4(361.12, 293.52, 103.08, 251.69),
            vector4(359.6, 290.0, 103.08, 249.21),
            vector4(357.99, 286.45, 103.1, 248.69),
            vector4(356.98, 283.01, 103.0, 248.05),
        }
    },
    ['airportp'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-779.76104736328, -2023.2966308594),
                vector2(-775.14440917969, -2019.8140869141),
                vector2(-767.18334960938, -2012.3591308594),
                vector2(-760.70989990234, -2004.76171875),
                vector2(-756.01049804688, -1997.4604492188),
                vector2(-753.18353271484, -1990.4525146484),
                vector2(-751.64544677734, -1983.7036132812),
                vector2(-748.98046875, -1969.5380859375),
                vector2(-748.11468505859, -1967.5456542969),
                vector2(-746.72650146484, -1965.5721435547),
                vector2(-744.23596191406, -1963.4608154297),
                vector2(-739.22473144531, -1961.9007568359),
                vector2(-733.59368896484, -1962.0502929688),
                vector2(-729.30279541016, -1963.3483886719),
                vector2(-727.666015625, -1964.8414306641),
                vector2(-725.72021484375, -1966.9916992188),
                vector2(-714.04919433594, -2019.2927246094),
                vector2(-710.76025390625, -2032.8103027344),
                vector2(-707.01336669922, -2040.8115234375),
                vector2(-704.6533203125, -2044.3029785156),
                vector2(-703.19024658203, -2045.3291015625),
                vector2(-701.63171386719, -2045.6253662109),
                vector2(-699.74157714844, -2045.2917480469),
                vector2(-687.05395507812, -2039.5653076172),
                vector2(-685.76708984375, -2038.6518554688),
                vector2(-684.13092041016, -2036.3044433594),
                vector2(-672.29400634766, -2041.8348388672),
                vector2(-670.67193603516, -2043.4077148438),
                vector2(-665.39947509766, -2046.6591796875),
                vector2(-657.96466064453, -2048.1787109375),
                vector2(-655.55963134766, -2048.3508300781),
                vector2(-651.94177246094, -2047.6011962891),
                vector2(-649.02130126953, -2046.1932373047),
                vector2(-633.71252441406, -2030.9672851562),
                vector2(-631.34783935547, -2030.0726318359),
                vector2(-628.30303955078, -2030.5014648438),
                vector2(-616.89349365234, -2042.3790283203),
                vector2(-616.16394042969, -2045.1605224609),
                vector2(-617.02777099609, -2047.9118652344),
                vector2(-648.34002685547, -2079.3305664062),
                vector2(-652.69281005859, -2082.1706542969),
                vector2(-658.36376953125, -2083.3293457031),
                vector2(-671.02252197266, -2082.0708007812),
                vector2(-676.02673339844, -2082.1984863281),
                vector2(-684.85815429688, -2084.7019042969),
                vector2(-695.00408935547, -2087.8937988281),
                vector2(-701.19207763672, -2088.712890625),
                vector2(-703.89630126953, -2088.4221191406),
                vector2(-708.56176757812, -2085.2458496094),
                vector2(-713.30065917969, -2087.1435546875),
                vector2(-718.29937744141, -2082.3813476562),
                vector2(-724.05651855469, -2078.2341308594),
                vector2(-736.53204345703, -2071.5529785156),
                vector2(-746.24493408203, -2067.9118652344),
                vector2(-751.45703125, -2073.4653320312),
                vector2(-787.72106933594, -2037.2147216797)
            },
            ['minZ'] = 8.85,  -- min height of the parking zone
            ['maxZ'] = 10.10,  -- max height of the parking zone
        },
        label = "Airport Parking",
        showBlip = true,
        blipcoords = vector3(-796.86, -2024.85, 8.88),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false
    },
    ['beachp'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-1177.4599609375, -1504.8297119141),
                vector2(-1170.6567382812, -1500.1866455078),
                vector2(-1167.892578125, -1496.4272460938),
                vector2(-1167.0075683594, -1491.4938964844),
                vector2(-1168.083984375, -1487.3162841797),
                vector2(-1184.8902587891, -1461.9444580078),
                vector2(-1203.3045654297, -1475.2700195312),
                vector2(-1202.2609863281, -1476.640625),
                vector2(-1208.1496582031, -1480.9470214844),
                vector2(-1207.1524658203, -1483.8693847656),
                vector2(-1207.7424316406, -1485.8941650391),
                vector2(-1188.0931396484, -1513.3830566406),
                vector2(-1185.7036132812, -1511.7416992188),
                vector2(-1187.1550292969, -1509.7088623047),
                vector2(-1183.7425537109, -1507.1494140625),
                vector2(-1182.2048339844, -1508.9814453125)
            },
            ['minZ'] = 3.20,  -- min height of the parking zone
            ['maxZ'] = 6.53,  -- max height of the parking zone
        },
        label = "Beach Parking",
        showBlip = true,
        blipcoords = vector3(-1183.1, -1511.11, 4.36),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false
    },
    ["themotorhotel"] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(1140.2746582031, 2644.5261230469),
                vector2(1108.8831787109, 2644.2172851562),
                vector2(1108.5783691406, 2660.1645507812),
                vector2(1089.9521484375, 2660.1198730469),
                vector2(1091.3571777344, 2677.4743652344),
                vector2(1133.5280761719, 2674.8422851562),
                vector2(1133.7532958984, 2658.8393554688),
                vector2(1140.4176025391, 2658.8898925781)
            },
            ['minZ'] = 36.78,  -- min height of the parking zone
            ['maxZ'] = 39.74,  -- max height of the parking zone
        },
        label = "Route 68 Parking",
        showBlip = true,
        blipcoords = vector3(1137.77, 2663.54, 37.9),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false
    },
    ['liqourparking'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(934.54669189453, 3604.5546875),
                vector2(954.29815673828, 3604.1672363281),
                vector2(954.35180664062, 3626.7893066406),
                vector2(934.75305175781, 3626.3806152344)
            },
            ['minZ'] = 31.5,  -- min height of the parking zone
            ['maxZ'] = 35.99,  -- max height of the parking zone
        },
        label = "Liquor Parking",
        showBlip = true,
        blipcoords = vector3(934.95, 3606.59, 32.81),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false
    },
    ['haanparking'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(67.230964660645, 6414.7719726562),
                vector2(53.828144073486, 6401.8227539062),
                vector2(59.075645446777, 6396.736328125),
                vector2(57.678955078125, 6394.4799804688),
                vector2(55.321895599365, 6393.0532226562),
                vector2(49.954971313477, 6398.6840820312),
                vector2(32.203670501709, 6380.2915039062),
                vector2(36.029750823975, 6376.328125),
                vector2(33.88489151001, 6373.9545898438),
                vector2(31.614000320435, 6372.1850585938),
                vector2(27.5251121521, 6376.2802734375),
                vector2(3.0867385864258, 6350.3901367188),
                vector2(7.4540538787842, 6345.6538085938),
                vector2(6.2227344512939, 6343.2216796875),
                vector2(3.7218370437622, 6341.9638671875),
                vector2(-0.76969349384308, 6346.2749023438),
                vector2(-22.776170730591, 6325.3828125),
                vector2(-24.351142883301, 6322.0849609375),
                vector2(-23.452659606934, 6319.2861328125),
                vector2(-12.439478874207, 6304.8647460938),
                vector2(-10.365778923035, 6304.6127929688),
                vector2(5.0310492515564, 6313.4970703125),
                vector2(5.2357106208801, 6314.859375),
                vector2(41.809215545654, 6335.396484375),
                vector2(42.73751449585, 6334.2446289062),
                vector2(71.22339630127, 6349.8232421875),
                vector2(68.208351135254, 6355.2939453125),
                vector2(117.06902313232, 6378.890625)
            },
            ['minZ'] = 30.00,  -- min height of the parking zone
            ['maxZ'] = 33.38,  -- max height of the parking zone
        },
        label = "Bell Farms Parking",
        showBlip = true,
        blipcoords = vector3(78.34, 6418.74, 31.28),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',                 --car, air, sea
        debug = false
    },
    ['legionsquare'] = {
         ['Zone'] = {
             ['Shape'] = { --polygon that surrounds the parking area
                 vector2(239.88751220703, -820.52038574219),
                 vector2(252.71513366699, -784.91027832031),
                 vector2(258.39483642578, -786.82489013672),
                 vector2(264.27755737305, -769.99841308594),
                 vector2(218.69738769531, -754.69787597656),
                 vector2(200.07238769531, -805.74285888672)
             },
             ['minZ'] = 29.07,  -- min height of the parking zone
             ['maxZ'] = 40.0,  -- max height of the parking zone
         },
         label = "Legion Square Parking",
         showBlip = true,
         blipcoords = vector3(215.9499, -809.698, 30.731),
         blipName = "Public Parking",
         blipNumber = 357,
         type = 'public',                --public, job, gang, depot
         vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
         drawText = 'Parking',                 --car, air, sea
         debug = false,
         ['ParkingSpots'] = {
             vector4(219.38, -765.95, 30.41, 247.04),
             vector4(218.07, -768.47, 30.41, 248.86),
             vector4(216.93, -770.89, 30.42, 249.93),
             vector4(216.35, -773.48, 30.43, 249.43),
             vector4(215.02, -775.62, 30.44, 252.59),
             vector4(214.22, -778.6, 30.45, 247.99),
             vector4(213.67, -780.92, 30.45, 248.98),
             vector4(212.9, -783.52, 30.46, 249.01),
             vector4(210.97, -785.75, 30.5, 250.38),
             vector4(210.35, -788.41, 30.51, 249.85),
             vector4(209.74, -790.91, 30.51, 248.14),
             vector4(209.21, -793.47, 30.52, 249.87),
             vector4(207.96, -795.82, 30.55, 248.81),
             vector4(206.91, -798.68, 30.57, 248.97),
             vector4(205.45, -800.74, 30.6, 249.38),
             vector4(234.07, -771.23, 30.33, 249.64),
             vector4(232.09, -776.31, 30.3, 248.31),
             vector4(230.94, -778.87, 30.29, 248.97),
             vector4(230.7, -781.41, 30.28, 250.6),
             vector4(229.02, -783.81, 30.28, 250.06),
             vector4(227.64, -789.2, 30.26, 247.99),
             vector4(226.28, -791.42, 30.26, 248.95),
             vector4(225.72, -794.21, 30.24, 249.28),
             vector4(224.66, -796.59, 30.24, 247.01),
             vector4(223.2, -798.92, 30.25, 248.79),
             vector4(222.61, -801.4, 30.25, 248.1),
             vector4(221.77, -804.1, 30.26, 245.92),
             vector4(221.6, -806.74, 30.25, 247.77),
             vector4(219.83, -808.89, 30.26, 251.3),
             vector4(228.63, -768.88, 30.36, 69.31),
             vector4(227.76, -771.74, 30.35, 71.5),
             vector4(226.39, -773.88, 30.35, 68.62),
             vector4(225.43, -776.69, 30.35, 69.02),
             vector4(224.35, -778.81, 30.34, 64.93),
             vector4(224.25, -781.78, 30.33, 70.11),
             vector4(222.81, -784.16, 30.34, 72.1),
             vector4(221.16, -786.48, 30.35, 68.66),
             vector4(221.04, -789.3, 30.34, 68.07),
             vector4(219.76, -791.48, 30.34, 70.29),
             vector4(218.97, -794.38, 30.34, 68.04),
             vector4(218.34, -796.97, 30.34, 66.59),
             vector4(217.56, -799.45, 30.35, 69.51),
             vector4(216.23, -801.69, 30.37, 70.17),
             vector4(215.69, -804.56, 30.38, 68.56),
             vector4(228.66, -786.48, 30.27, 248.6),
             vector4(233.41, -774.07, 30.31, 248.68),
             vector4(236.32, -812.55, 29.88, 248.26),
             vector4(237.41, -809.93, 29.89, 244.26),
             vector4(238.45, -807.4, 29.9, 244.04),
             vector4(238.94, -804.82, 29.93, 248.53),
             vector4(240.36, -802.39, 29.94, 246.63),
             vector4(241.52, -799.87, 29.96, 245.68),
             vector4(242.03, -797.37, 29.98, 246.08),
             vector4(243.06, -794.79, 30.01, 249.35),
             vector4(244.27, -792.42, 30.03, 247.07),
             vector4(245.14, -789.87, 30.06, 247.13),
             vector4(246.18, -787.38, 30.08, 248.58),
             vector4(246.61, -784.52, 30.12, 248.32),
             vector4(248.17, -782.46, 30.14, 248.95),
             vector4(249.12, -779.63, 30.18, 249.01),
             vector4(249.32, -776.78, 30.22, 247.42),
             vector4(250.19, -774.3, 30.26, 248.86),
             vector4(244.75, -772.24, 30.29, 69.17),
             vector4(228.66, -786.48, 30.27, 248.6),
             vector4(233.41, -774.07, 30.31, 248.68),
             vector4(231.42, -810.44, 30.01, 70.18),
             vector4(231.62, -807.79, 30.03, 68.27),
             vector4(232.96, -805.51, 30.02, 66.62),
             vector4(234.88, -803.0, 30.02, 69.62),
             vector4(235.38, -800.43, 30.04, 68.23),
             vector4(236.58, -797.83, 30.05, 69.89),
             vector4(236.68, -795.08, 30.08, 66.13),
             vector4(237.88, -792.75, 30.08, 66.76),
             vector4(238.84, -790.11, 30.11, 68.34),
             vector4(240.15, -787.59, 30.13, 67.55),
             vector4(241.01, -785.27, 30.15, 69.84),
             vector4(244.51, -775.07, 30.26, 70.7),
             vector4(243.65, -777.69, 30.22, 67.25),
             vector4(242.44, -779.84, 30.2, 68.04),
             vector4(241.32, -782.41, 30.18, 69.19),
         }
    },
    ['impoundlot'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(410.26434326172, -1661.033203125),
            vector2(411.8918762207, -1661.5268554688),
            vector2(388.09185791016, -1641.9808349609),
            vector2(411.53439331055, -1620.2003173828),
            vector2(431.26531982422, -1633.1214599609)
            },
            ['minZ'] = 1,  -- min height of the parking zone
            ['maxZ'] = 50,  -- max height of the parking zone
            debug = false,
        },
        label = "Impound Lot",
        showBlip = true,
        blipcoords = vector3(405.94, -1626.88, 29.29),
        blipName = "Impound Lot",
        blipNumber = 68,
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Impound',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(396.3, -1644.46, 28.79, 318.91),
			vector4(398.43, -1646.58, 28.79, 319.31),
			vector4(400.71, -1648.67, 28.79, 319.33),
			vector4(403.25, -1650.56, 28.79, 320.16),
			vector4(405.54, -1652.74, 28.79, 319.84),
			vector4(407.9, -1654.8, 28.79, 319.92),
			vector4(410.58, -1656.9, 28.79, 320.2),
			vector4(418.39, -1646.38, 28.79, 49.59),
			vector4(420.99, -1641.97, 28.79, 88.61),
			vector4(421.03, -1638.86, 28.79, 89.3),
			vector4(420.88, -1635.8, 28.79, 89.22),
			vector4(419.92, -1629.3, 28.79, 140.08),
			vector4(417.3, -1627.48, 28.79, 141.37),
        }
    },
    ['impoundlotsandy'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(1898.8577880859, 3704.4916992188),
            vector2(1887.8070068359, 3698.2360839844),
            vector2(1873.6413574219, 3723.4638671875),
            vector2(1884.1998291016, 3729.7036132812)
            },
            ['minZ'] = 30,  -- min height of the parking zone
            ['maxZ'] = 40,  -- max height of the parking zone
            debug = false,
        },
        label = "Impound Lot",
        showBlip = true,
        blipcoords = vector3(1882.19, 3717.54, 32.95),
        blipName = "Impound Lot",
        blipNumber = 68,
        blipScale = 0.8,
        blipColor = 51,
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Impound',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(1894.91, 3706.33, 32.83, 118.61),
            vector4(1887.93, 3717.14, 32.85, 118.96),
            vector4(1886.26, 3720.56, 32.84, 118.14),
            vector4(1884.82, 3723.72, 32.82, 122.73),
        }
    },
    ['impoundlotpaleto'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-190.61824035645, 6225.255859375),
            vector2(-199.06578063965, 6234.8974609375),
            vector2(-234.21871948242, 6200.2133789062),
            vector2(-251.9111328125, 6217.5170898438),
            vector2(-262.44186401367, 6207.2290039062),
            vector2(-241.99014282227, 6187.724609375),
            vector2(-234.60502624512, 6181.44140625)
            },
            ['minZ'] = 30,  -- min height of the parking zone
            ['maxZ'] = 40,  -- max height of the parking zone
            debug = false,
        },
        label = "Impound Lot",
        showBlip = true,
        blipcoords = vector3(-226.75, 6207.79, 31.49),
        blipName = "Impound Lot",
        blipNumber = 68,
        blipScale = 0.8,
        blipColor = 51,
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Impound',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(-198.73, 6229.7, 31.5, 219.93),
            vector4(-200.87, 6227.01, 31.49, 219.77),
            vector4(-203.39, 6224.96, 31.49, 219.01),
            vector4(-205.88, 6222.65, 31.49, 222.59),
            vector4(-208.06, 6220.05, 31.49, 222.28),
            vector4(-238.02, 6197.1, 31.49, 135.05),
            vector4(-240.56, 6199.37, 31.49, 134.41),
            vector4(-242.98, 6201.72, 31.49, 133.85),
            vector4(-245.16, 6204.24, 31.49, 131.73),
            vector4(-247.61, 6206.48, 31.49, 132.85),
        }
    },
    ['MRPD'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(451.62829589844, -1022.2894897461),
            vector2(452.13821411133, -1027.4963378906),
            vector2(433.52856445312, -1029.8487548828),
            vector2(432.92468261719, -1024.3546142578)
            },
            ['minZ'] = 26.58,  -- min height of the parking zone
            ['maxZ'] = 30.58,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police Lot",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',              --car, air, sea
        job = "police",
        debug = false,
        ['ParkingSpots'] = {
            vector4(449.43, -1025.36, 28.59, 5),
            vector4(446.01, -1026.01, 28.65, 6),
            vector4(442.48, -1026.31, 28.72, 6),
            vector4(439.13, -1026.51, 28.78, 7),
            vector4(435.58, -1027.01, 28.84, 6)
        }
    },
    ['MRPD2'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(405.44830322266, -1012.3634033203),
            vector2(410.92233276367, -1012.4878540039),
            vector2(411.21060180664, -975.69134521484),
            vector2(406.24798583984, -975.06689453125)
            },
            ['minZ'] = 27.40,  -- min height of the parking zone
            ['maxZ'] = 32.74,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police Lot",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',              --car, air, sea
        job = "police",
        debug = false,
        ['ParkingSpots'] = {
            vector4(408.08, -997.94, 29.27, 322),
            vector4(408.12, -993.28, 29.27, 62),
            vector4(408.36, -988.79, 29.27, 59),
            vector4(408.45, -984.54, 29.27, 59),
            vector4(408.66, -980.41, 29.27, 49),  
        }
    },
    ['MRPD3'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(423.42001342773, -998.8828125),
            vector2(423.45962524414, -974.09509277344),
            vector2(427.89352416992, -974.49505615234),
            vector2(427.70947265625, -998.63763427734),
            vector2(435.22470092773, -998.43090820312),
            vector2(435.18515014648, -984.36242675781),
            vector2(448.14117431641, -984.41394042969),
            vector2(448.07562255859, -998.58111572266)
            },
            ['minZ'] = 23.70,  -- min height of the parking zone
            ['maxZ'] = 28.68,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police Lot",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',              --car, air, sea
        job = "police",
        debug = false,
        ['ParkingSpots'] = {
            vector4(425.06, -997.19, 25.70, 271),
            vector4(425.18, -994.40, 25.70, 268),
            vector4(425.31, -991.71, 25.70, 268),
            vector4(425.27, -989.04, 25.70, 267),
            vector4(425.10, -984.35, 25.70, 269),
            vector4(425.04, -981.67, 25.70, 266),
            vector4(425.16, -978.89, 25.70, 263),
            vector4(425.21, -976.22, 25.70, 269),
            vector4(437.74, -986.10, 25.70, 87),
            vector4(437.80, -988.82, 25.70, 89),
            vector4(437.76, -991.52, 25.70, 86),
            vector4(437.64, -994.19, 25.70, 85),
            vector4(437.81, -996.93, 25.70, 88),
            vector4(445.67, -997.09, 25.70, 274),
            vector4(445.75, -994.30, 25.70, 272),
            vector4(445.49, -991.56, 25.70, 271),
            vector4(445.82, -988.87, 25.70, 272),
            vector4(445.59, -986.14, 25.70, 269),
        }
    },    --[[ ['mechanic'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-321.17425537109, -166.47213745117),
                vector2(-335.71780395508, -160.89682006836),
                vector2(-330.77108764648, -147.37300109863),
                vector2(-323.12185668945, -150.04736328125),
                vector2(-322.16271972656, -148.189453125),
                vector2(-315.29968261719, -150.44552612305)
            },
            ['minZ'] = 36.15,  -- min height of the parking zone
            ['maxZ'] = 38.22,  -- max height of the parking zone
            debug = false,
        },
        label = 'LS Customs',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Parking',
        job = 'mechanic',
        debug = false
    }, ]]
    ['apartments'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-363.8267211914, -862.93182373046),
                vector2(-268.29055786132, -885.1919555664),
                vector2(-282.65710449218, -925.12030029296),
                vector2(-298.25598144532, -919.4287109375),
                vector2(-302.71203613282, -930.14245605468),
                vector2(-297.5908203125, -932.38952636718),
                vector2(-310.84530639648, -969.61614990234),
                vector2(-289.9221496582, -977.25311279296),
                vector2(-296.0697631836, -994.66876220704),
                vector2(-364.01559448242, -969.91552734375)
            },
            ['minZ'] = 30.0,  -- min height of the parking zone
            ['maxZ'] = 33.0,  -- max height of the parking zone

        },
        label = 'Alta Apartments',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(-297.71, -990.11, 30.76, 338.79),
            vector4(-301.09, -988.82, 30.76, 339.11),
            vector4(-304.64, -987.72, 30.76, 339.36),
            vector4(-308.09, -986.34, 30.76, 339.47),
            vector4(-311.46, -985.08, 30.76, 339.5),
            vector4(-315.07, -983.98, 30.76, 339.18),
            vector4(-318.71, -982.49, 30.76, 338.43),
            vector4(-285.76, -888.04, 30.76, 168.44),
            vector4(-289.39, -887.34, 30.76, 168.59),
            vector4(-292.99, -886.36, 30.76, 167.4),
            vector4(-296.78, -885.82, 30.75, 167.93),
            vector4(-300.35, -885.14, 30.76, 167.76),
            vector4(-303.82, -884.06, 30.76, 167.76),
            vector4(-307.59, -883.44, 30.76, 167.24),
            vector4(-311.16, -882.7, 30.76, 166.92),
            vector4(-314.74, -881.99, 30.75, 166.91),
            vector4(-318.34, -881.19, 30.75, 167.5),
            vector4(-322.02, -880.47, 30.75, 167.75),
            vector4(-325.62, -879.65, 30.75, 168.31),
            vector4(-329.11, -878.9, 30.75, 168.35),
            vector4(-332.88, -878.22, 30.75, 167.35),
            vector4(-336.55, -877.38, 30.75, 168.02),
            vector4(-340.1, -876.67, 30.75, 167.45),
            vector4(-343.78, -875.91, 30.75, 167.01),
            vector4(-352.86, -874.08, 30.75, 0.76),
            vector4(-360.26, -889.43, 30.75, 269.23),
            vector4(-360.46, -893.17, 30.75, 268.23),
            vector4(-360.24, -896.83, 30.75, 270.26),
            vector4(-360.37, -900.58, 30.75, 268.61),
            vector4(-360.29, -904.27, 30.75, 269.75),
            vector4(-360.14, -908.01, 30.75, 270.4),
            vector4(-360.5, -911.66, 30.76, 269.55),
            vector4(-360.12, -915.4, 30.76, 269.63),
            vector4(-360.28, -919.07, 30.76, 270.11),
            vector4(-360.56, -922.77, 30.75, 268.41),
            vector4(-360.46, -926.49, 30.76, 270.43),
            vector4(-360.37, -930.12, 30.76, 269.72),
            vector4(-360.22, -933.88, 30.76, 270.34),
            vector4(-360.28, -937.58, 30.76, 269.99),
            vector4(-360.47, -941.31, 30.75, 269.54),
            vector4(-360.28, -944.99, 30.76, 270.14),
            vector4(-360.32, -948.72, 30.76, 269.82),
            vector4(-360.38, -952.44, 30.75, 269.95),
            vector4(-360.57, -956.16, 30.76, 270.31),
            vector4(-322.02, -981.29, 30.76, 339.92),
            vector4(-325.56, -980.1, 30.76, 340.1),
            vector4(-329.0, -978.69, 30.76, 338.49),
            vector4(-332.49, -977.59, 30.76, 339.58),
            vector4(-335.9, -976.3, 30.76, 339.7),
            vector4(-339.43, -975.08, 30.76, 339.47),
            vector4(-342.7, -973.45, 30.76, 338.85),
            vector4(-326.58, -956.4, 30.75, 250.37),
            vector4(-325.37, -952.84, 30.76, 250.47),
            vector4(-324.03, -949.43, 30.76, 250.37),
            vector4(-322.69, -945.96, 30.75, 249.91),
            vector4(-321.47, -942.43, 30.76, 250.29),
            vector4(-320.23, -939.06, 30.76, 250.38),
            vector4(-318.8, -935.56, 30.76, 249.46),
            vector4(-317.66, -932.03, 30.76, 250.73),
            vector4(-316.5, -928.43, 30.76, 250.15),
            vector4(-345.07, -932.2, 30.76, 69.27),
            vector4(-343.99, -928.61, 30.76, 70.11),
            vector4(-342.58, -925.18, 30.76, 70.69),
            vector4(-341.39, -921.67, 30.76, 69.83),
            vector4(-327.34, -924.44, 30.76, 69.82),
            vector4(-328.81, -927.89, 30.76, 69.43),
            vector4(-330.09, -931.33, 30.76, 70.81),
            vector4(-331.29, -934.83, 30.76, 70.29),
            vector4(-332.71, -938.34, 30.76, 69.75),
            vector4(-333.91, -941.81, 30.76, 69.46),
            vector4(-335.02, -945.3, 30.75, 71.24),
            vector4(-336.56, -948.74, 30.75, 70.65),
            vector4(-337.69, -952.22, 30.76, 70.31),
            vector4(-340.74, -902.45, 30.75, 167.89),
            vector4(-337.18, -903.24, 30.75, 167.65),
            vector4(-333.64, -903.98, 30.75, 167.05),
            vector4(-329.93, -904.61, 30.75, 167.95),
            vector4(-326.38, -905.62, 30.75, 168.51),
            vector4(-322.65, -906.2, 30.75, 167.96),
            vector4(-318.98, -906.94, 30.75, 168.06),
            vector4(-315.39, -907.89, 30.75, 166.81),
            vector4(-311.81, -908.81, 30.75, 167.5),
            vector4(-308.14, -909.33, 30.75, 167.34),
            vector4(-285.56, -921.9, 30.76, 70.14),
            vector4(-283.75, -918.52, 30.76, 70.23),
            vector4(-282.97, -914.81, 30.75, 69.93),
            vector4(-281.65, -911.4, 30.76, 69.49),
            vector4(-280.5, -908.04, 30.76, 69.51),
            vector4(-279.28, -904.45, 30.76, 70.18),
            vector4(-302.07, -933.44, 30.75, 69.9),
            vector4(-303.19, -937.09, 30.76, 70.71),
            vector4(-304.56, -940.34, 30.76, 70.04),
            vector4(-305.74, -943.95, 30.76, 70.49),
            vector4(-307.19, -947.34, 30.76, 69.04),
            vector4(-308.26, -950.95, 30.76, 70.24),
            vector4(-309.63, -954.35, 30.76, 68.9),
            vector4(-310.83, -957.88, 30.76, 69.56),
            vector4(-312.07, -961.38, 30.76, 70.21),
            vector4(-313.39, -964.8, 30.76, 68.92),
            vector4(-298.26, -899.82, 30.66, 346.23),
            vector4(-302.47, -898.86, 30.66, 348.7),
            vector4(-305.9, -898.52, 30.66, 351.35),
            vector4(-309.58, -897.38, 30.66, 347.24),
            vector4(-313.04, -896.37, 30.65, 349.98),
            vector4(-316.74, -895.46, 30.65, 347.83),
            vector4(-320.36, -894.95, 30.65, 348.97),
            vector4(-324.05, -893.86, 30.65, 348.71),
            vector4(-327.67, -893.18, 30.65, 347.61),
            vector4(-331.02, -892.69, 30.65, 346.03),
            vector4(-334.83, -891.72, 30.65, 350.2),
            vector4(-338.6, -891.08, 30.65, 348.34),
        },
        debug = false

    },
    ['cityhall'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-475.55926513672, -222.67430114746),
            vector2(-472.03475952148, -220.5464630127),
            vector2(-498.85870361328, -173.8444366455),
            vector2(-502.67169189454, -175.96449279786),
            },
            ['minZ'] = 35.0,  -- min height of the parking zone
            ['maxZ'] = 39.0,  -- max height of the parking zone
        },
        label = 'City Hall Parking',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(-475.26, -219.26, 36.05, 30.12),
            vector4(-478.26, -214.06, 36.21, 30.11),
            vector4(-481.41, -208.59, 36.37, 30.32),
            vector4(-484.34, -203.49, 36.52, 30.67),
            vector4(-487.17, -198.51, 36.67, 30.37),
            vector4(-490.26, -193.18, 36.83, 29.72),
            vector4(-493.21, -187.98, 36.99, 29.64),
            vector4(-496.19, -182.75, 37.14, 29.96),
            vector4(-499.21, -177.5, 37.3, 30.1),
        },
        debug = false
    },
    ['ottosgarage'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(534.79803466797, -154.7064666748),
            vector2(534.48364257812, -148.2652130127),
            vector2(551.95147705078, -148.29214477539),
            vector2(555.01519775391, -154.63771057129),
            },
            ['minZ'] = 54.485889434814,  -- min height of the parking zone
            ['maxZ'] = 54.485889434814,  -- max height of the parking zone
        },
        label = 'Ottos Garage',
        type = 'job',
        job = "ottos",
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(541.33, -151.68, 54.49, 357.91),
        },
        debug = false
    },
    ['helipad'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-757.8896484375, -1469.876953125),
                vector2(-744.54223632812, -1480.4110107422),
                vector2(-733.07989501954, -1467.4460449218),
                vector2(-746.4605102539, -1456.0607910156)
            },
            ['minZ'] = 4.0,  -- min height of the parking zone
            ['maxZ'] = 8.0,  -- max height of the parking zone
        },
        label = 'Helipad',
        type = 'public',
        vehicleCategories = {'helicopter'},
        drawText = 'Helipad',
        showBlip = true,
        blipName = "Helipad",
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(-745.61, -1468.57, 4.37),
        ["ParkingSpots"] = {
            vector4(-745.53, -1468.68, 5.0, 321.19)
        },
        ParkingDistance = 10.0,
        debug = false
    },
    ['shoreheli'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(1774.4047851562, 3246.9484863281),
                vector2(1762.30859375, 3244.3928222656),
                vector2(1765.3605957031, 3231.908203125),
                vector2(1777.5689697266, 3235.4580078125)
            },
            ['minZ'] = 40.0,  -- min height of the parking zone
            ['maxZ'] = 46.0,  -- max height of the parking zone
        },
        label = 'Sandy Shores Helipad',
        type = 'public',
        vehicleCategories = {'helicopter'},
        drawText = 'Sandy Shores Helipad',
        showBlip = true,
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(1769.62, 3240.14, 42.01),
        ['ParkingSpots'] = {
            vector4(1769.62, 3240.14, 42.01, 60.44),
        },
        ParkingDistance = 100.0,
        debug = false
    },
    ['airdepot'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-969.49652099609, -2911.720703125),
            vector2(-1029.8336181641, -3016.7312011719),
            vector2(-953.18298339844, -3061.2072753906),
            vector2(-946.70233154297, -3045.6357421875),
            vector2(-928.18408203125, -3046.4418945312),
            vector2(-892.58721923828, -2990.6904296875)
            },
            ['minZ'] = 12.00,  -- min height of the parking zone
            ['maxZ'] = 20.0,  -- max height of the parking zone
        },
        label = 'Air Depot',
        type = 'depot',
        vehicleCategories = {'helicopter', 'plane'},
        drawText = 'AIR DEPOT',
        showBlip = true,
        blipName = 'Air Depot',
        blipNumber = 569,
        blipColor = 33,
        blipcoords = vector3(-982.19, -2996.26, 13.95),
        ParkingDistance = 200.0,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1000.32, -3014.1, 13.95, 61.43),
            vector4(-979.42, -3026.94, 13.95, 59.8),
            vector4(-966.25, -3011.87, 13.95, 60.25),
            vector4(-956.98, -2995.66, 13.95, 61.6),
            vector4(-947.73, -2979.18, 13.95, 71.79),
            vector4(-993.42, -2991.18, 13.95, 61.53),

        },
    },
    ['boathouse1'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-778.9291381836, -1513.3040771484),
                vector2(-803.83276367188, -1521.1665039062),
                vector2(-816.67852783204, -1493.2373046875),
                vector2(-791.34436035156, -1481.7546386718)
            },
            ['minZ'] = 0.00,
            ['maxZ'] = 5.00
        },
        label = 'Boat House',
        type = 'public',
        vehicleCategories = {'boat'},
        drawText = 'BOAT HOUSE',
        showBlip = true,
        blipName = 'Boat House',
        blipNumber = 427,
        blipColor = 15,
        blipcoords = vector3(-784.84, -1498.33, 0.2),
        ParkingDistance = 20.0,
        SpawnDistance = 10.0,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-798.39, -1499.15, 0.37, 109.87),
            vector4(-797.47, -1506.73, 0.3, 114.49),
        },
        ExitWarpLocations = {
            vector3(-807.15, -1496.86, 1.6),
            vector3(-800.17, -1494.87, 1.6),
            vector3(-792.92, -1492.18, 1.6),
            vector3(-787.58, -1508.59, 1.6),
            vector3(-794.89, -1511.16, 1.6),
            vector3(-800.21, -1513.05, 1.6),
        },
    },
    ['intairport'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-1228.3253173828, -3381.5378417969),
            vector2(-1288.9855957031, -3350.71484375),
            vector2(-1308.2257080078, -3391.0551757812),
            vector2(-1263.3568115234, -3422.3171386719)
            },
            ['minZ'] = 12.00,  -- min height of the parking zone
            ['maxZ'] = 20.0,  -- max height of the parking zone
        },
        label = 'Airport Hangar',
        type = 'public',
        vehicleCategories = {'helicopter', 'plane'},
        drawText = 'Airport Hangar',
        showBlip = true,
        blipName = 'Airport Hangar',
        blipNumber = 359,
        blipColor = 50,
        blipcoords = vector3(-1275.53, -3388.03, 13.94),
        ParkingDistance = 100.0,
        SpawnDistance = 100.0,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-1272.61, -3398.95, 13.94, 5.2),
            vector4(-1288.22, -3390.56, 13.94, 327.8),
        },

    },
    ['casinohelipad'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(979.13513183594, 46.446781158447),
            vector2(964.00274658203, 56.149921417236),
            vector2(952.54992675781, 37.765121459961),
            vector2(967.52984619141, 27.968244552612)
            },
            ['minZ'] = 120.00,  -- min height of the parking zone
            ['maxZ'] = 130.0,  -- max height of the parking zone
        },
        label = 'Casino helipad',
        type = 'job',
        vehicleCategories = {'helicopter'},
        drawText = 'Employee Parking',
        job = 'casino',
        debug = false,
        ['ParkingSpots'] = {
            vector4(965.78, 42.04, 123.13, 187.77),
        },

    },

    -- innout parking
    ['innout'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(85.722755432129, 308.19931030273),
            vector2(106.84702301025, 301.58560180664),
            vector2(108.69219970703, 306.02044677734),
            vector2(89.199226379395, 313.53182983398)
            },
            ['minZ'] = 100,  -- min height of the parking zone
            ['maxZ'] = 120,  -- max height of the parking zone
        },
        label = 'InNOut',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'innout',
        debug = false,
        ['ParkingSpots'] = {
            vector4(106.43, 304.48, 109.00, 151.05),
            vector4(103.01, 306.01, 109.00, 155.85),
            vector4(99.4, 306.85, 109.00, 154.68),
            vector4(96.06, 308.63, 109.00, 155.96),
            vector4(92.38, 309.61, 109.00, 153.71)
        },
    },

    -- pizzathis parking
    ['pizzathis'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(794.48974609375, -717.10028076172),
                vector2(794.13360595703, -740.03167724609),
                vector2(812.34942626953, -739.88708496094),
                vector2(816.03448486328, -736.81909179688),
                vector2(813.89709472656, -732.25805664062),
                vector2(811.39208984375, -728.60638427734),
                vector2(809.17309570312, -725.79791259766),
                vector2(806.01989746094, -722.38946533203),
                vector2(802.59210205078, -719.45733642578),
                vector2(799.47399902344, -717.32116699219)
            },
            ['minZ'] = 20,  -- min height of the parking zone
            ['maxZ'] = 30,  -- max height of the parking zone
        },
        label = 'PizzaThis',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'pizzathis',
        debug = false,
        ['ParkingSpots'] = {
            vector4(800.85, -722.25, 28.01, 128.93),
            vector4(803.29, -724.6, 27.75, 142.32),
            vector4(805.57, -727.35, 27.63, 131.19),
            vector4(808.02, -729.74, 27.6, 127.47),
            vector4(810.14, -732.54, 27.6, 124.35)
        },
    },

    -- UWU / CAT CAFE Parking
    ['catcafe'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-569.90844726562, -1095.4113769531),
                vector2(-585.86590576172, -1095.2806396484),
                vector2(-586.11846923828, -1139.3918457031),
                vector2(-569.82049560547, -1140.0609130859)
            },
            ['minZ'] = 20,  -- min height of the parking zone
            ['maxZ'] = 30,  -- max height of the parking zone
        },
        label = 'uWu Cafe',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'catcafe',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-573.7, -1100.99, 22.18, 268.74),
            vector4(-581.68, -1100.94, 22.18, 90.1),
            vector4(-573.88, -1104.71, 22.18, 270.35),
            vector4(-581.17, -1104.51, 22.18, 87.59),
            vector4(-573.1, -1108.29, 22.18, 267.77),
            vector4(-581.71, -1108.31, 22.18, 89.22),
            vector4(-573.53, -1112.02, 22.18, 264.91),
            vector4(-581.83, -1111.9, 22.18, 87.61),
            vector4(-573.11, -1115.7, 22.18, 268.02),
            vector4(-581.74, -1115.45, 22.18, 89.5),
            vector4(-573.59, -1119.31, 22.18, 269.71),
            vector4(-581.75, -1119.34, 22.18, 92.3),
            vector4(-573.53, -1123.02, 22.18, 267.76),
            vector4(-581.74, -1123.0, 22.18, 91.96),
            vector4(-573.48, -1126.69, 22.18, 268.43),
            vector4(-582.09, -1126.64, 22.18, 90.66),
            vector4(-573.34, -1130.33, 22.18, 270.63),
            vector4(-581.71, -1130.32, 22.18, 95.32),
            vector4(-573.34, -1133.95, 22.18, 270.04),
            vector4(-581.59, -1134.05, 22.18, 90.23)
        },
    },

    -- Casino Employee Parking
    ['casino'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(907.02551269531, 43.970680236816),
                vector2(910.64923095703, 41.455337524414),
                vector2(923.26019287109, 61.754985809326),
                vector2(919.62451171875, 64.043022155762)
            },
            ['minZ'] = 70,  -- min height of the parking zone
            ['maxZ'] = 90,  -- max height of the parking zone
        },
        label = 'Nanners Casino',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'casino',
        debug = false,
        ['ParkingSpots'] = {
            vector4(910.98, 45.98, 80.9, 331.73),
            vector4(914.86, 52.27, 80.9, 324.43),
            vector4(919.07, 59.01, 80.9, 328.49)
        },
    },

    -- Syndicate's Gang Garage (inside postop)
    ['syndicate'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-310.15829467773, -1290.1267089844),
                vector2(-310.23785400391, -1285.9567871094),
                vector2(-316.53695678711, -1286.2408447266),
                vector2(-316.47180175781, -1289.8717041016)
            },
            ['minZ'] = 20,  -- min height of the parking zone
            ['maxZ'] = 40,  -- max height of the parking zone
        },
        label = 'Syndicate Garage',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Syndicate Garage',
        showBlip = false,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-313.67, -1288.0, 31.24, 89.39)
        },
    },

    -- Los Nanner's Gang Garage
    ['losnanners'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-691.09210205078, -888.17395019531),
                vector2(-699.4423828125, -887.91418457031),
                vector2(-699.03930664062, -894.9130859375),
                vector2(-691.23760986328, -894.99548339844)
            },
            ['minZ'] = 20,  -- min height of the parking zone
            ['maxZ'] = 30,  -- max height of the parking zone
        },
        label = 'Los Nanners Garage',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Los Nanners Garage',
        showBlip = false,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-695.65, -891.48, 24.58, 268.49)
        },
    },

    -- Real Estate Job Garage
    ['realestate'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(122.47434997559, -891.49829101562),
                vector2(128.38381958008, -893.65753173828),
                vector2(131.30247497559, -885.06530761719),
                vector2(125.94136047363, -883.15075683594)
            },
            ['minZ'] = 20,  -- min height of the parking zone
            ['maxZ'] = 40,  -- max height of the parking zone
        },
        label = 'Real Estate Agency',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'realestate',
        debug = false,
        ['ParkingSpots'] = {
            vector4(125.12, -887.74, 30.39, 338.4),
            vector4(128.44, -889.88, 30.36, 331.14)
        },
    },

    -- Hen House Job Garage
    ['henhouse'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-300.29638671875, 6247.0600585938),
                vector2(-304.26104736328, 6250.8403320312),
                vector2(-297.2028503418, 6257.576171875),
                vector2(-293.63095092773, 6253.89453125)
            },
            ['minZ'] = 20,  -- min height of the parking zone
            ['maxZ'] = 40,  -- max height of the parking zone
        },
        label = 'Hen House',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'henhouse',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-297.3, 6253.62, 31.47, 131.51)
        },
    },
    ['tunershop'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(159.44786071777, -3013.220703125),
            vector2(160.45550537109, -3013.1203613281),
            vector2(165.97438049316, -3013.0546875),
            vector2(169.81497192383, -3012.9765625),
            vector2(169.61262512207, -3004.6242675781),
            vector2(169.34455871582, -2984.5144042969),
            vector2(159.28149414062, -2984.8798828125)

            },
            ['minZ'] = 3.8121743202209,  -- min height of the parking zone
            ['maxZ'] = 8.0060596466064,  -- max height of the parking zone
        },
        label = 'Tuners Parking',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'tunershop',
        debug = false,
        ['ParkingSpots'] = {
            vector4(163.34, -3009.29, 5.93, 88.97),
            vector4(163.21, -3005.99, 5.94, 91.92),
            vector4(163.35, -3002.92, 5.94, 88.9),
            vector4(163.93, -2999.69, 5.92, 88.14),
            vector4(163.97, -2996.19, 5.92, 85.66),
            vector4(163.89, -2993.01, 5.92, 87.98),
            vector4(163.7, -2989.8, 5.91, 90.41)
        },
    },

    ['bennys'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-217.14135742188, -1322.8245849609),
            vector2(-216.90228271484, -1306.4990234375),
            vector2(-234.54583740234, -1306.0174560547),
            vector2(-234.81370544434, -1322.7352294922)

            },
            ['minZ'] = 17.462034225464,  -- min height of the parking zone
            ['maxZ'] = 19.462049484253,  -- max height of the parking zone
        },
        label = 'Bennys Parking',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'bennys',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-225.08, -1313.99, 18.46, 267.56)
        },
    },

    ['chuloshelipad'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-3260.84, 1735.56),
                vector2(-3250.67, 1719.83),
                vector2(-3265.15, 1708.03),
                vector2(-3276.89, 1721.96)
            },
            ['minZ'] = 40.0,  -- min height of the parking zone
            ['maxZ'] = 46.0,  -- max height of the parking zone
        },
        label = 'Chulos Helipad',
        type = 'public',
        vehicleCategories = {'helicopter'},
        drawText = 'Chulos Helipad',
        showBlip = false,
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(-3262.78, 1721.23, 44.72),
        ['ParkingSpots'] = {
            vector4(-3262.78, 1721.23, 44.72, 171.92),
        },
        ParkingDistance = 100.0,
        debug = false
    },

    ['vanilla'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(148.27685546875, -1288.1732177734),
            vector2(139.98614501953, -1272.3714599609),
            vector2(133.44207763672, -1274.966796875),
            vector2(142.95249938965, -1291.5552978516),

            },
            ['minZ'] = 28.114290237427,  -- min height of the parking zone
            ['maxZ'] = 32.370576858521,  -- max height of the parking zone
        },
        label = 'Vanilla Unicorn Parking',
        type = 'job',
        job ="vanilla",
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'vanilla',
        debug = false,
        ['ParkingSpots'] = {
            vector4(145.35, -1287.48, 29.33, 119.76),
            vector4(143.88, -1284.93, 29.33, 121.93),
            vector4(142.36, -1282.56, 29.34, 122.17),
            vector4(141.04, -1280.1, 29.33, 122.29),
            vector4(139.36, -1277.73, 29.32, 121.62),
            vector4(138.05, -1275.26, 29.3, 110.98),

        },
    },
    -- Boxing Arena Job Garage
    ['boxing'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-355.06118774414, -1910.630859375),
                vector2(-359.81280517578, -1906.6553955078),
                vector2(-370.93157958984, -1920.1712646484),
                vector2(-366.36743164062, -1923.9819335938)
            },
            ['minZ'] = 15,  -- min height of the parking zone
            ['maxZ'] = 30,  -- max height of the parking zone
        },
        label = 'Boxing Arena',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Employee Parking',
        job = 'boxing',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-360.28, -1912.32, 20.53, 47.43),
            vector4(-362.15, -1915.26, 20.53, 46.18),
            vector4(-364.81, -1917.71, 20.53, 46.92),
            vector4(-366.64, -1920.48, 20.53, 48.73)
        },
    },
    ['governmentparking'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(594.51898193359, -7.6788849830627),
                vector2(593.56256103516, -14.429060935974),
                vector2(557.41772460938, -8.2432670593262),
                vector2(558.58032226562, -1.2895703315735)
            },
            ['minZ'] = 69.90,  -- min height of the parking zone
            ['maxZ'] = 73.00,  -- max height of the parking zone
        },
        label = 'Government Parking',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Vinewood Police Parking',
        job = {'police', 'doj'}, -- optional, multi job support
        debug = false,
        ['ParkingSpots'] = {
            vector4(592.08, -11.69, 70.63, 349.84),
            vector4(588.07, -10.59, 70.63, 347.98),
            vector4(584.24, -9.57, 70.63, 351.23),
            vector4(580.04, -8.84, 70.63, 350.07),
            vector4(575.76, -8.47, 70.63, 348.61),
            vector4(571.75, -7.64, 70.63, 347.8),
            vector4(567.74, -6.73, 70.63, 348.99),
            vector4(563.72, -6.08, 70.63, 347.18),
            vector4(559.99, -5.2, 70.63, 347.9)
        },
    },
    ['KRKNShelipad'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-3261.17, 831.84),
                vector2(-3251.6, 838.06),
                vector2(-3257.83, 847.87),
                vector2(-3267.52, 840.75)
            },
            ['minZ'] = 2.0,  -- min height of the parking zone
            ['maxZ'] = 6.0,  -- max height of the parking zone
        },
        label = 'KRKNs Helipad',
        type = 'public',
        vehicleCategories = {'helicopter'},
        drawText = 'KRKNs Helipad',
        showBlip = false,
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(-3259.38, 839.95, 2.92),
        ['ParkingSpots'] = {
            vector4(-3259.38, 839.95, 2.92, 334.66),
        },
        ParkingDistance = 100.0,
        debug = false
    },
    ['KRKNSboatdock'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-3240.2, 769.32),
                vector2(-3235.02, 761.0),
                vector2(-3253.52, 751.26),
                vector2(-3257.65, 757.98)
            },
            ['minZ'] = 0.0,  -- min height of the parking zone
            ['maxZ'] = 6.0,  -- max height of the parking zone
        },
        label = 'KRKNs Boat Dock',
        type = 'public',
        vehicleCategories = {'boat'},
        drawText = 'KRKNs Boat Dock',
        showBlip = false,
        blipName = 'boat dock',
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(-3242.11, 761.6, 0.12),
        ['ParkingSpots'] = {
            vector4(-3242.11, 761.6, 0.12, 124.14),
        },
        ParkingDistance = 100.0,
        debug = false
    },
    ['theroyaltygarage'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(397.58, -322.53),
                vector2(399.6, -316.74),
                vector2(376.73, -308.29),
                vector2(375.41, -313.92)

            },
            ['minZ'] = 39.07,  -- min height of the parking zone
            ['maxZ'] = 50.0,  -- max height of the parking zone
        },
        label = 'The Royal Garage',
        type = 'job',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        job = {'royalmotors'},
        debug = false,
        ['ParkingSpots'] = {
            vector4(396.36, -318.36, 47.62, 160.15),
            vector4(391.66, -316.72, 47.62, 159.99),
            vector4(387.27, -315.11, 47.62, 160.58),
            vector4(382.61, -313.42, 47.62, 159.48),
            vector4(378.27, -311.88, 47.62, 159.92)
        },
    },
    ['theroyaltyhelipad'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(413.93, -349.37),
                vector2(421.99, -353.25),
                vector2(428.53, -342.26),
                vector2(417.81, -338.59)

            },
            ['minZ'] = 39.07,  -- min height of the parking zone
            ['maxZ'] = 50.0,  -- max height of the parking zone
        },
        label = 'The Royal Helipad',
        type = 'job',
        vehicleCategories = {'helicopter'},
        drawText = 'Parking',
        job = {'royalmotor'},
        debug = false,
        ['ParkingSpots'] = {
            vector4(420.65, -345.37, 47.17, 321.49),
        },
    },
    ['bcsofront'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(1843.7, 3673.3),
            vector2(1847.38, 3666.56),
            vector2(1872.21, 3680.52),
            vector2(1868.48, 3687.82)
            },
            ['minZ'] = 32.0,  -- min height of the parking zone
            ['maxZ'] = 36.0,  -- max height of the parking zone


        },
        label = 'Front of BCSO',
        type = 'job',
        job = "police",
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Parking',
        debug = false,
        ["ParkingSpots"] = {
            vector4(1853.91, 3675.89, 33.26, 211.01),
            vector4(1850.52, 3673.83, 33.27, 210.55),
            vector4(1847.22, 3672.05, 33.22, 212.12),
            vector4(1866.19, 3682.38, 33.2, 120.34)
        },
    },
    ['nautilushelipad1'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-2103.37, -640.5),
                vector2(-2111.86, -647.81),
                vector2(-2118.57, -639.78),
                vector2(-2110.7, -632.75)
            },
            ['minZ'] = 2.0,  -- min height of the parking zone
            ['maxZ'] = 6.0,  -- max height of the parking zone
        },
        label = 'Nautilus Helipad 1',
        type = 'public',
        vehicleCategories = {'helicopter'},
        drawText = 'Nautilus Helipad 1',
        showBlip = true,
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(-2111.11, -640.23, 4.27),
        ['ParkingSpots'] = {
            vector4(-2111.11, -640.23, 4.27, 218.48),
        },
        ParkingDistance = 100.0,
        debug = false
    },
    ['nautilushelipad2'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-2066.02, -682.26),
                vector2(-2058.81, -690.38),
                vector2(-2067.13, -697.65),
                vector2(-2074.27, -689.12)
            },
            ['minZ'] = 2.0,  -- min height of the parking zone
            ['maxZ'] = 6.0,  -- max height of the parking zone
        },
        label = 'Nautilus Helipad 2',
        type = 'public',
        vehicleCategories = {'helicopter'},
        drawText = 'Nautilus Helipad 2',
        showBlip = true,
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50,
        blipcoords = vector3(-2066.5, -689.7, 4.27),
        ['ParkingSpots'] = {
            vector4(-2066.5, -689.7, 4.27, 36.82),
        },
        ParkingDistance = 100.0,
        debug = false
    },
    -- Stark Mansion Parking (inside)
    ['starkmansioninside'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-3361.3791503906, 1791.1806640625),
                vector2(-3363.6701660156, 1796.7108154297),
                vector2(-3372.2834472656, 1791.7814941406),
                vector2(-3375.9729003906, 1790.7689208984),
                vector2(-3377.6745605469, 1784.0745849609),
                vector2(-3372.0092773438, 1782.0059814453),
                vector2(-3369.5832519531, 1785.9499511719)
            },
            ['minZ'] = 25,  -- min height of the parking zone
            ['maxZ'] = 28,  -- max height of the parking zone
        },
        label = 'Stark Mansion Inside',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Stark Mansion Garage',
        showBlip = false,
        debug = false,
        ['ParkingSpots'] = {
            vector4(-3364.95, 1791.65, 26.17, 121.1)
        },
    },
    ['vanillegeneral'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(152.3162689209, -1300.9401855469),
                vector2(159.05848693848, -1304.8284912109),
                vector2(153.53291320801, -1315.9916992188),
                vector2(146.05813598633, -1310.7510986328)
            },
            ['minZ'] = 28.5,  -- min height of the parking zone
            ['maxZ'] = 31.0,  -- max height of the parking zone


        },
        label = 'Vanilla Unicorn General Parking',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'service', 'emergency', 'military', 'commercial', 'helicopter', 'plane'},
        drawText = 'Vanilla Unicorn Parking',
        debug = false,
        ["ParkingSpots"] = {
            vector4(151.94, -1313.46, 29.21, 53.53),
            vector4(153.88, -1310.39, 29.21, 57.8),
            vector4(155.48, -1307.74, 29.21, 63.14),
            vector4(156.34, -1304.89, 29.21, 56.34)
        },
    },

}


Config.HouseGarages = {} -- DO NOT TOUCH!

Garages = Config.Garages
HouseGarages = Config.HouseGarages