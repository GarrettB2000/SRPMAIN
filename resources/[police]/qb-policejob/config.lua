Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

Config.MaxSpikes = 0

Config.HandCuffItem = 'handcuffs'
Config.CuffKeyItem = "cuffkeys"
Config.TieItem = 'ziptie'
Config.CutTieItem = 'flush_cutter'
Config.CutCuffItem = 'bolt_cutter'
Config.BrokenCuffItem = 'broken_handcuffs'
Config.BreakOutCuffing = {active = true, duration = math.random(2500,5000), pos = math.random(10, 30), width = math.random(10, 20)}
Config.BreakoutMinigame = 'ps-ui' -- Choose the cuff breakout minigame : qb-skillbar / qb-minigames (skillbar) / ps-ui (circle) / ox_lib
Config.SkillbarConfig = {difficulty = 'medium', keys = 'wasd'} -- If minigame is qb-minigames then choose amount of tries
Config.PSUIConfig = {numcircle = 3, ms = 6} -- If minigame is ps-ui then choose number of circles and ms 
Config.OXLibConfig = {difficulty = 'medium', inputs = {'w', 'a', 's', 'd'}} -- If minigame is ox_lib then choose difficulty and input characters
Config.TargetSystem = 'qb-target' -- Target system you want to use : qb-target / qtarget / ox_target
Config.ContextSystem = 'qb-menu' -- Menu system you want to use : qb-menu / ox_lib
Config.DrawText = {sys = 'qb-core', position = 'left'} -- Drawtext system you want to use : qb-core / ox_lib  and position of the drawtext
Config.ProgressBar = 'progressbar' -- Progressbar system : progressbar / ox_lib
Config.Inventory = 'ox_inventory' -- Inventory system : qb-inventory / new-qb-inventory / ps-inventory / ox_inventory 
Config.StashSettings = {maxweight = 4000000, slots = 30,} -- Stash settings for qb / ps inventory
Config.Debug = false -- Enable / Disable debugpoly 
Config.CuffCooldown = 5 -- Sets a cooldown for cuffing, prevents cuff spamming
Config.DisableSprintJump = false -- Disables jumping and running while escorting a player
Config.AlcoholTesterName = "alcoholtester" -- Name of the alcohol tester item
Config.AlcoholReleaseInterval = {min = 5, promille = 0.02} -- Interval time in minutes to release alcohol per given promille
Config.EnableVersionCheck = true -- Enable or disable the version checking from github
Config.OwnedPoliceCars = true -- Do you want the spawned police cars to be owned ?

-- itemname = name of the item
-- propname = the prop used for cuffing
-- needkey = does the cuff needs a key to uncuff ? It will give a key when true
-- keyitem = what is the item used to uncuff
-- cufftype = the animation type. 19 - ped is freezed / 49 - ped can move with cuffs
Config.CuffItems = {
    ['handcuffs'] = {itemname = "handcuffs", propname = "p_cs_cuffs_02_s", needkey = true, keyitem = "cuffkeys", cufftype = 49 },
    ['ziptie'] = {itemname = "ziptie", propname = "ba_prop_battle_cuffs", needkey = false, keyitem = "flush_cutter", cufftype = 49},
    ['shackles'] = {itemname = "shackles", propname = "p_cs_cuffs_02_s", needkey = true, keyitem = "cuffkeys", cufftype = 19}
}

Config.BlipColors = {
    ['police'] = 29, -- Dark Blue
    ['ambulance'] = 1 -- Red
}

