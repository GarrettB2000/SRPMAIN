print("^2Jim^7-^2Consumables ^7v^41^7.^45 ^7- ^2Consumables Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false,
	Core = "qb-core",

	Inv = "ox", -- set to "ox" if using ox_inventory
	Notify = "ox",  -- set to "ox" if using ox_lib

	UseProgbar = true,
	ProgressBar = "qb", -- set to "ox" if using ox_lib

	Consumables = {
		-- Default QB food and drink item override

		--Effects can be applied here, like stamina on coffee for example
		["vodka"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["beer"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["whiskey"] = { 		emote = "whiskey",  	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},

		["sandwich"] = { 		emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["twerks_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["snikkel_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["tosti"] = { 			emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["burger-bleeder"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["burger-fries"] = { 	emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["burger-heartstopper"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["burger-moneyshot"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,50), }},
		["burger-softdrink"] = { 	emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["burger-mshake"] = { 	emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["tavukburger"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["tburgerxl"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["friesl"] = { 	emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["chickentenders"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["chickenwings"] = { 	emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["shrimpcocktail"] = { 	emote = "ecola", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(10,20), }},

		["coffee"] = { 			emote = "coffee", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["water_bottle"] = { 	emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["kurkakola"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["orange"] = { 		emote = "eat", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(5,10), thirst = math.random(5,10), }}, 
		["irishcream"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["lime"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["lemon"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["chocolate"] = { 		emote = "egobar", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["cranberryjuice"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["amaretto"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["curaco"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["orangejuice"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["strawberry"] = { 		emote = "eat", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["passionfruit"] = { 		emote = "eat", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["sprite"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["rice"] = { 		emote = "eat", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		
		--Tequilala Items

		["lalab52"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["lalablackr"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalabluek"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalacuppuccinotini"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["lalacc"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalairishflag"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["lalakam"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalasakeset"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalapurgatory"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalaloversfruit"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalavoodoo"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["lalacookie"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["lalasalad"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["lalapopcorn"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["lalaicecream"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},

        -- UWU Cafe Items
        ["bobatea"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["bbobatea"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["gbobatea"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["pbobatea"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["obobatea"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["kittycream"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["coffeejelly"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["nekolatte"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["catcoffee"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["sake"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { screen = "weed", effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["miso"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), thirst = math.random(20,30)}},
		["cake"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["bento"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["riceball"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["nekocookie"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["nekodonut"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["cakepop"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},	
		["pancake"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["ramen"] = { 	emote = "eat", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), thirst = math.random(20,30)}},

        --Pharmacy
		["grizzlyfak"] = { 	emote = "oxy", 		canRun = true, 		time = math.random(3000, 4000), stress = math.random(2, 4), heal = 25, armor = 0, type = "drug", stats = {widepupils = false, canOD = false}},
		["adrenalinestim"] = { 	emote = "oxy", 		canRun = true, 		time = math.random(3000, 4000), stress = math.random(2, 4), heal = 20, armor = 10, type = "drug", stats = {widepupils = false, canOD = false}},
		["sj6stim"] = { 			emote = "drink", 		canRun = true, 	time = math.random(3000, 4000), stress = 0, heal = 0, armor = 0, type = "drug", stats = { screen = "focus", time = 2000, thirst = math.random(10,20), hunger = math.random(10,20), widepupils = false, canOD = false}},
		["meldonin"] = { 	emote = "oxy", 		canRun = true, 		time = math.random(3000, 4000), stress = math.random(4, 6), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", time = 2000, effect = "stamina", time = 5000, widepupils = false, canOD = false}},
		["odolbos"] = { 	emote = "oxy", 		canRun = true, 		time = math.random(3000, 4000), stress = math.random(4, 6), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", time = 2000, effect = "stamina", time = 10000, hunger = math.random(0,0), widepupils = false, canOD = false}},
		["adderall"] = { 	emote = "oxy", 		canRun = true, 		time = math.random(3000, 4000), stress = math.random(2, 4), heal = 50, armor = 20, type = "drug", stats = {hunger = math.random(0,0), widepupils = false, canOD = false}},
		["vicodin"] = { 	emote = "oxy", 		canRun = true, 		time = math.random(3000, 4000), stress = math.random(4, 6), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", time = 2000, effect = "stamina", time = 5000, widepupils = false, canOD = false}},

		--[[----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
		-- Testing these but they may be best left handled by default scripts
		["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
		["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
		]]

		--Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
		["premium_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 20, armor = 0, type = "drug", stats = { screen = "weed", widepupils = false, canOD = false } },
		["joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
		["bluedream_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["snoopjoint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(24, 36), heal = 25, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["weddingcake_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["afghankush_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["grandaddypurp_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["jackherrer_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["bestbuds_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 20, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["whitewidow_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 20, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["purplecookiekush_joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false } },
		["bluedream_gummie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(10,20), } },
		["rasberrykush_gummie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(10,20), } },
		["grandaddypurp_gummie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(10,20), } },
		["rainbowbelts_gummie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(10,20), } },
		["snickerdoodle_cookie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(15,25), } },
		["chocolatechip_cookie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(15,25), } },
		["peanutbutter_cookie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(15,25), } },
		["crispytreat_cookie"] = { 			emote = "egobar",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "food", stats = { screen = "weed", effect = "heal","armor", widepupils = false, canOD = false , hunger = math.random(15,25), } },


		-- Misc. 
		["pdarmor"] = { 		emote = "vest",		time = math.random(5000, 6000), stress = math.random(0, 0), heal = 0, armor = 50, type = "drug", },
		["armor"] = { 		emote = "vest",		time = math.random(5000, 10000), stress = math.random(0, 0), heal = 0, armor = 35, type = "drug", },

		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		--[[Example item
		["heartstopper"] = {
			emote = "burger", 							-- Select an emote from below, it has to be in here
			time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
			stress = math.random(1,2),					-- Amount of stress relief, can be 0
			heal = 0, 									-- Set amount to heal by after consuming
			armor = 5,									-- Amount of armor to add
			type = "food",								-- Type: "alcohol" / "drink" / "food"

			stats = {
				screen = "thermal",						-- The screen effect to be played when after consuming the item "rampage" "turbo" "focus" "weed" "trevor" "nightvision" "thermal"
				effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
														-- This supports ps-buffs effects "armor" "stress" "swimming" "hacking" "intelligence" "luck" "strength"
				time = 10000,							-- How long the effect should last (if not added it will default to 10000)
				amount = 6,								-- How much the value is changed by per second
				hunger = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
				thirst = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
			},
			--Reward Items Variables
														-- These can be the only thing in a consumable table and the item will still work
			amounttogive = 3,							-- Used for "RewardItems", tells the script how many to give
			rewards = {
				[1] = {
					item = "plastic", 					-- prize item name
					max = 10,							-- max amount to give (this is put into math.random(1, max) )
					rarity = 1,							-- the rarity system, 1 being rarest, 4 being most common
				},
			},
		},]]

	},
	Emotes = {
		["adjust"] = {
			"missmic4",
			"michael_tux_fidget",
			"Adjust",
			AnimationOptions = {
				EmoteMoving = true,
				EmoteDuration = 4000
			}
		},
		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_amb_coffeecup_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["burger"] = { "mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger",	AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["beer"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0,0.0,0.06,0.0,15.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger","Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement ={0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteMoving = true }},
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["smoke3"] = { "amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["whiskey"] = { "amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
			{ Prop = 'prop_drink_whisky', PropBone = 28422, PropPlacement = {0.01,-0.01,-0.06,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true } },
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
			{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},		
		--Drugs
		["coke"] = { "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", "Coke", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
		["oxy"] = { "mp_suicide", "pill", "Oxy", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
				["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
			{ Prop = 'prop_cigar_02', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
			{ Prop = 'prop_cigar_01', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
			{ Prop = 'prop_amb_ciggy_01', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
			EmoteMoving = true, EmoteDuration = 2600 }}, 
		["vest"] = { "clothingtie", "try_tie_positive_a", "Vest", AnimationOptions =
			{ EmoteLoop = false, EmoteMoving = true, EmoteDuration = 3000 }},
	},
}
