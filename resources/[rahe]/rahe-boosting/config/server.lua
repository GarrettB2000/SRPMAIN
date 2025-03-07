svConfig = {
    -- The currency settings which are used to display money amount in the tablet's HTML.
    -- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/toLocaleString
    -- The first variable (currencyLocale) defines how the number is formatted. For example in 'en-US': '$60,890.00', 'et': '60 890,00 $'
    -- The second variable (currency) defines the symbol which is used - €/$ or whatever you wish.
    currencyLocale = 'en-us',
    currency = 'USD',

    -- Time between boosting contract loop executions. If the default value (15) is used, then every 15 minutes (4 times per hour), contracts will be
    -- generated for the players who are queued. The chances of receiving a contract in that loop execution are defined in vehicle class configs, the
    -- 'generationPercentage' value. For example, if the 'D' class has a generationPercentage value of 70, then every 15 minutes there is a 70% chance
    -- that you will receive a D class boosting contract.
    minutesBetweenGenerations = 15,

    -- The amount of contracts that player will be given when he opens the tablet for the very first time (to get him started).
    initialContractAmount = 3,

    -- The amount of online police required for people to get important (A / S class) contracts. This will be applied to classes which have the 'isImportant' as true.
    requiredPoliceAmount = 3,

    --  Define the principal which will be given the ACE permission to use the in-game admin panel. If you don't wish to use this, set it to false.
    -- In order for this to work, make sure you allow ox_lib to grant permissions (https://overextended.dev/ox_lib) ('You'll also need to grant ace permissions to the resource.')
    adminPrincipal = 'group.god',

    -- A comma separated list of player identifiers (strings) that are allowed to access the admin panel (in addition to those allowed by ACE permissions).
    -- Examples for different frameworks:
    --
    -- QB: adminIdentifiers = {'RKDJ2732', 'MNSU0922'},
    -- ESX: adminIdentifiers = {'char1:17beaa0fce04fd5d7e8571a6a1b51f172e7c4457', 'char1:17beaa0fce04fd5d7e8571a6a1b51f172e7c4457'},
    adminIdentifiers = {
        'GWP65363',
        'OMV21159'
    },

    -- If the player should be penalized during delivery for having an engine whose health is below 80%.
    penalizeForDamagedEngine = true,

    -- The amount in dollars that's the maximum penalty for having a damaged engine when dropping off.
    maximumEngineDamagePenalty = 5000,

    -- If the vehicle were in the center of the indicated area, it would be found instantly. To prevent this, an offset is used. This value determines
    -- the min/max offset of the x and y axis (randomly generated between 0 and this value) from the vehicle spawn point (in meters).
    -- Related client-side config values: vehicleCreationDistance, vehicleAreaRadius
    vehicleAreaMaximumOffset = 145.0,

    -- An option to enable / disable VIN scratching. If disabled, then the player will get an error message when trying to VIN scratch a vehicle.
    vinScratchingEnabled = true,

    -- Determine whether experience should be distributed among group members when performing a contract with a group.
    -- Set to 'true' for experience to be shared among group members.
    -- Set to 'false' for experience to be given only to the contract owner.
    splitExperienceInGroups = true,

    -- If all group members must enter the red pick up area at least once to get any kind of rewards (money, crypto, XP) in the end.
    -- This can be used to prevent abuse situations where people are group boosting and some of the members are just AFKing along to get XP.
    groupActivityCheck = true,

    -- If this is defined, the user will be shown an 'Upload' button in the profile picture upload section.
    -- When pressed, the user will be redirected to this website in their browser to upload their content.
    recommendedUploadWebsite = 'https://upload.rahe.dev',

    -- A list of image hosts will be allowed to use as a profile picture. The player won't be allowed to use a provider which isn't in this list.
    -- If you have a 'recommendedUploadWebsite' defined in the previous option, then that will automatically be added into here.
    --
    -- We do NOT recommend using Imgur or Discord as allowed hosts!
    -- They rate-limit and/or change URLs causing your images to stop working sooner or later, even if they may seem fine at first.
    allowedImageHosts = {
        'media.rahe.dev',
        'r2.fivemanage.com'
    },

    -- A list of conditions for different vehicle classes
    -- The list must be ordered by their 'xpRequired' value (high -> low)

    -- Class parameters explained:
    -- @class: the main identifier, used for displaying and getting a vehicles class
    -- @xpRequired: experience required for a player to receive a contract of this class
    -- @generationPercentage: the probability of a player getting this class when a generation occurs (0-100%)
    -- @timeBetweenGenerations: the time in minutes that has to be passed since the last generation of this class
    -- @isImportant: if a class is important, then it needs police presence for it to be generated (svConfig.requiredPoliceAmount) and has a GPS tracker.
    -- @gpsHacksRequired: if the class is marked is important, then it will have a GPS tracker which has to be hacked this many times.
    -- @gpsHackMinTime: the minimum amount of time the player has to complete the GPS hacking mini game.
    -- @gpsHackMaxTime: the maximum amount of time the player has to complete the GPS hacking mini game.
    -- @maxContractsOfType: how many contracts of this type can be available at once
    -- @maxContactsPerSession: how many contracts of this type can one player receive per restart
    -- @priceMin: the minimum crypto price needed to accept the contract
    -- @priceMax: the maximum crypto price needed to accept the contract
    -- @minScratchPrice = the minimum crypto price needed to VIN scratch (take it yourself) the vehicle
    -- @maxScratchPrice = the maximum crypto price needed to VIN scratch (take it yourself) vehicle
    -- @rewardCashMin: the minimum cash reward
    -- @rewardCashMax: the maximum cash reward
    -- @rewardCryptoMin: the minimum crypto reward
    -- @rewardCryptoMax: the maximum crypto reward
    -- @experiencePerJob: amount of experience points received when the contract is successful
    -- @bonusExperienceMultiplier: the multiplier by which 'experiencePerJob' will be multiplied with when 'bonusExperienceMinimumMembers' is reached. Used only when 'splitExperienceInGroups' is true.
    -- @bonusExperienceMinimumMembers: the minimum number of members required within a group for the bonus 'bonusExperienceMultiplier' to take effect. Used only when 'splitExperienceInGroups' is true.
    -- @tuningChance: the probability of the vehicle being tuned (0-100%)
    -- @riskChances: the probability of different risks on the vehicle
        -- @doorsLocked: the probability that vehicle doors are locked
        -- @advancedLockChance: the probability that vehicle doors are locked with an advanced lock (must use a better lock pick than the bad one)
        -- @advancedSystemChance: the probability that vehicle doors are locked with an high-tech system (must use a hacking device)
        -- @npcChance: the probability (percentage 0-100) that killer NPCs will spawn when you try to hack the vehicle.
            -- npcChance can only be higher than 0 on classes that have isImportant = true. This is because isImportant boosts use different spawns that
            -- have npc spawn locations built in (shared.lua advancedVehicleCoords). DO NOT use this variable on lower, non-important boosts.

    vehicleClasses = {
        [1] = {
            class = "S+",
            xpRequired = 3500,
            generationPercentage = 1,
            timeBetweenGenerations = 120,
            isImportant = true,
            gpsHacksRequired = 20,
            gpsHackMinTime = 20,
            gpsHackMaxTime = 25,
            maxContractsOfType = 1,
            maxContractsPerSession = 1,
            priceMin = 500,
            priceMax = 900,
            minScratchPrice = 7000,
            maxScratchPrice = 11000,
            rewardCashMin = 0,
            rewardCashMax = 0,
            rewardCryptoMin = 0,
            rewardCryptoMax = 0,
            experiencePerJob = 12,
            bonusExperienceMultiplier = 4,
            bonusExperienceMinimumMembers = 4,
            tuningChance = 25,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 100,
                npcChance = 100
            }
        },
        [2] = {
            class = "S",
            xpRequired = 2500,
            generationPercentage = 1,
            timeBetweenGenerations = 120,
            isImportant = true,
            gpsHacksRequired = 20,
            gpsHackMinTime = 20,
            gpsHackMaxTime = 25,
            maxContractsOfType = 1,
            maxContractsPerSession = 1,
            priceMin = 500,
            priceMax = 900,
            minScratchPrice = 7000,
            maxScratchPrice = 11000,
            rewardCashMin = 0,
            rewardCashMax = 0,
            rewardCryptoMin = 0,
            rewardCryptoMax = 0,
            experiencePerJob = 12,
            bonusExperienceMultiplier = 4,
            bonusExperienceMinimumMembers = 4,
            tuningChance = 25,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 100,
                npcChance = 100
            }
        },
        [3] = {
            class = "A+",
            xpRequired = 1000,
            generationPercentage = 30,
            timeBetweenGenerations = 30,
            isImportant = true,
            gpsHacksRequired = 15,
            gpsHackMinTime = 25,
            gpsHackMaxTime = 30,
            maxContractsOfType = 1,
            maxContractsPerSession = 2,
            priceMin = 250,
            priceMax = 450,
            minScratchPrice = 2500,
            maxScratchPrice = 4500,
            rewardCashMin = 0,
            rewardCashMax = 0,
            rewardCryptoMin = 0,
            rewardCryptoMax = 0,
            experiencePerJob = 8,
            bonusExperienceMultiplier = 4,
            bonusExperienceMinimumMembers = 4,
            tuningChance = 25,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 100,
                npcChance = 100
            }
        },
        [4] = {
            class = "A",
            xpRequired = 1000,
            generationPercentage = 30,
            timeBetweenGenerations = 30,
            isImportant = true,
            gpsHacksRequired = 10,
            gpsHackMinTime = 25,
            gpsHackMaxTime = 30,
            maxContractsOfType = 1,
            maxContractsPerSession = 2,
            priceMin = 250,
            priceMax = 450,
            minScratchPrice = 2500,
            maxScratchPrice = 4500,
            rewardCashMin = 0,
            rewardCashMax = 0,
            rewardCryptoMin = 0,
            rewardCryptoMax = 0,
            experiencePerJob = 8,
            bonusExperienceMultiplier = 4,
            bonusExperienceMinimumMembers = 4,
            tuningChance = 25,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 100,
                npcChance = 100
            }
        },
        [5] = {
            class = "B+",
            xpRequired = 115,
            generationPercentage = 35,
            timeBetweenGenerations = 10,
            isImportant = true,
            gpsHacksRequired = 7,
            gpsHackMinTime = 20,
            gpsHackMaxTime = 25,
            maxContractsOfType = 1,
            maxContractsPerSession = 20,
            priceMin = 0,
            priceMax = 0,
            minScratchPrice = 5,
            maxScratchPrice = 5,
            rewardCashMin = 12000,
            rewardCashMax = 25000,
            rewardCryptoMin = 2,
            rewardCryptoMax = 2,
            experiencePerJob = 3,
            bonusExperienceMultiplier = 2,
            bonusExperienceMinimumMembers = 2,
            tuningChance = 100,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 100,
                npcChance = 50
            }
        },
        [6] = {
            class = "B",
            xpRequired = 35,
            generationPercentage = 45,
            timeBetweenGenerations = 10,
            isImportant = true,
            gpsHacksRequired = 5,
            gpsHackMinTime = 20,
            gpsHackMaxTime = 25,
            maxContractsOfType = 1,
            maxContractsPerSession = 20,
            priceMin = 0,
            priceMax = 0,
            minScratchPrice = 3,
            maxScratchPrice = 3,
            rewardCashMin = 10000,
            rewardCashMax = 20000,
            rewardCryptoMin = 1,
            rewardCryptoMax = 1,
            experiencePerJob = 2,
            bonusExperienceMultiplier = 2,
            bonusExperienceMinimumMembers = 2,
            tuningChance = 100,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 100,
                npcChance = 0
            }
        },
        [7] = {
            class = "C",
            xpRequired = 20,
            generationPercentage = 45,
            timeBetweenGenerations = 0,
            isImportant = false,
            maxContractsOfType = 1,
            maxContractsPerSession = 20,
            priceMin = 0,
            priceMax = 0,
            minScratchPrice = 4,
            maxScratchPrice = 4,
            rewardCashMin = 3000,
            rewardCashMax = 6500,
            rewardCryptoMin = 0,
            rewardCryptoMax = 0,
            experiencePerJob = 1,
            bonusExperienceMultiplier = 2,
            bonusExperienceMinimumMembers = 2,
            tuningChance = 0,
            riskChances = {
                doorsLocked = 100,
                advancedLockChance = 0,
                advancedSystemChance = 0,
                npcChance = 0
            }
        },
        [8] = {
            xpRequired = 0,
            class = "D",
            generationPercentage = 70,
            timeBetweenGenerations = 0,
            isImportant = false,
            maxContractsOfType = 1,
            maxContractsPerSession = 20,
            priceMin = 0,
            priceMax = 0,
            minScratchPrice = 2,
            maxScratchPrice = 2,
            rewardCashMin = 2000,
            rewardCashMax = 5000,
            rewardCryptoMin = 0,
            rewardCryptoMax = 0,
            experiencePerJob = 1,
            bonusExperienceMultiplier = 2,
            bonusExperienceMinimumMembers = 2,
            tuningChance = 0,
            riskChances = {
                doorsLocked = 0,
                advancedLockChance = 0,
                advancedSystemChance = 0,
                npcChance = 0
            }
        }
    },

    storeItems = {
        ['nos'] = {
            cashRequired = 0,
            cryptoRequired = 10,
            availablePerRestart = 10,
            isSoldOut = false,
            title = "Nitrous oxide",
            description = "When you need that extra bit of boost.",
            iconFile = 'nitrous.png',
            receiveItemIds = {
                [1] = 'nitrous'
            }
        },
        ['advancedlockpick'] = {
            cashRequired = 1500,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Lockpick",
            description = "A high-quality lockpick which will get the job done.",
            iconFile = 'advancedlockpick.png',
            receiveItemIds = {
                [1] = 'advancedlockpick'
            }
        },
        ['advancedrepairkit'] = {
            cashRequired = 3500,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Repair kit",
            description = "Will get your car moving when you break down.",
            iconFile = 'advancedrepairkit.png',
            receiveItemIds = {
                [1] = 'advancedrepairkit'
            }
        },
        ['drill'] = {
            cashRequired = 1500,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Drill",
            description = "A powerdrill.",
            iconFile = 'drill.png',
            receiveItemIds = {
                [1] = 'drill'
            }
        },
        ['usb_green'] = {
            cashRequired = 1500,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Green USB",
            description = "A green usb loaded with hacking software.",
            iconFile = 'usb_green.png',
            receiveItemIds = {
                [1] = 'usb_green'
            }
        },
        ['weapon_pistol'] = {
            cashRequired = 850,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Pistol",
            description = "A 9mm pistol.",
            iconFile = 'weapon_pistol.png',
            receiveItemIds = {
                [1] = 'weapon_pistol'
            }
        },
        ['thermite'] = {
            cashRequired = 1000,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Thermite",
            description = "Thermite.",
            iconFile = 'thermite.png',
            receiveItemIds = {
                [1] = 'thermite'
            }
        },
        ['phone'] = {
            cashRequired = 150,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Phone",
            description = "A smartphone.",
            iconFile = 'phone.png',
            receiveItemIds = {
                [1] = 'phone'
            }
        },
        ['armor'] = {
            cashRequired = 350,
            cryptoRequired = 0,
            availablePerRestart = 100,
            isSoldOut = false,
            title = "Armor",
            description = "Bodyarmor used to protect your from gunshots.",
            iconFile = 'armor.png',
            receiveItemIds = {
                [1] = 'armor'
            }
        }
    }
}