Config.FuelScript = 'cdn-fuel'
Config.LicenseRank = 2
Config.BlockWallThermals = true -- true/false; lowers thermal cam intensity to stop penetration through walls or tunnels
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.GaragePedModel = "s_m_y_hwaycop_01"
Config.Locations = {
    ["duty"] = {
        --[1] = vector3(442.70, -981.99, 30.69), -- LSPD
    },
    ["vehicle"] = {
        --[2] = vector3(-492.44, -348.08, 34.50),
    },
    ["vehspawn"] = { -- The numbers [1] must match the numbers in [vehicle]
        --[2] = vector4(-492.31, -336.55, 34.37, 172),
    },
    ["stash"] = {
    },
    ["impound"] = {
    },
    ["helicopter"] = {
        [1] = vector4(441.36, -979.92, 43.69, 267), -- MRPD
        [2] = vector4(-1107.29, -832.22, 37.70, 216),-- VPD
        [3] = vector4(1845.23, 3709.22, 33.97, 211), -- SSSO
        [4] = vector4(-487.83, 5979.20, 31.30, 317), -- PBSO
    },
    ["helispawn"] = { -- The numbers [1] must match the numbers in [helicopter]
        [1] = vector3(449.17, -980.91, 43.69), -- MRPD
        [2] = vector3(-1096.28, -832.37, 37.70), -- VPD
        [3] = vector3(1853.26, 3706.50, 33.97), -- SSSO
        [4] = vector3(-475.69, 5988.35, 31.34), -- PBSO
    },
    ["armory"] = {
        [1] = vector3(482.60, -995.26, 30.69), -- MRPD
        [2] = vector3(1836.20, 3687.19, 34.19), -- SSSO
        [3] = vector3(-449.35, 6015.15, 37.00), -- PBSO
    },
    ["trash"] = {
    },
    ["fingerprint"] = {
        [1] = vector3(473.52, -1012.98, 26.27), -- LSPD
        [2] = vector3(1818.14, 3665.69, 33.05), -- SSSO
        [3] = vector3(-452.56, 5997.31, 26.46), -- PBSO
    },
    ["evidence"] = {
    },
    ["labs"] = {
        --[1] = vector3(483.53, -987.98, 30.69), -- LSPD
    },
    ["stations"] = {
        [1] = {label = "Mission Row Police Department", coords = vector4(452.89, -992.99, 30.69, 174), sprite= 137, scale= 0.7, colour= 29},
        [2] = {label = "Sandy Shores Sheriffs Office", coords = vector4(1831.68, 3681.40, 34.19, 232), sprite= 137, scale= 0.7, colour= 52},
        [3] = {label = "Vespucci Police Department", coords = vector4(-1093.75, -834.68, 37.70, 34), sprite= 137, scale= 0.7, colour= 29},
        [4] = {label = "Davis Police Department", coords = vector4(377.02, -1604.59, 41.78, 51), sprite= 137, scale= 0.7, colour= 29},
        [5] = {label = "Paleto Bay Sheriff's Office", coords = vector4(-447.06, 6003.58, 44.01, 193), sprite= 137, scale= 0.7, colour= 52}
    },
}

Config.RepairStations = {
    enabled = false,
    withanim = false,
    locations = {
        [1] = {
            jobtype = 'leo', -- jobtype that can use this station or public to be used by everyone 
            pedhash = 's_m_m_fibsec_01', -- ped hash to be used as repair guy
            pedloc = vector4(480.39, -996.65, 30.69, 87.97), -- location where the ped will be spawned
            walkto = vector4(487.31, -996.93, 30.69, 274.41), -- location where the ped will walk to repair
        },
        [2] = {
            jobtype = 'public', -- jobtype that can use this station or public to be used by everyone 
            pedhash = 'u_m_y_gunvend_01', -- ped hash to be used as repair guy
            pedloc = vector4(16.37, -1111.51, 29.8, 254.8), -- location where the ped will be spawned
            walkto = vector4(15.32, -1105.86, 29.8, 215.82), -- location where the ped will walk to repair
        }
    }
}

Config.PoliceHelicopters = {
    -- Garage 1 helis (LSPD)
    [1] = {
        ['polmav2'] =  {label = "Police Maverick", ranks = {8,9,10,11,12,13,14,15,16,17,18,19,20}, livery = 0, price = 0},
    },
    [2] = {
        ['polmav2'] =  {label = "Police Maverick", ranks = {8,9,10,11,12,13,14,15,16,17,18,19,20}, livery = 0, price = 0},
    },
    [3] = {
        ['polmav2'] =  {label = "Police Maverick", ranks = {8,9,10,11,12,13,14,15,16,17,18,19,20}, livery = 0, price = 0},
    },
    [4] = {
        ['polmav2'] =  {label = "Police Maverick", ranks = {8,9,10,11,12,13,14,15,16,17,18,19,20}, livery = 0, price = 0},
    },
}

