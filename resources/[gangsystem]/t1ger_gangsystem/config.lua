Config = {
	Debug = false, -- set  to false to disable debug
	SyncToDatabase = 5,  -- time in minutes to sync gangs from server file to database
	
	Items = {
		[1] = 'ziptie',
		[2] = 'headbag', -- edit item name, not key-number
		[3] = 'weed_brick', -- edit item name, not key-number
		[4] = 'weed_og-kush', -- edit item name, not key-number
		[5] = 'cocainebaggy', -- edit item name, not key-number
		[6] = 'magiccupcake', -- edit item name, not key-number
		[7] = 'weed_baggy', -- edit item name, not key-number


		-- add more items for drug sale if u want. Make sure to add the key inside Config.DrugSale.Items as well.
	},

	AdminMenu = { -- settings for admin gang menu
		Command = {Enable = true, String = 'admingang'}, -- enable/disable command, set command string.
		Keybind = {Enable = true, DefaultMapping = 'F10'} -- enable/disable keybind, set default mapping (players edit button in-game inside GTA Settings)
	},

	PlayerMenu = { -- settings for admin gang menu
		Command = {Enable = true, String = 'gangmenu'}, -- enable/disable command, set command string.
		Keybind = {Enable = true, DefaultMapping = 'F7'} -- enable/disable keybind, set default mapping (players edit button in-game inside GTA Settings)
	},

	DefaultRanks = { -- every gang has these ranks, they can change the title in-game through their menu. Add as many ranks you want, gang-leader can select which ranks to give the gang-members.
        [1] = "Boss", -- (leader)
        [2] = "Underboss", -- (same perms as leader)
        [3] = "Shot Caller", -- (can recruit members to gang or kick members from gang)
        [4] = "Soldier",
        [5] = "Associate",
	},

	InviteMember = {
		ShowFullName = false, -- set to false to only show player server id (prevent meta-gaming)
		Distance = 10.0 -- distance to players in area to include.
	},

	Markers = {
		['garage'] = {
			enable = true, -- enable garage marker
			cooldown = {enable = true, time = 60}, -- enable/disable cooldown on creating new marker when cur marker has been deleted. Time is in minutes.
			pincode = {enable = true, attempts = 3, cooldown = 60}, -- enable/disable cooldown on x attempts of failed pin-code on markers.
			cost = {notoriety = 500, cash = 5000}, -- set cost of creating this marker. Removes notoriety point and cash from cash locker. Set to 0 to disable.
			showMarker = true, -- show a marker in-game to see where to interact
			keybind = 38, -- key to interact with marker.
			blip = {enable = true, name = 'Gang Garage', sprite = 357, display = 4, scale = 0.65, color = 0}, -- blip settings
			renderDist = 10.0, -- thread render dist to show marker
			interactDist = 1.0, -- interact dist to open menu
			menuTitle = 'Garage', -- menu title in context menu
			icon = 'car', -- icon in context menu
			useBuiltInGarage = true -- use the built in garage system, see documentation for reference.
		},
		['stash'] = {
			enable = true,
			cooldown = {enable = true, time = 60}, -- enable/disable cooldown on creating new marker when cur marker has been deleted. Time is in minutes.
			pincode = {enable = true, attempts = 3, cooldown = 60}, -- enable/disable cooldown on x attempts of failed pin-code on markers.
			cost = {notoriety = 250, cash = 5000}, -- set cost of creating this marker. Removes notoriety point and cash from cash locker. Set to 0 to disable.
			showMarker = true, -- show a marker in-game to see where to interact
			keybind = 38, -- key to interact with marker.
			blip = {enable = true, name = 'Gang Stash', sprite = 587, display = 4, scale = 0.65, color = 0}, -- blip settings
			renderDist = 10.0, -- thread render dist to show marker
			interactDist = 1.0,-- interact dist to open menu
			menuTitle = 'Stash',-- menu title in context menu
			icon = 'box', -- icon in context menu
			stash = {slots = 50, weight = 100000}
		},
		['locker'] = {
			enable = true,
			cooldown = {enable = true, time = 60}, -- enable/disable cooldown on creating new marker when cur marker has been deleted. Time is in minutes.
			pincode = {enable = true, attempts = 3, cooldown = 60}, -- enable/disable cooldown on x attempts of failed pin-code on markers.
			cost = {notoriety = 0}, -- set cost of creating this marker. Removes notoriety point and cash from cash locker. Set to 0 to disable.
			showMarker = true, -- show a marker in-game to see where to interact
			keybind = 38, -- key to interact with marker.
			blip = {enable = true, name = 'Gang Locker', sprite = 272, display = 4, scale = 0.65, color = 0}, -- blip settings
			renderDist = 10.0, -- thread render dist to show marker
			interactDist = 1.0, -- interact dist to open menu
			menuTitle = 'Locker', -- menu title in context menu
			icon = 'sack-dollar'-- icon in context menu
		},
	},

	Actions = {
		--
		Menu = {
			['trunk_in'] = {
				icon = 'suitcase',
				notoriety = 0, -- required gang notoriety to use this, set to 0 to disable required notoriety.
			},
			['trunk_out'] = {
				icon = 'suitcase',
				notoriety = 0, -- required gang notoriety to use this, set to 0 to disable required notoriety.
			},
			['headbag'] = {
				icon = 'eye-slash',
				notoriety = 100, -- required gang notoriety to use this, set to 0 to disable required notoriety.
				prop = 'prop_money_bag_01',
			},
		},
	},

	DrugSale = {
		Enable = true, -- set to false if using your own drug sale mechanism, make sure to add export for drug zone checking.
		AllowGangsOnly = false, -- set to true to only allow gang-members to sell drugs.
		RequiredPolice = 1, -- required police online to sell drugs to NPC's. 
		BlackMoney = {enable = false, account = 'black_money'}, -- enable and set account to use other money than normal cash/money.
        Blacklisted = { -- blacklisted ped models for selling;
            's_m_y_cop_01', 's_m_y_dealer_01', 'mp_m_shopkeep_01', 's_m_y_xmech_02_mp', 'mp_m_weed_01', 'ig_chef', 'g_m_m_casrn_01'
        },
		Distance = 2.0, -- distance to target/interact with ped.
		Cooldown = 3, -- cooldown in seconds between each drug sale.
		Anims = {
			['sale'] = {dict = 'mp_common', name = 'givetake2_a'},
			['report'] = {dict = 'cellphone@', name = 'cellphone_call_listen_base'},
		},
		Notoriety = {
			rejected = 1, -- amount of points to deduct on rejected sale (only when NPC calls police).
			maxSellPriceBonus = true, -- adds 1 notoriety point if a unit sell price is equal to the max sell price of the drug.
			requiredSales = 5, -- required amount of sales to NPC before notoriety point is added (to prevent adding points for each sales on grinders)
			accepted = 2, -- amount of points to add on an accepted sale when the requiredSales count is met.
		},
		Items = {
			-- Drug item:
			{
				itemKey = 4, -- Config.Items[4]
				sell = {
					price = {min = 72, max = 72}, -- min and max base sell price
					amount = {min = 1, max = 3}, -- random amount to be sold, between min & max.
					chance = 50 -- chance in % to sell this drug to NPC.
				},
				report = { 
					chance = 100, -- chance in % of NPC calling the police on a failed drug-sale.
					timer = 0 -- time in seconds to beat up NPC to prevent the police alert.
				},
				policeBonus = {
					enable = false, -- enable police bonus on drug sales.
					required = 4, -- required police to apply police-bonus
					percentage = 10 -- percentage added on-top of unit sell price. If price is $800 + 10% makes it $880
				},
				streetBonus = {
					enable = true, -- enable street bonus for selling this item.
					streets = { -- add streets and bonus in %. I eligibile for street bonus % is added on top of the unit sell.
						--['Grove St'] = 25,
						--['Forum Dr'] = 30,
						--['Jamestown St'] = 15,
						--['Clinton Ave'] = 20,
						-- add, remove or edit streets.
					}
				}
			},
			-- Drug item:
			{
				itemKey = 3, -- Config.Items[5]
				sell = {
					price = {min = 800, max = 925}, -- min and max base sell price
					amount = {min = 1, max = 3}, -- random amount to be sold, between min & max.
					chance = 40 -- chance in % to sell this drug to NPC.
				},
				report = { 
					chance = 100, -- chance in % of NPC calling the police on a failed drug-sale.
					timer = 0 -- time in seconds to beat up NPC to prevent the police alert.
				},
				policeBonus = {
					enable = false, -- enable police bonus on drug sales.
					required = 3, -- required police to apply police-bonus
					percentage = 10 -- percentage added on-top of unit sell price. If price is $800 + 10% makes it $880
				},
				streetBonus = {
					enable = true, -- enable street bonus for selling this item.
					streets = { -- add streets and bonus in %. I eligibile for street bonus % is added on top of the unit sell.
						--['Forum Dr'] = 25,
						--['Jamestown St'] = 30,
						--['Clinton Ave'] = 15,
						-- add, remove or edit streets.
					}
				}
			},
			-- Drug item:
			{
				itemKey = 5, -- Config.Items[6]
				sell = {
					price = {min = 650, max = 800}, -- min and max base sell price
					amount = {min = 1, max = 3}, -- random amount to be sold, between min & max.
					chance = 45 -- chance in % to sell drugs to NPC.
				},
				report = { 
					chance = 100, -- chance in % of NPC calling the police on a failed drug-sale.
					timer = 0 -- time in seconds to beat up NPC to prevent the police alert.
				},
				policeBonus = {
					enable = false, -- enable police bonus on drug sales.
					required = 3, -- required police to apply police-bonus
					percentage = 10 -- percentage added on-top of unit sell price. If price is $800 + 10% makes it $880
				},
				streetBonus = {
					enable = true, -- enable street bonus for selling this item.
					streets = { -- add streets and bonus in %. I eligibile for street bonus % is added on top of the unit sell.
						--['Grove St'] = 30,
						--['Forum Dr'] = 25,
						--['Jamestown St'] = 20,
						--['Clinton Ave'] = 15,
						-- add, remove or edit streets.
					}
				}
			},
						-- Drug item:
			{
				itemKey = 5, -- Config.Items[6]
				sell = {
					price = {min = 650, max = 800}, -- min and max base sell price
					amount = {min = 1, max = 3}, -- random amount to be sold, between min & max.
					chance = 45 -- chance in % to sell drugs to NPC.
				},
				report = { 
					chance = 100, -- chance in % of NPC calling the police on a failed drug-sale.
					timer = 0 -- time in seconds to beat up NPC to prevent the police alert.
				},
				policeBonus = {
					enable = false, -- enable police bonus on drug sales.
					required = 3, -- required police to apply police-bonus
					percentage = 10 -- percentage added on-top of unit sell price. If price is $800 + 10% makes it $880
				},
				streetBonus = {
					enable = true, -- enable street bonus for selling this item.
					streets = { -- add streets and bonus in %. I eligibile for street bonus % is added on top of the unit sell.
						--['Grove St'] = 30,
						--['Forum Dr'] = 25,
						--['Jamestown St'] = 20,
						--['Clinton Ave'] = 15,
						-- add, remove or edit streets.
					}
				}
			},
			-- Drug item:
			{
				itemKey = 6, -- Config.Items[6]
				sell = {
					price = {min = 55, max = 63}, -- min and max base sell price
					amount = {min = 1, max = 4}, -- random amount to be sold, between min & max.
					chance = 50 -- chance in % to sell drugs to NPC.
				},
				report = { 
					chance = 100, -- chance in % of NPC calling the police on a failed drug-sale.
					timer = 0 -- time in seconds to beat up NPC to prevent the police alert.
				},
				policeBonus = {
					enable = false, -- enable police bonus on drug sales.
					required = 3, -- required police to apply police-bonus
					percentage = 10 -- percentage added on-top of unit sell price. If price is $800 + 10% makes it $880
				},
				streetBonus = {
					enable = true, -- enable street bonus for selling this item.
					streets = { -- add streets and bonus in %. I eligibile for street bonus % is added on top of the unit sell.
						--['Grove St'] = 30,
						--['Forum Dr'] = 25,
						--['Jamestown St'] = 20,
						--['Clinton Ave'] = 15,
						-- add, remove or edit streets.
					}
				}
			},
						-- Drug item:
			{
				itemKey = 7, -- Config.Items[6]
				sell = {
					price = {min = 55, max = 63}, -- min and max base sell price
					amount = {min = 1, max = 4}, -- random amount to be sold, between min & max.
					chance = 50 -- chance in % to sell drugs to NPC.
				},
				report = { 
					chance = 100, -- chance in % of NPC calling the police on a failed drug-sale.
					timer = 0 -- time in seconds to beat up NPC to prevent the police alert.
				},
				policeBonus = {
					enable = false, -- enable police bonus on drug sales.
					required = 3, -- required police to apply police-bonus
					percentage = 10 -- percentage added on-top of unit sell price. If price is $800 + 10% makes it $880
				},
				streetBonus = {
					enable = true, -- enable street bonus for selling this item.
					streets = { -- add streets and bonus in %. I eligibile for street bonus % is added on top of the unit sell.
						--['Grove St'] = 30,
						--['Forum Dr'] = 25,
						--['Jamestown St'] = 20,
						--['Clinton Ave'] = 15,
						-- add, remove or edit streets.
					}
				}
			},
			-- Drug item: add more here if u want, copy paste the table from above. Make sure to add itemKey inside Config.Items in the top of Config.lua as well!
		},
	},

	ContractNPC = {
		Model = 'g_m_m_casrn_01', -- model of the contract NPC
		Pos = vector4(-75.10, -2005.18, 18.02, 79), -- pos of NPC
		Scenario = 'WORLD_HUMAN_AA_SMOKE', -- scenario of the NPC
		InteractDist = 1.5, -- distance to interact with NPC.
		Blip = {enable = true, name = 'Contract NPC', sprite = 671, display = 4, scale = 0.65, color = 5}, -- Blip settings for NPC
	},

	Rackets = {
		['protection'] = {
			label = 'Protection Racket',
			icon = 'shield', 
			claimed = false, -- do not touch!
			gang = nil, -- do not touch!
			cost = 0, -- costs of notoriety points to claim racket.
			data = {
				keybind = 38, -- keybind to collect/request protection money
				timer = 30, -- time in minutes to collect from a request.
				cash = {min = 2000, max = 10000},
				marker = {type = 29, size = {x = 0.35, y = 0.35, z = 0.35}, color = {r = 38, g = 194, b = 129, a = 100}, faceCamera = true, bobUpAndDown = true},
				notoriety = 10, -- amount of notoriety points added when collecting protection money.
				shops = {
					[1] = {
						coords = vector3(-77.57, -2030.28, 18.02),
						cache = {}, -- do not touch!
					},
					[2] = {
						coords = vector3(138.30, -1704.36, 29.27),
						cache = {}, -- do not touch!
					},
				},
			},
		},
		['prostitution'] = {
			label = 'Prostitution Racket',
			icon = 'person-dress',
			claimed = false, -- do not touch!
			gang = nil, -- do not touch!
			cost = 5, -- costs of notoriety points to claim racket.
			data = {
				peds = {'s_f_y_hooker_01', 's_f_y_hooker_02', 's_f_y_hooker_03', 's_f_y_stripper_01', 's_f_y_stripper_02'},
				damagePercentage = 20.0, -- cancel job if vehicle engine is damaged more than 20% from picking up the girl. ex. engine is 800 when picking up and during delivery engine goes to 639, then job cancels.
				notoriety = 10, -- amount of notoriety points added when job complete.
				jobs = {
					[1] = {
						pickup = vector4(147.15, -1597.83, 29.29, 243),
						dropoff = vector3(-13.87, -1847.35, 24.81),
						cash = {min = 100, max = 500},
					},
					[2] = {
						pickup = vector4(527.70, -1416.81, 29.22, 220),
						dropoff = vector3(473.60, -1583.51, 29.09),
						cash = {min = 100, max = 500},
					},
					[3] = {
						pickup = vector4(-54.16, -958.39, 29.33, 327),
						dropoff = vector3(317.29, 565.80, 154.42),
						cash = {min = 100, max = 500},
					},
					[4] = {
						pickup = vector4(-670.24, 2.18, 38.97, 206),
						dropoff = vector3(-1776.93, -356.77, 45.33),
						cash = {min = 100, max = 500},
					},
				},
			},
		},
	},

}

