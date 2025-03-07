Config = {
    --- Compatibility Settings
    Resource = GetCurrentResourceName(),
    Logging = 'qb', -- 'ox_lib' or 'qb' or 'esx'
    Debug = false, -- true | false, enable debug mode
    Lang = 'en', -- Language, choose one of the prefixes from the locales folder
    Phone = 'Qs', -- 'QBCore' or 'GKS' or 'Qs' or 'lb-phone' or edit utils files for others

    --- Laptop Settings
    LaptopMoneyType = 'crypto', -- Any moneytype: cash/bank/crypto
    LaptopUses = 5,
    Laptop = {
        green = {
            coords = vector4(3414.67, 657.43, -121.09, 206),
            price = 14,
            pedModel = joaat('hc_hacker'),
            usb = 'usb_green',
            reward = 'laptop_green'
        },
        blue = {
            coords = vector4(3414.67, 657.43, -121.09, 206),
            price = 25,
            pedModel = joaat('g_f_y_vagos_01'),
            usb = 'usb_blue',
            reward = 'laptop_blue'
        },
        red = {
            coords = vector4(3414.67, 657.43, -121.09, 206),
            price = 36,
            pedModel = joaat('ig_talcc'),
            usb = 'usb_red',
            reward = 'laptop_red'
        }
    },

    --- Minigame Settings
    MinigameSettings = {
        laptop = {
            ['fleeca'] = { time = 10, blocks = 3, amount = 3 },
            ['maze'] = { time = 11, blocks = 4, amount = 4 },
            ['paleto'] = { time = 12, blocks = 5, amount = 4 },
            ['pacific'] = { time = 12, blocks = 6, amount = 4 }
        },
        simonSays = { buttonGrid = 5, length = 6 }, -- Used in Fleeca bank
        lightsOut = { grid = 4, maxClicks = 50 }, -- Used for every locker (drilling)
        varHack = { blocks = 6 }, -- Used for Paleto hacks
        mazeHack = { time = 17 }, -- Used for Paleto security hacks
        thermite = { correctBlocks = 16, incorrectBlocks = 4, timetoShow = 6, timetoLose = 20 }, -- Used in Maze and Pacific
        hackingdevice = { timer = 25, characters = 'alphanumeric' }, -- Used in Pacific
    },

    --- Bank Settings
    BankSettings = {
        VaultUnlockTime = 300, -- Time in seconds for when the vault door opens after laptop hack
        PaletoInputTime = 5000, -- Time in milliseconds where all 3 inputs must be entered
        PacificInputTime = 1500 -- Time in milliseconds where both inputs must be entered
    },

    MinCops = {
        fleeca = 3,
        maze = 0,
        paleto = 4,
        pacific = 8
    },

    Cooldown = { -- These cooldowns start the second the bank is successfully hacked, time in minutes
        fleeca = 90,
        maze = 90,
        paleto = 180,
        pacific = 240
    },

    --- Banks
    Banks = { -- This is mainly for storing variables that are used and/or change dynamically during the script
        ['PinkCage'] = {
            label = 'Pink Cage Motels',
            type = 'fleeca',
            coords = vec3(311.15, -284.49, 54.16),
            size = 15,
            keycardTaken = false,
            door = { id = 'bankrobbery-pinkcage_door2', coords = vec3(308.69, -281.55, 54.33) },
            innerDoor = { id = 'bankrobbery-pinkcage_door3', hacked = false },
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_gb_vauldr'), closed = 250.0, open = 150.0 },
            camId = 21,
            laptop = vec4(311.14, -284.03, 53.974, 160.00),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(315.03, -288.31, 54.14, 250.0) },
                [2] = { busy = false, taken = false, coords = vec4(315.92, -285.14, 54.14, 250.0) },
                [3] = { busy = false, taken = false, coords = vec4(312.47, -289.45, 54.16, 160.0) },
                [4] = { busy = false, taken = false, coords = vec4(310.79, -286.92, 54.16, 250.0) },
                [5] = { busy = false, taken = false, coords = vec4(314.13, -283.07, 54.16, 160.0) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(313.47702, -289.2542, 54.1431, 320.0) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(311.61235, -287.6962, 54.1431, 305.0) }
            }
        },
        ['Legion'] = {
            label = 'Legion Square',
            type = 'fleeca',
            coords = vec3(146.92, -1046.11, 29.36),
            size = 15,
            keycardTaken = false,
            door = { id = 'bankrobbery-legion_door2', coords = vec3(144.36, -1043.19, 29.53) },
            innerDoor = { id = 'bankrobbery-legion_door3', hacked = false },
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_gb_vauldr'), closed = 250.0, open = 150.0 },
            camId = 22,
            laptop = vec4(147.60, -1046.86, 30.008, 160.00),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(151.54, -1046.71, 29.35, 250.00) },
                [2] = { busy = false, taken = false, coords = vec4(150.81, -1050.10, 29.35, 250.00) },
                [3] = { busy = false, taken = false, coords = vec4(148.12, -1051.03, 29.35, 160.00) },
                [4] = { busy = false, taken = false, coords = vec4(146.58, -1048.51, 29.35, 250.00) },
                [5] = { busy = false, taken = false, coords = vec4(149.84, -1044.70, 29.35, 160.00) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(147.13935, -1049.607, 29.34633, 310.0) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(149.51391, -1050.767, 29.34633, 290.0) }
            }
        },
        ['Hawick'] = {
            label = 'Hawick Ave',
            type = 'fleeca',
            coords = vec3(-353.82, -55.37, 49.03),
            size = 15,
            keycardTaken = false,
            door = { id = 'bankrobbery-hawick_door2', coords = vec3(-356.42, -52.46, 49.20) }, 
            innerDoor = { id = 'bankrobbery-hawick_door3', hacked = false },
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_gb_vauldr'), closed = 250.0, open = 150.0 },
            camId = 23,
            laptop = vec4(-354.55, -55.26, 49.86, 160.00),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(-349.16, -55.93, 49.01, 250.00) },
                [2] = { busy = false, taken = false, coords = vec4(-349.98, -59.1, 49.01, 250.00) },
                [3] = { busy = false, taken = false, coords = vec4(-352.70, -60.14, 49.01, 160.00) },
                [4] = { busy = false, taken = false, coords = vec4(-354.07, -57.75, 49.01, 250.00) },
                [5] = { busy = false, taken = false, coords = vec4(-350.95, -53.85, 49.01, 160.00) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(-353.644, -59.04, 49.0148, 310.0) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(-351.6271, -59.91, 49.0148, 290.0) }
            }
        },
        ['DelPerro'] = {
            label = 'Del Perro Blvd',
            type = 'fleeca',
            coords = vec3(-1210.77, -336.57, 37.78),
            size = 15,
            keycardTaken = false,
            door = { id = 'bankrobbery-delperro_door2', coords = vec3(-1214.62, -336.44, 37.94) },
            innerDoor = { id = 'bankrobbery-delperro_door3', hacked = false },
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_gb_vauldr'), closed = 296.863, open = 196.863 },
            camId = 24,
            laptop = vec4(-1210.53, -336.78, 37.381, 206.00),
            lockers = { 
                [1] = { busy = false, taken = false, coords = vec4(-1207.14, -333.59, 37.76, 297.0) },
                [2] = { busy = false, taken = false, coords = vec4(-1205.28, -336.56, 37.76, 297.0) },
                [3] = { busy = false, taken = false, coords = vec4(-1209.7, -333.31, 37.76, 207.0) },
                [4] = { busy = false, taken = false, coords = vec4(-1206.52, -339.17, 37.76, 207.0) },
                [5] = { busy = false, taken = false, coords = vec4(-1209.34, -338.3, 37.76, 297.0) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(-1207.97, -338.9731, 37.759284, 353.9089) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(-1205.895, -338.0665, 37.759326, 340.50067) }
            }
        },
        ['GreatOcean'] = {
            label = 'Great Ocean Hwy',
            type = 'fleeca',
            coords = vec3(-2956.55, 481.74, 15.69),
            size = 15,
            keycardTaken = false,
            door = { id = 'bankrobbery-greatocean_door2', coords = vec3(-2958.54, 478.42, 15.86) },
            innerDoor = { id = 'bankrobbery-greatocean_door3', hacked = false },
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_gb_vauldr'), closed = 357.542, open = 257.542 },
            camId = 25,
            laptop = vec4(-2956.07, 481.64, 15.297, 268.00),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(-2958.77, 484.18, 15.68, 268.0) },
                [2] = { busy = false, taken = false, coords = vec4(-2957.33, 486.25, 15.68, 358.0) },
                [3] = { busy = false, taken = false, coords = vec4(-2954.02, 486.69, 15.68, 358.0) },
                [4] = { busy = false, taken = false, coords = vec4(-2952.23, 484.32, 15.68, 268.0) },
                [5] = { busy = false, taken = false, coords = vec4(-2954.27, 482.06, 15.68, 358.0) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(-2953.083, 482.7803, 15.675336, 49.137405) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(-2952.881, 485.22781, 15.675389, 37.428142) }
            }
        },
        ['Sandy'] = {
            label = 'Sandy Shores',
            type = 'fleeca',
            coords = vec3(1175.28, 2712.72, 38.08),
            size = 15,
            keycardTaken = false,
            door = { id = 'bankrobbery-sandy_door2', coords = vec3(1179.39, 2711.02, 38.25) },
            innerDoor = { id = 'bankrobbery-sandy_door3', hacked = false },
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_gb_vauldr'), closed = 90.00, open = -10.00 },
            camId = 99,
            laptop = vec4(1175.81, 2713.26, 39.35, 359.96),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(1171.43, 2711.87, 38.07, 91.2) },
                [2] = { busy = false, taken = false, coords = vec4(1170.89, 2715.25, 38.07, 91.2) },
                [3] = { busy = false, taken = false, coords = vec4(1173.29, 2717.18, 38.09, 1.2) },
                [4] = { busy = false, taken = false, coords = vec4(1173.65, 2710.27, 38.07, 181.2) },
                [5] = { busy = false, taken = false, coords = vec4(1175.75, 2715.18, 38.07, 91.2) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(1174.6406, 2716.2036, 38.066295, 141.10868) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(1171.6578, 2716.2761, 38.066303, 231.91242) }
            }
        },
        ['Maze'] = {
            label = 'Maze Bank',
            type = 'maze',
            coords = vec3(-1306.05, -816.82, 17.3),
            size = 15,
            hacked = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_bk_vaultdoor'), closed = 37.0, open = -133.0 },
            camId = 99,
            laptop = vec4(-1304.17, -816.56, 18.05, 311.46),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(-1307.53, -810.4, 17.15, 307.00) },
                [2] = { busy = false, taken = false, coords = vec4(-1311.2, -813.01, 17.15, 126.65) },
                [3] = { busy = false, taken = false, coords = vec4(-1310.35, -810.21, 17.15, 36.57) },
            },
            trolly = {
                [1] = { type = 'money', taken = false, coords = vec4(-1310.97, -811.23, 17.15, 221.28) },
                [2] = { type = 'gold', taken = false, coords = vec4(-1308.99, -809.94, 17.15, 187.48) },
            },
            thermite = {
                [1] = { coords = vec4(-1305.3, -819.80, 17.20, 38.56), ptfx = vec3(-1305.40, -818.70, 17.20), doorId = 'bankrobbery-mazethermite1', hit = false },
                [2] = { coords = vec4(-1308.46, -814.2, 17.20, 38.56), ptfx = vec3(-1308.57, -813.1, 17.20), doorId = 'bankrobbery-mazethermite2', hit = false }, 
            }
        },
        ['Paleto'] = {
            label = 'Paleto Bay',
            type = 'paleto',
            coords = vec3(-105.41, 6468.69, 31.64),
            size = 15,
            hacked = false,
            policeClose = false,
            vaultDoor = { object = -2050208642, closed = 225.07, open = 90.0 },
            securityEntrance = { id = 'bankrobbery-paleto-security-back', hacked = false },
            sideEntrance = { id = 'bankrobbery-paleto-side-back', hacked = false },
            sideHack = { id = 'bankrobbery-paleto-security-room', hacked = false },
            officeHacks = {
                [1] = { label = 'Office 1', id = 'bankrobbery-paleto-office-left', hacked = false },
                [2] = { label = 'Office 2', id = 'bankrobbery-paleto-office-right', hacked = false }, 
                [3] = { label = 'Administration', id = 'bankrobbery-paleto-office-admin', hacked = false } 
            },
            camId = 99,
            laptop = vec4(-102.05, 6463.24, 31.20, 188.71),
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(-96.52, 6459.74, 31.63, 225.0) },
                [2] = { busy = false, taken = false, coords = vec4(-100.35, 6459.81, 31.63, 135.0) },
                [3] = { busy = false, taken = false, coords = vec4(-96.95, 6463.51, 31.63, 135.0) },
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(-98.24, 6459.19, 31.63, 6.37) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(-96.22, 6461.65, 31.63, 91.8) },
                [3] = { type = 'gold', busy = false, taken = false, coords = vec4(-98.98, 6461.86, 31.63, 90.55) },
            }
        },
        ['Pacific'] = {
            label = 'Pacific Standard Bank',
            type = 'pacific',
            coords = vec3(239.24, 228.07, 97.12),
            size = 40,
            hacked = false,
            lockdown = false,
            laserPanel = false,
            policeClose = false,
            vaultDoor = { object = joaat('v_ilev_bk_vaultdoor'), closed = 70.0, open = -45.0 },
            camId = 26,
            laptop = vec4(237.09, 231.32, 97.0, 70.0),
            sideEntrance = { id = 'bankrobbery-pacific-side', hacked = false },
            computers = {
                ['main'] = { coords = vec3(278.78, 213.07, 110.17), hacked = false },
                ['office1'] = { coords = vec3(260.54, 205.56, 110.17), hacked = false, key = 'pacific_key1' },
                ['office2'] = { coords = vec3(252.04, 208.66, 110.17), hacked = false, key = 'pacific_key2' },
                ['office3'] = { coords = vec3(270.14, 231.59, 110.17), hacked = false, key = 'pacific_key3' },
                ['office4'] = { coords = vec3(261.65, 234.7, 110.17), hacked = false, key = 'pacific_key4' }
            },
            searchDrawers = {
                [1] = { coords = vec4(257.23, 204.99, 109.17, 70.0), usb = false },
                [2] = { coords = vec4(254.91, 207.69, 109.17, 250.0), usb = false },
                [3] = { coords = vec4(264.27, 233.28, 109.17, 250.0), usb = false },
                [4] = { coords = vec4(267.79, 234.14, 109.17, 70.0), usb = false },
                [5] = { coords = vec4(278.59, 209.42, 109.17, 160.0), usb = false },
                [6] = { coords = vec4(279.36, 206.79, 105.28, 250.0), usb = false },
                [7] = { coords = vec4(267.93, 209.16, 105.28, 160.0), usb = false },
                [8] = { coords = vec4(259.12, 212.27, 105.28, 160.0), usb = false },
                [9] = { coords = vec4(257.18, 204.98, 105.28, 70.0), usb = false },
                [10] = { coords = vec4(254.38, 206.24, 105.28, 250.0), usb = false },
                [11] = { coords = vec4(264.48, 227.54, 105.28, 160.0), usb = false },
                [12] = { coords = vec4(264.98, 235.36, 105.28, 250.0), usb = false },
                [13] = { coords = vec4(267.85, 234.04, 105.28, 70.0), usb = false },
                [14] = { coords = vec4(273.98, 223.91, 105.28, 160.0), usb = false },
                [15] = { coords = vec4(277.05, 220.43, 105.28, 160.0), usb = false },
                [16] = { coords = vec4(273.04, 209.52, 105.28, 160.0), usb = false },
            },
            sideVaults = {
                [1] = { id = 'bankrobbery-vault-door6', laptop = vec4(242.35, 218.52, 97.0, 160.0), hacked = false },
                [2] = { id = 'bankrobbery-vault-door7', laptop = vec4(247.47, 233.38, 97.0, 340.0), hacked = false }
            },
            thermite = {
                [1] = { coords = vec4(272.75, 215.98, 110.25, 250.0), ptfx = vec3(272.70, 217.0, 110.25), doorId = 'bankrobbery-pacific-office-main', hit = false },
                [2] = { coords = vec4(252.15, 217.33, 97.22, 70.0), ptfx = vec3(252.15, 218.33, 97.22), doorId = 'bankrobbery-vault-door3', hit = false },
                [3] = { coords = vec4(256.10, 228.26, 97.22, 70.0), ptfx = vec3(256.07, 229.26, 97.22), doorId = 'bankrobbery-vault-door4', hit = false },
                [4] = { coords = vec4(265.36, 224.86, 97.22, 250.0), ptfx = vec3(265.30, 225.86, 97.22), doorId = 'bankrobbery-vault-door5', hit = false },
            },
            lockers = {
                [1] = { busy = false, taken = false, coords = vec4(252.49, 240.94, 97.12, 340.0) },
                [2] = { busy = false, taken = false, coords = vec4(253.64, 236.53, 97.12, 250.0) },
                [3] = { busy = false, taken = false, coords = vec4(249.04, 237.75, 97.12, 70.0) },
                [4] = { busy = false, taken = false, coords = vec4(241.49, 209.88, 97.12, 160.0) },
                [5] = { busy = false, taken = false, coords = vec4(240.33, 214.13, 97.12, 70.0) },
                [6] = { busy = false, taken = false, coords = vec4(244.77, 212.73, 97.12, 250.0) },
                [7] = { busy = false, taken = false, coords = vec4(225.74, 230.85, 97.12, 70.0) },
                [8] = { busy = false, taken = false, coords = vec4(227.12, 234.62, 97.12, 70.0) },
                
            },
            trolly = {
                [1] = { type = 'money', busy = false, taken = false, coords = vec4(252.72, 238.42, 97.12, 110.95) },
                [2] = { type = 'money', busy = false, taken = false, coords = vec4(249.64, 235.98, 97.12, 298.49) },
                [3] = { type = 'gold', busy = false, taken = false, coords = vec4(240.68, 211.68, 97.12, 295.56) },
                [4] = { type = 'money', busy = false, taken = false, coords = vec4(244.3, 214.81, 97.12, 117.34) },
                [5] = { type = 'money', busy = false, taken = false, coords = vec4(228.43, 234.95, 97.12, 206.52) },
                [6] = { type = 'money', busy = false, taken = false, coords = vec4(231.5, 233.37, 97.12, 116.47) },
                [7] = { type = 'gold', busy = false, taken = false, coords = vec4(228.52, 225.38, 97.12, 340.0) },
                [8] = { type = 'money', busy = false, taken = false, coords = vec4(225.48, 226.35, 97.12, 340.0) },
            }
        }
    },
}