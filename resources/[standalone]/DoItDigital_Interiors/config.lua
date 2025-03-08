Config = {}

Config.Debug = false -- If you want to see debug messages in the console.

Config.IntervalToSpawnDoorsInMS = 1000 -- in milisecondss | Don't Touch unless you know what you're doing or you've been informed by the support team
Config.IntervalToSpawnDoorsInBetween = 0 -- in milisecondss | Don't Touch unless you know what you're doing or you've been informed by the support team
Config.IntervalRightLeftDoors = 2000 -- in milisecondss | Don't Touch unless you know what you're doing or you've been informed by the support team

Config.loadingTimeInterval = 10000 -- in milisecondss | Don't Touch unless you know what you're doing
Config.DoItDigitaltempFixForDisabledInterios = { -- this will reenable your mlo that have been affectet. here is an example of how it should look like.
    {
        ipl = 'grimzy_pl_ym', -- YMAP FILE
        coords = { x = 162.0988, y = 6468.972, z = 30.91825 }, -- COORDS OF COL MLO that is disabled
    } 
}

Config.DoItDiGitalWeaponPlaces = {
    ["DoItDigitalHiddenWeaponPlace1"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = false                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 726.0, -1373.0, 26.0
    },

    ["DoItDigitalHiddenWeaponPlace2"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = false                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 904.0, -1574.0, 31.0
    },

    ["DoItDigitalHiddenWeaponPlace3"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location -37.0, -2550.0, 6.0
    },

    ["DoItDigitalHiddenWeaponPlace4"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location -632.0, -2355.0, 14.0
    },

    ["DoItDigitalHiddenWeaponPlace5"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location -1095.0, -2403.0, 14.0
    },

    ["DoItDigitalHiddenWeaponPlace6"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location -1696.0, -3180.0, 14.0
    },

    ["DoItDigitalHiddenWeaponPlace7"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 850.0, 2383.0, 54.0
    },

    ["DoItDigitalHiddenWeaponPlace8"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 2595.0, 2817.0, 34.0
    },

    ["DoItDigitalHiddenWeaponPlace9"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 2828.0 4584.0, 47.0
    },

    ["DoItDigitalHiddenWeaponPlace10"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 37.0, 6550.0, 31.0
    },

    ["DoItDigitalHiddenWeaponPlace11"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = true,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = false,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 5368.0, -5554.0, 52
    },

    ["DoItDigitalHiddenWeaponPlace12"] = {
        enabledPlace = false,                -- If you want the place to be visible to players.
            melee = false,                   -- If you want it to be for melee.
            pistol = false,                 -- If you want it to be for pistol.
            smg = true,                    -- If you want it to be for smg.
            rifle = false,                  -- If you want it to be for rifle.
            all_in_one = false,             -- If you want it to be for all_in_one.
            IownThis = true                 -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
                                            -- Location 4904.0, -5212.0,  3.0
    },
}