-- Feel free to add your own vehicles here. Most of the default cars are here, modded cars have to be added!
supportedVehicles = {

        -- D Class
    { name = "D | Declasse Emperor", model = "emperor2", class = "D" },
    { name = "D | Dundreary Regina", model = "regina", class = "D" },
    { name = "D | Declasse Asea", model = "asea", class = "D" },
    { name = "D | Declasse Emperor", model = "emperor", class = "D" },
    { name = "D | Karin Dilettante", model = "dilettante", class = "D" },
    { name = "D | Burrito Custom", model = "gburrito2", class = "D" },
    { name = "D | Burrito", model = "burrito3", class = "D" },
    { name = "D | Bobcat XL", model = "bobcatxl", class = "D" },
    
    -- C Class 
    { name = "C | Grotti Brioso R/A", model = "brioso", class = "C" },
    { name = "C | BF Club", model = "club", class = "C" },
    { name = "C | Dinka Blista", model = "blista", class = "C" },
    { name = "C | Bollokan Prairie", model = "prairie", class = "C" },
    { name = "C | Weeny Issi Sport", model = "issi7", class = "C" },
    { name = "C | Vapid Flash GT", model = "flashgt", class = "C" },
    { name = "C | Dinka Blista Compact", model = "blista2", class = "C" },
    { name = "C | Weeny Issi", model = "issi2", class = "C" },
    { name = "C | Benefactor Panto", model = "panto", class = "C" },
    { name = "C | Declasse Rhapsody", model = "rhapsody", class = "C" },
    { name = "C | Asbo", model = "asbo", class = "C" },
    { name = "C | Weeny Issi Classic", model = "issi3", class = "C" },

    -- B Class
    { name = "B | AMG", model = "waldw222", class = "B" },
    { name = "B | Mustang Boss", model = "boss302", class = "B" },
    { name = "B | CTSV", model = "ctsv16", class = "B" },
    { name = "B | Type R", model = "fk8", class = "B" },
    { name = "B | 1500", model = "gcram1500", class = "B" },
    { name = "B | Pacifica", model = "godzdhcpacifica", class = "B" },
    { name = "B | WRX", model = "godzrb26subi", class = "B" },
    { name = "B | GTO", model = "gto", class = "B" },
    { name = "B | Veloster", model = "hyundaiveloster", class = "B" },
    { name = "B | Maybach", model = "maybach", class = "B" },
    { name = "B | E63", model = "merse63", class = "B" },
    { name = "B | AZ1", model = "az1", class = "B" },
    { name = "B | ETRON", model = "ocnetrongt", class = "B" },
    { name = "B | Polo", model = "polo2018", class = "B" },
    { name = "B | G65", model = "rmodg65", class = "B" },
    { name = "B | Wald", model = "waldw222", class = "B" }


}