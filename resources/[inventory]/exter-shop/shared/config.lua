Config = {}
Config.UseTextUI = true --only qb target false
Config.InventoryFolder = "nui://ox_inventory/web/images/"
Config.Text = "textui2" --textui2
--ox nui://ox_inventory/web/images/
--qs nui://qs-inventory/html/images/

Config.PaInv = false --make it true if you are using pa inventory
Config.OldInv = "ox" --if you are using pa inventory and if you are using ox before pa write ox here if not you don't need to write anything

Config.ServerCallbacks = {}

Config.Notify = {
    ["success"] = "The purchase was successful enjoy",
    ["error"] = "You don't have enough balance"
}

Config.Shops = {
    {
        name = "Market",
        label = "24/7 Market",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "General",
                description = "Needs",
                items = {
                    {name = "water_bottle", label = "Water", perPrice = 12, description = "Drinks"},
                    {name = "sandwich", label = "Sandwich", perPrice = 12, description = "Food"},
                    {name = "bandage", label = "Bandage", perPrice = 25, description = "General"},
                    {name = "tosti", label = "Tosti", perPrice = 15, description = "General"},
                    {name = "beer", label = "Beer", perPrice = 20, description = "General"},
                    {name = "cola", label = "Cola", perPrice = 10, description = "General"},
                    {name = "twerks_candy", label = "Twerks Candy", perPrice = 10, description = "General"},
                    {name = "whiskey", label = "Whiskey", perPrice = 25, description = "General"},
                    {name = "sprunk", label = "Sprunk", perPrice = 13, description = "General"},

                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(24.47, -1346.62, 29.5, 271.66)},
            {ped = nil, coords = vector4(-3039.54, 584.38, 7.91, 17.27)},
            {ped = nil, coords = vector4(-3242.97, 1000.01, 12.83, 357.57)},
            {ped = nil, coords = vector4(1728.07, 6415.63, 35.04, 242.95)},
            {ped = nil, coords = vector4(1959.82, 3740.48, 32.34, 301.57)},
            {ped = nil, coords = vector4(549.13, 2670.85, 42.16, 99.39)},
            {ped = nil, coords = vector4(2677.47, 3279.76, 55.24, 335.08)},
            {ped = nil, coords = vector4(2556.66, 380.84, 108.62, 356.67)},
            {ped = nil, coords = vector4(372.66, 326.98, 103.57, 253.73)},
        }
    },
    {
        name = "Market2",
        label = "Black Market",
        type = "normal",
        blip = false,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "Black Market",
                description = "Criminal Goods",
                items = {
                    {name = "usb_red", label = "Red USB", perPrice = 3000, description = "Blackmarket"},

                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(2944.20, 782.17, 26.22, 93)},
        }
    },
    {
        name = "Market",
        label = "LTD Gasoline",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "General",
                description = "24/7",
                items = {
                    {name = "water_bottle", label = "Water", perPrice = 12, description = "Drinks"},
                    {name = "sandwich", label = "Sandwich", perPrice = 12, description = "Food"},
                    {name = "snikkel_candy", label = "Snikkel Candy", perPrice = 10, description = "General"},
                    {name = "tosti", label = "Tosti", perPrice = 15, description = "General"},
                    {name = "beer", label = "Beer", perPrice = 20, description = "General"},
                    {name = "cola", label = "Cola", perPrice = 10, description = "General"},
                    {name = "twerks_candy", label = "Twerks Candy", perPrice = 10, description = "General"},
                    {name = "whiskey", label = "Whiskey", perPrice = 25, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-47.02, -1758.23, 29.42, 45.05)},
            {ped = nil, coords = vector4(-706.06, -913.97, 19.22, 88.04)},
            {ped = nil, coords = vector4(-1820.02, 794.03, 138.09, 135.45)},
            {ped = nil, coords = vector4(1164.71, -322.94, 69.21, 101.72)},
            {ped = nil, coords = vector4(1697.87, 4922.96, 42.06, 324.71)},
        }
    },
    {
        name = "Market",
        label = "Rob's Liqour",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "General",
                description = "24/7",
                items = {
                    {name = "water_bottle", label = "Water", perPrice = 12, description = "Drinks"},
                    {name = "sandwich", label = "Sandwich", perPrice = 12, description = "Food"},
                    {name = "snikkel_candy", label = "Snikkel Candy", perPrice = 10, description = "General"},
                    {name = "tosti", label = "Tosti", perPrice = 15, description = "General"},
                    {name = "beer", label = "Beer", perPrice = 20, description = "General"},
                    {name = "cola", label = "Cola", perPrice = 10, description = "General"},
                    {name = "twerks_candy", label = "Twerks Candy", perPrice = 20, description = "General"},
                    {name = "whiskey", label = "Whiskey", perPrice = 25, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-1221.58, -908.15, 12.33, 35.49)},
            {ped = nil, coords = vector4(-1486.59, -377.68, 40.16, 139.51)},
            {ped = nil, coords = vector4(-2966.39, 391.42, 15.04, 87.48)},
            {ped = nil, coords = vector4(1165.17, 2710.88, 38.16, 179.43)},
            {ped = nil, coords = vector4(1134.2, -982.91, 46.42, 277.24)},
        }
    },
    {
        name = "Hardware Store",
        label = "Hardware",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "General",
                description = "Hardware Tools",
                items = {
                    {name = "lockpick", label = "Lockpick", perPrice = 200, description = "Hardware"},
                    {name = "weapon_wrench", label = "Wrench", perPrice = 250, description = "Hardware"},
                    {name = "weapon_hammer", label = "Hammer", perPrice = 250, description = "Hardware"},
                    {name = "repairkit", label = "Repair Kit", perPrice = 250, description = "Hardware"},
                    {name = "screwdriverset", label = "Tool Set", perPrice = 50, description = "Hardware"},
                    {name = "phone", label = "Phone", perPrice = 250, description = "General"},
                    {name = "radio", label = "Radio", perPrice = 250, description = "General"},
                    {name = "fitbit", label = "Fitbit", perPrice = 400, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(45.68, -1749.04, 29.61, 53.13)},
            {ped = nil, coords = vector4(2747.71, 3472.85, 55.67, 255.08)},
            {ped = nil, coords = vector4(-421.83, 6136.13, 31.88, 228.2)},
        }
    },
    {
        name = "Digital Den Store",
        label = "DigitalDen",
        type = "normal",
        blip = true,
        blipSprite = 619,
        blipColor = 27,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "Electronics",
                description = "Electronic Devices",
                items = {
                    {name = "boombox", label = "Place it down and listen to music", perPrice = 250, description = "Electronic"},
                    {name = "cctv_tablet", label = "CCTV Viewing Tablet", perPrice = 850, description = "Electronic"},
                    {name = "cctv_default", label = "360 Degree CCTV Camera", perPrice = 1500, description = "Electronic"},
                    {name = "cctv_faulty", label = "Static CCCTV Camera", perPrice = 1000, description = "Electronic"},
                    {name = "phone", label = "Phone", perPrice = 250, description = "General"},
                    {name = "radio", label = "Radio", perPrice = 250, description = "General"},
                    {name = "fitbit", label = "Fitbit", perPrice = 250, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(1132.35, -474.32, 66.72, 343)},
        }
    },
    {
        name = "Ammunation Store",
        label = "Weapons",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "General",
                description = "Ammunations",
                items = {
                    {name = "weapon_knife", label = "Knife", perPrice = 250, description = "General"},
                    {name = "weapon_bat", label = "Bat", perPrice = 250, description = "General"},
                    {name = "weapon_hatchet", label = "Hatchet", perPrice = 350, description = "General"},
                    {name = "ammo-9", label = "9mm", perPrice = 1.50, description = "General"},
                    {name = "weapon_pistol", label = "Pistol", perPrice = 2500, description = "General", requiredLicense = {'weapon'}},
                    {name = "ammo-45", label = "45 ACP", perPrice = 1.25, description = "General"},
                    {name = "weapon_snspistol", label = "SNS Pistol", perPrice = 1500, description = "General", requiredLicense = {'weapon'}}
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-3173.31, 1088.85, 20.84, 244.18)},
            {ped = nil, coords = vector4(-1304.19, -395.12, 36.7, 75.03)},
            {ped = nil, coords = vector4(841.92, -1035.32, 28.19, 1.56)},
            {ped = nil, coords = vector4(-1118.59, 2700.05, 18.55, 221.89)},
            {ped = nil, coords = vector4(2567.48, 292.59, 108.73, 349.68)},
            {ped = nil, coords = vector4(23.0, -1105.67, 29.8, 162.91)},
            {ped = nil, coords = vector4(253.63, -51.02, 69.94, 72.91)},
            {ped = nil, coords = vector4(-331.23, 6085.37, 31.45, 228.02)},
            {ped = nil, coords = vector4(1692.67, 3761.38, 34.71, 227.65)},
            {ped = nil, coords = vector4(809.68, -2159.13, 29.62, 1.43)},
            {ped = nil, coords = vector4(-661.96, -933.53, 21.83, 177.05)},
        }
    },
    {
        name = "Best Buds",
        label = "Weed",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "Supply",
                description = "All of your Weed Needs!",
                items = {
                    {name = "joint", label = "Joint", perPrice = 10, description = "A Joint of some reggie."},
                    {name = "empty_weed_bag", label = "Empty Baggy", perPrice = 2.50, description = "A small baggy with many uses"},
                    {name = "rolling_paper", label = "Rolling Paper", perPrice = 2, description = "Organic rolling papars"},
                    {name = "emptycocainebag", label = "Large Empty Baggy", perPrice = 7.50, description = "A Larger baggy with many more uses"},
                    {name = "seranwrap", label = "SeranWrap", perPrice = 12.50, description = "Wrap your goodies up"},
                    {name = "bakingsoda", label = "Baking Soda", perPrice = 2, description = "Cooking ingredient"},
                    {name = "watering_can", label = "Watering Can", perPrice = 20, description = "simple watering can"},
                    {name = "fertilizer", label = "Plant Fertilizer", perPrice = 20, description = "fertilizer"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(380.21, -833.42, 29.29, 179)},

        }
    },
    {
        name = "Black Market",
        label = "Black Market",
        type = "normal",
        blip = false,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "Items",
                description = "Special Electronics",
                items = {
                    {name = "boostingtablet", label = "Fancy Tablet", perPrice = 15000, description = "A Fancy Tablet"},
                    {name = "hackingdevice", label = "Hacking Device", perPrice = 2500, description = "I wonder what this is for..."},
                    {name = "gpshackingdevice", label = "GPS Hacking Device", perPrice = 2500, description = "I wonder what this is for..."},

                    
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(233.39, -3312.83, 5.79, 160)},

        }
    },
    {
        name = "Black Market",
        label = "Black Market",
        type = "normal",
        blip = false,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.5,
        categories = {
            [1] = {
                name = "Items",
                description = "Special Electronics",
                items = {
                    {name = "ammo-9", label = "9x19mm Parabellum", perPrice = 2.5, description = "Ammunition"},
                    {name = "ammo-45", label = ".45 ACP", perPrice = 2.5, description = "Ammunition"},
                    {name = "ammo-50", label = ".50 Ammo", perPrice = 8, description = "Ammunition"},
                    {name = "ammo-rifle", label = "5.56x45mm", perPrice = 5, description = "Ammunition"},
                    {name = "ammo-rifle2", label = "7.62x39", perPrice = 5, description = "Ammunition"},

                    
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(763.44, 4173.68, 41.09, 2)},

        }
    },
}