Config.DoItDigitalDrugPlaces = {
    ["DoItDigitalDrugPlace1"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = true,           -- If you want the place to be visible to-players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth.
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1402.48 2121.82 105.07
    },
    
    ["DoItDigitalDrugPlace2"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = true,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = true,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location -442.64 5596.43 68.38
    },

    ["DoItDigitalDrugPlace3"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = true,           -- If you want the place to be visible to players.
            weed = true,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location -341.42 3745.09 69.97
    },

    ["DoItDigitalDrugPlace4"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location -83.4 6134.04 30.44
    },

    ["DoItDigitalDrugPlace5"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2975.83 3769.17 54.72
    },

    ["DoItDigitalDrugPlace6"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT. SCRIPT.
        enabledPlace = false,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2850.98 3439.33 50.92
    },

    ["DoItDigitalDrugPlace7"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2525.1 2610.68 37.94
    },

    ["DoItDigitalDrugPlace8"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = true,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = true,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2654.39 1693.14 24.48
    },

    ["DoItDigitalDrugPlace9"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = true,           -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2468.16 1480.19 36.2
    },

    ["DoItDigitalDrugPlace10"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,               -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = true               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2133.95 1935.73 93.78
    },

    ----DoItDigital Drug Container Places
    
    ["DoItDigitalDrugContainerPlace1"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 910.05 -3020.15 5.9
    },

    ["DoItDigitalDrugContainerPlace2"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 686.29 -2739.54 6.0
    },

    ["DoItDigitalDrugContainerPlace3"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1086.04 -2323.77 30.2
    },

    ["DoItDigitalDrugContainerPlace4"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2896.8 4384.14 50.38
    },

    ["DoItDigitalDrugContainerPlace5"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1661.92 4685.18 43.19
    },

    ["DoItDigitalDrugContainerPlace6"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1337.75 6385.64 33.21
    },

    ["DoItDigitalDrugContainerPlace7"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,               -- If you want it to be for coke.
            meth = false,               -- If you want it to be for meth. 
            IownThis = false              -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 195.25 6423.78 31.13
    },

    ["DoItDigitalDrugContainerPlace8"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2974.01 3480.0 71.44
    },

    ["DoItDigitalDrugContainerPlace9"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2839.56 1457.28 24.57
    },

    ["DoItDigitalDrugContainerPlace10"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1743.67 -1572.44 112.63
    },

    ----DoItDigital Drug Recreational Vehicle Places

    ["DoItDigitalDrugRecreationalVehicle1"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1617.36 3781.78 34.86
    },

    ["DoItDigitalDrugRecreationalVehicle2"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 526.84 3094.92 40.46
    },

    ["DoItDigitalDrugRecreationalVehicle3"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2335.96 4891.03 41.81
    },

    ["DoItDigitalDrugRecreationalVehicle4"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2423.83 4021.1 36.78
    },

    ["DoItDigitalDrugRecreationalVehicle5"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2344.52 3330.8 46.19
    },

    ["DoItDigitalDrugRecreationalVehicle6"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 251.86 3187.04 42.75
    },

    ["DoItDigitalDrugRecreationalVehicle7"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location -205.16 6532.33 11.1
    },

    ["DoItDigitalDrugRecreationalVehicle8"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1522.45 6341.15 24.19
    },

    ["DoItDigitalDrugRecreationalVehicle9"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2525.24 4968.39 44.45
    },
    
    ["DoItDigitalDrugRecreationalVehicle10"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 311.2 3384.51 36.54
    },

    ----DoItDigital Drug Warehouse Places

    ["DoItDigitalWarehouse1"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1425.97 3609.97 34.93
    },

    ["DoItDigitalWarehouse2"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 309.9 2833.31 43.44
    },

    ["DoItDigitalWarehouse3"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2922.74 4632.8 48.55
    },

    ["DoItDigitalWarehouse4"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 293.83 6781.15 15.82
    },

    ["DoItDigitalWarehouse5"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location -558.66 6165.72 6.85
    },

    ["DoItDigitalWarehouse6"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location -1513.860 2872.501 30.38
    },

    ["DoItDigitalWarehouse7"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2095.19 3115.81 45.96
    },

    ["DoItDigitalWarehouse8"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 2824.72 1702.08 24.72
    },

    ["DoItDigitalWarehouse9"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1819.67 -1297.57 95.93
    },

    ["DoItDigitalWarehouse10"] = {   -- DO NOT CHANGE THE NAME IN "" IT'LL BREAK THE SCRIPT.
        enabledPlace = false,            -- If you want the place to be visible to players.
            weed = false,                -- If you want it to be for weed.
            coke = false,                -- If you want it to be for coke.
            meth = false,                -- If you want it to be for meth. 
            IownThis = false               -- If you don't own this package keep it false else keep it on false. ALSO Make sure if you have this false you sould have enabledPlace on false too.
            --Location 1541.5 -2169.47 77.8
    },   
}