Config.SecurityCameras = {
    hideradar = true,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarket Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarket Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarket Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarket Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarket Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarket Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarket Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarket Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-99.82, 6465.38, 33.81), r = {x = -20.0, y = 0.0, z = 90.0}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -10.0, y = 0.0, z = 270.0}, canRotate = true, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = true, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = true, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [35] = {label = "Paleto Bank CAM#2", coords = vector3(-108.05, 6461.01, 33.5), r = {x = -20.0, y = 0.0, z = 0.0}, canRotate = true, isOnline = true},

    },
}
Config.EnableMods = true -- Enable the mods below to be applied
Config.CarMods = { -- Mods to be enabled / disabled for vehicles
    engine = false,
    brakes = false,
    gearbox = false,
    armour = true,
    turbo = false,
}
Config.EnableExtras = true
Config.CarExtras = { -- Extra options to be enabled / disabled
["extras"] = {
    ["1"] = true, -- on/off
    ["2"] = true,
    ["3"] = true,
    ["4"] = false,
    ["5"] = true,
    ["6"] = true,
    ["7"] = true,
    ["8"] = true,
    ["9"] = true,
    ["10"] = true,
    ["11"] = true,
    ["12"] = true,
    ["13"] = true,
}
}
Config.AuthorizedVehicles = {
    -- Garage 1 vehicles (LSPD)
    [2] = {
        ["fordambo"] = {label = "Ambulance", ranks = {0,1,2,3,4,5,6,7,}, livery = 1, price = 10},
        ["tahoepov"] = {label = "Ambulance Tahoe", ranks = {5,6,7}, livery = 2, price = 10},
    }
}

Config.AmmoLabels = {
    ["ammo-9"] = "9x19mm Parabellum bullet",
    ["ammo-45"] = "45 ACP bullet",
    ["ammo-rifle"] = "5.56mm bullet",
    ["ammo-shotgun"] = "12-gauge bullet",
    ["ammo-heavysniper"] = "Large caliber bullet",
}

Config.Radars = {
}

Config.CarItems = {
}

Config.QuickEquip = false -- Set this to true if you want to give certain items automatically and configure the quick = {} part on each item
Config.Items = {
    label = "Police Armory",
    slots = 30,
    items = {
        [1] = {
            name = "weapon_glock22",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [2] = {
            name = "weapon_mp5",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [3] = {
            name = "weapon_ar15",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [4] = {
            name = "weapon_remington",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [5] = {
            name = "weapon_heavysniper",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {16, 17, 18, 19, 20}
        },
        [6] = {
            name = "weapon_stungun",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [7] = {
            name = "weapon_nightstick",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [9] = {
            name = "ammo-9",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [9] = {
            name = "ammo-shotgun",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [10] = {
            name = "ammo-rifle",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [11] = {
            name = "ammo-9",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },        
        [12] = {
            name = "ammo-heavysniper",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 12,
            authorizedJobGrades = {16, 17, 18, 19, 20}
        },
        [13] = {
            name = "handcuffs",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [14] = {
            name = "police_stormram",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 14,
            authorizedJobGrades = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [15] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 15,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [16] = {
            name = "pdarmor",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [17] = {
            name = "weapon_bzgas",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 17,
            authorizedJobGrades = {16, 17, 18, 19, 20}
        },
        [18] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 18,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [19] = {
            name = "ifaks",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 19,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [20] = {
            name = "radio",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 20,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [21] = {
            name = "spikestrip",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 21,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [22] = {
            name = "shackles",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 22,
            authorizedJobGrades = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [23] = {
            name = "ziptie",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 23,
            authorizedJobGrades = {17, 18, 19, 20}
        },
        [24] = {
            name = "weapon_flashbang",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 24,
            authorizedJobGrades = {17, 18, 19, 20}
        },
        [25] = {
            name = "advancedrepairkit",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 25,
            authorizedJobGrades =  {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [26] = {
            name = "weapon_flare",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 26,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [27] = {
            name = "weapon_flaregun",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 27,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [28] = {
            name = "ammo-flare",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 28,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },
        [29] = {
            name = "uvlight",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 29,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
        },        
    }
}
