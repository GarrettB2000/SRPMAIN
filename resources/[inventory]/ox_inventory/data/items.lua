return {
	['boostingtablet'] = {
		label = 'Fancy Tablet',
		weight = 0,
		description = "Seems like something's installed on this.",
		client = {
			image = "tablet.png",
		export = 'rahe-boosting.boostingtablet',
		}
	},
	['hackingdevice'] = {
		label = 'Hacking device',
		weight = 0,
		description = 'Will allow you to bypass vehicle security systems.',
		client = {
		export = 'rahe-boosting.hackingdevice',
		}
	},
	['gpshackingdevice'] = {
		label = 'GPS hacking device',
		weight = 0,
		description = 'If you wish to disable vehicle GPS systems.',
		client = {
		export = 'rahe-boosting.gpshackingdevice',
		}
	},
		["cryptostick"] = {
			label = "Crypto Stick",
			weight = 50,
			stack = false,
		},
		
		["phone_dongle"] = {
			label = "Phone Dongle",
			weight = 50,
			stack = false,
		},

		["drone"] = {
			label = "Police Drone",
			weight = 50,
			stack = false,
		},

		["powerbank"] = {
			label = "Power Bank",
			weight = 50,
			stack = false,
		},

		["watering_can"] = {
			label = "Watering can",
			weight = 500,
			stack = false,
			close = false,
			description = "Simple watering can",
			client = {
				image = "watering_can.png",
			}
		},
		
		["fertilizer"] = {
			label = "Fertilizer",
			weight = 500,
			stack = false,
			close = false,
			description = "Fertilizer",
			client = {
				image = "fertilizer.png",
			}
		},
		
		["advanced_fertilizer"] = {
			label = "Advanced fertilizer",
			weight = 500,
			stack = false,
			close = false,
			description = "Fertilizer with the litte extra",
			client = {
				image = "advanced_fertilizer.png",
			}
		},
		
		["liquid_fertilizer"] = {
			label = "Liquid Fertilizer",
			weight = 200,
			stack = false,
			close = false,
			description = "Basicly Water with nutrations",
			client = {
				image = "liquid_fertilizer.png",
			}
		},
		
		["weed_lemonhaze_seed"] = {
			label = "Weed Lemonhaze Seed",
			weight = 20,
			stack = true,
			close = true,
			description = "Weed Lemonhaze Seed",
			client = {
				image = "weed_lemonhaze_seed.png",
			}
		},
		
		["weed_lemonhaze"] = {
			label = "Weed Lemonhaze",
			weight = 20,
			stack = true,
			close = false,
			description = "Weed Lemonhaze",
			client = {
				image = "weed_lemonhaze.png",
			}
		},
		
		["coca_seed"] = {
			label = "Coca Seed",
			weight = 20,
			stack = true,
			close = true,
			description = "Coca Seed",
			client = {
				image = "coca_seed.png",
			}
		},
		
		["coca"] = {
			label = "Coca",
			weight = 20,
			stack = true,
			close = false,
			description = "Coca",
			client = {
				image = "coca.png",
			}
		},
		
		["paper"] = {
			label = "Paper",
			weight = 50,
			stack = true,
			close = false,
			description = "Paper",
			client = {
				image = "paper.png",
			}
		},
		
		["nitrous"] = {
			label = "Nitrous",
			weight = 500,
			stack = false,
			close = false,
			description = "Nitrous",
			client = {
				image = "nitrous.png",
			}
		},
		
		["cocaine"] = {
			label = "Cocaine",
			weight = 20,
			stack = true,
			close = true,
			description = "Small bag of cocaine",
			client = {
				image = "cocaine.png",
			}
		},
		
		["joint"] = {
			label = "Joint",
			weight = 10,
			stack = true,
			close = true,
			description = "Joint",
			client = {
				image = "joint.png",
			}
		},
		
		["weed_processing_table"] = {
			label = "Weed Processing Table",
			weight = 1000,
			stack = false,
			close = true,
			description = "Process some weed",
			client = {
				image = "weed_processing_table.png",
			}
		},
		
		["cocaine_processing_table"] = {
			label = "Cocaine Processing Table",
			weight = 1000,
			stack = false,
			close = true,
			description = "Process some cocaine",
			client = {
				image = "cocaine_processing_table.png",
			}
		},	
		
		['phone'] = {
			label = 'Classic Phone',
			weight = 150,
			stack = false,
			consume = 0,
			client = {
				export = "qs-smartphone-pro.UsePhoneItem",
				add = function(total)
					TriggerServerEvent('phone:itemAdd')
				end,
		
				remove = function(total)
					TriggerServerEvent('phone:itemDelete')
				end
			}
		},
		
		['black_phone'] = {
			label = 'Black Phone',
			weight = 150,
			stack = false,
			consume = 0,
			client = {
				export = "qs-smartphone-pro.UsePhoneItem",
				add = function(total)
					TriggerServerEvent('phone:itemAdd')
				end,
		
				remove = function(total)
					TriggerServerEvent('phone:itemDelete')
				end
			}
		},
		
		['yellow_phone'] = {
			label = 'Yellow Phone',
			weight = 150,
			stack = false,
			consume = 0,
			client = {
				export = "qs-smartphone-pro.UsePhoneItem",
				add = function(total)
					TriggerServerEvent('phone:itemAdd')
				end,
		
				remove = function(total)
					TriggerServerEvent('phone:itemDelete')
				end
			}
		},
		
		['red_phone'] = {
			label = 'Red Phone',
			weight = 150,
			stack = false,
			consume = 0,
			client = {
				export = "qs-smartphone-pro.UsePhoneItem",
				add = function(total)
					TriggerServerEvent('phone:itemAdd')
				end,
		
				remove = function(total)
					TriggerServerEvent('phone:itemDelete')
				end
			}
		},
		
		['green_phone'] = {
			label = 'Green Phone',
			weight = 150,
			stack = false,
			consume = 0,
			client = {
				export = "qs-smartphone-pro.UsePhoneItem",
				add = function(total)
					TriggerServerEvent('phone:itemAdd')
				end,
		
				remove = function(total)
					TriggerServerEvent('phone:itemDelete')
				end
			}
		},
		
		['white_phone'] = {
			label = 'White Phone',
			weight = 150,
			stack = false,
			consume = 0,
			client = {
				export = "qs-smartphone-pro.UsePhoneItem",
				add = function(total)
					TriggerServerEvent('phone:itemAdd')
				end,
		
				remove = function(total)
					TriggerServerEvent('phone:itemDelete')
				end
			}
		},
		["houselaptop"] = {
			label = "House laptop",
			weight = 1200,
			stack = false,
			close = false,
			description = "Can Probably Hack Something With This",
			client = {
				image = "houselaptop.png",
			}
		},
		["fakeplate"] = {
			label = "Fake Plates",
			weight = 1200,
			stack = false,
			close = false,
			description = "Used to keep the cops guessing.",
			client = {
				image = "fakeplate.png",
			}
		},
		["mansionlaptop"] = {
			label = "Mansion laptop",
			weight = 1200,
			stack = false,
			close = false,
			description = "Can Probably Hack Something With This",
			client = {
				image = "mansionlaptop.png",
			}
		},
		["art1"] = {
			label = "Kitty Sleeping Art",
			weight = 2500,
			stack = false,
			close = false,
			description = "This Is Too Cute",
			client = {
				image = "art1.png",
			}
		},
		["art2"] = {
			label = "Wide Eye Kitty Art",
			weight = 2500,
			stack = false,
			close = false,
			description = "This Is Too Cute",
			client = {
				image = "art2.png",
			}
		},
		["art3"] = {
			label = "Fancy Kitty Art",
			weight = 2500,
			stack = false,
			close = false,
			description = "This Is Too Cute",
			client = {
				image = "art3.png",
			}
		},
		["trucker_license"] = {
			label = "Trucker License",
			weight = 100,
			stack = false,
			close = false,
			description = "Trucker License",
			client = {
				image = "id_card.png",
			}
		},
		["taxi_license"] = {
			label = "Taxi License",
			weight = 100,
			stack = false,
			close = false,
			description = "Taxi License",
			client = {
				image = "id_card.png",
			}
		},
		["tow_license"] = {
			label = "Tow License",
			weight = 100,
			stack = false,
			close = false,
			description = "Tow License",
			client = {
				image = "id_card.png",
			}
		},
		["package"] = {
			label = "Stolen Package",
			weight = 100,
			stack = false,
			close = false,
			description = "Stolen Package",
			client = {
				image = "package.png",
			}
		},
		["tier2mail"] = {
			label = "Tier 2 Mail",
			weight = 100,
			stack = false,
			close = false,
			description = "Tier 2 Mail",
			client = {
				image = "tier2mail.png",
			}
		},
		["tier3mail"] = {
			label = "Tier 3 Mail",
			weight = 100,
			stack = false,
			close = false,
			description = "Tier 3 Mail",
			client = {
				image = "tier3mail.png",
			}
		},
		["tier4mail"] = {
			label = "Tier 4 Mail",
			weight = 100,
			stack = false,
			close = false,
			description = "Tier 4 Mail",
			client = {
				image = "tier4mail.png",
			}
		},
		["tier5mail"] = {
			label = "Tier 5 Mail",
			weight = 100,
			stack = false,
			close = false,
			description = "Tier 5 Mail",
			client = {
				image = "tier5mail.png",
			}
		},
		["garbage_license"] = {
			label = "Garbage License",
			weight = 100,
			stack = false,
			close = false,
			description = "Garbage License",
			client = {
				image = "id_card.png",
			}
		},
		["bus_license"] = {
			label = "Bus License",
			weight = 100,
			stack = false,
			close = false,
			description = "Bus License",
			client = {
				image = "id_card.png",
			}
		},

		["art4"] = {
			label = "Presidential Kitty Art",
			weight = 2500,
			stack = false,
			close = false,
			description = "Id Vote For This",
			client = {
				image = "art4.png",
			}
		},
		["art5"] = {
			label = "Obi Jesus Painting",
			weight = 2500,
			stack = false,
			close = false,
			description = "I Swore My Allegiance To The Force, To Heaven!",
			client = {
				image = "art5.png",
			}
		},
		["art6"] = {
			label = "Merp Kitty Art",
			weight = 2500,
			stack = false,
			close = false,
			description = "Merp",
			client = {
				image = "art6.png",
			}
		},
		["art7"] = {
			label = "Family Portait",
			weight = 2500,
			stack = false,
			close = false,
			description = "Smile",
			client = {
				image = "art7.png",
			}
		},
		["boombox"] = {
			label = "Boom Box",
			weight = 2500,
			stack = false,
			close = false,
			description = "How Did People Carry This",
			client = {
				image = "boombox.png",
			}
		},
		["boombox"] = {
			label = "Boom Box",
			weight = 2500,
			stack = false,
			close = false,
			description = "How Did People Carry This",
			client = {
				image = "boombox.png",
			}
		},
		["checkbook"] = {
			label = "Check Book",
			weight = 2500,
			stack = false,
			close = false,
			description = "Do People Use These?",
			client = {
				image = "checkbook.png",
			}
		},
		["mdlaptop"] = {
			label = "Slow Laptop",
			weight = 2500,
			stack = false,
			close = false,
			description = "Can I Download More Ram?",
			client = {
				image = "laptop.png",
			}
		},
		["mddesktop"] = {
			label = "Desktop",
			weight = 2500,
			stack = false,
			close = false,
			description = "I hope there isnt a virus",
			client = {
				image = "mddesktop.png",
			}
		},
		["mdmonitor"] = {
			label = "Monitor",
			weight = 2500,
			stack = false,
			close = false,
			description = "720HD bb",
			client = {
				image = "mdmonitor.png",
			}
		},
		["mdtablet"] = {
			label = "Tablet",
			weight = 2500,
			stack = false,
			close = false,
			description = "Never Will Give This Up",
			client = {
				image = "mdtablet.png",
			}
		},
		["mdspeakers"] = {
			label = "Speakers",
			weight = 2500,
			stack = false,
			close = false,
			description = "Is This Even Loud?",
			client = {
				image = "speaker.png",
			}
		},
		["smgparts"] = {
			label = "SMG Parts",
			weight = 100,
			stack = true,
			close = true,
			description = "SMG parts used for crafting.",
			client = {
				image = "smgparts.png",
			}
		},

		["rifleparts"] = {
			label = "Rifle Parts",
			weight = 100,
			stack = true,
			close = true,
			description = "Rifle parts used for crafting.",
			client = {
				image = "rifleparts.png",
			}
		},

		["spray"] = {
			label = "Spray Can",
			weight = 100,
			stack = true,
			close = true,
			description = "Spray can for doing art.",
			client = {
				image = "spray.png",
			}
		},

		["spray_remover"] = {
			label = "Spray Remover",
			weight = 100,
			stack = true,
			close = true,
			description = "Used for cleaning up spray.",
			client = {
				image = "spray_remover.png",
			}
		},

		["blueprint"] = {
			label = "Blueprint",
			weight = 100,
			stack = true,
			close = true,
			description = "Blueprint used for crafting.",
			client = {
				image = "blueprint.png",
			}
		},

		["black_phone"] = {
			label = "Black Phone",
			weight = 10,
			stack = false,
		},
		
		["pink_phone"] = {
			label = "Pink Phone",
			weight = 10,
			stack = false,
		},
		
		["blue_phone"] = {
			label = "Blue Phone",
			weight = 10,
			stack = false,
		},
		
		["red_phone"] = {
			label = "Red Phone",
			weight = 10,
			stack = false,
		},
		
		["classic_phone"] = {
			label = "Classic Phone",
			weight = 10,
			stack = false,
		},
		
		["gold_phone"] = {
			label = "Gold Phone",
			weight = 10,
			stack = false,
		},
		
		["greenlight_phone"] = {
			label = "Green Light Phone",
			weight = 10,
			stack = false,
		},
		
		["green_phone"] = {
			label = "Green Phone",
			weight = 10,
			stack = false,
		},
		
		["white_phone"] = {
			label = "White Phone",
			weight = 10,
			stack = false,
		},
		
		["wet_black_phone"] = {
			label = "Wet Black Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_blue_phone"] = {
			label = "Wet Blue Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_classic_phone"] = {
			label = "Wet Classic Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_gold_phone"] = {
			label = "Wet Gold Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_greenlight_phone"] = {
			label = "Wet Green Light Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_green_phone"] = {
			label = "Wet Green Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_phone"] = {
			label = "Wet Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_pink_phone"] = {
			label = "Wet Pink Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_red_phone"] = {
			label = "Wet Red Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["wet_white_phone"] = {
			label = "Wet White Phone",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["powerbank"] = {
			label = "Power Bank",
			weight = 10,
			stack = true,
			close = true,
		},
		
		["phone_module"] = {
			label = "Phone Module",
			weight = 10,
			stack = true,
			close = true,
		},
		-- CRYPTO
		['shitgpu'] = {
			label = 'A trash gpu',
			weight = 0,
			stack = false,
			close = true,
			description = 'Just look at it, what do you expect!',
			client = {
				image = 'shitgpu.png',
			},
		},
		
		['1050gpu'] = {
			label = 'gtx 1050',
			weight = 0,
			stack = false,
			close = true,
			description = 'It does the job for its price.',
			client = {
				image = '1050.png',
			},
		},
		
		['1060gpu'] = {
			label = 'gtx 1060',
			weight = 0,
			stack = false,
			close = true,
			description = 'A good upgrade if you are broke.',
			client = {
				image = '1060.png',
			},
		},
		
		['1080gpu'] = {
			label = 'gtx 1080',
			weight = 0,
			stack = false,
			close = true,
			description = 'It must be good since it got 3 fans right?',
			client = {
				image = '1080.png',
			},
		},
		
		['2080gpu'] = {
			label = 'RTX 2080',
			weight = 0,
			stack = false,
			close = true,
			description = 'WOOW!! A new look! Then This is the one.',
			client = {
				image = '2080.png',
			},
		},
		
		['3060gpu'] = {
			label = 'RTX 3060',
			weight = 0,
			stack = false,
			close = true,
			description = 'IDK Man! Its so expensive.',
			client = {
				image = '3060.png',
			},
		},
		
		['4090gpu'] = {
			label = 'RTX 4090',
			weight = 0,
			stack = false,
			close = true,
			description = 'Is it just me or this looks kinda thicc?',
			client = {
				image = '4090.png',
			},
		},
		
		['thermalpast'] = {
			label = 'Thermal Paste',
			weight = 0,
			stack = false,
			close = true,
			description = 'A thermal paste to keep your CPU chilling.',
			client = {
				image = 'thermalpast.png',
			},
		},

		-- Joints
		["premium_joint"] = {
			label = "Premium Joint",
			weight = 3,
			stack = true,
			close = true,
			description = "Big Doinks!!",
			client = {
				image = "joint1.png",
			}
		},

		["snoopjoint"] = {
			label = "Snoops Delights",
			weight = 3,
			stack = true,
			close = true,
			description = "Snoops hand crafted wax joints",
			client = {
				image = "snoopjoint.png",
			}
		},

		["purplecookiekush_joint"] = {
			label = "Purple Cookie Kush Joint",
			weight = 2,
			stack = true,
			close = true,
			description = "Damn This Shit Gas!",
			client = {
				image = "PurpleCookieKush_Joint.png",
			}
		},

		["bluedream_joint"] = {
			label = "Blue Dream Joint",
			weight = 2,
			stack = true,
			close = true,
			description = "Big Doinks!!",
			client = {
				image = "joint2.png",
			}
		},

		["weddingcake_joint"] = {
			label = "Wedding Cake Joint",
			weight = 2,
			stack = true,
			close = true,
			description = "Big Doinks!!",
			client = {
				image = "joint4.png",
			}
		},

		["afghankush_joint"] = {
			label = "Afghan Kush Joint",
			weight = 2,
			stack = true,
			close = true,
			description = "Big Doinks!!",
			client = {
				image = "joint6.png",
			}
		},

		["spycam"] = {
			label = "Spy Cam",
			weight = 200,
			stack = true,
			close = true,
			description = "Spy on your enemies with this camera.",
			client = {
				image = "spycam.png",
			}
		},

		["spycam_tablet"] = {
			label = "Spy Cam Tablet",
			weight = 200,
			stack = true,
			close = true,
			description = "Tablet used for viewing cameras.",
			client = {
				image = "spycam_tablet.png",
			}
		},

		["grandaddypurp_joint"] = {
			label = "Grandaddy Purp Joint",
			weight = 2,
			stack = true,
			close = true,
			description = "Big Doinks!!",
			client = {
				image = "grandaddypurp_joint.png",
			}
		},

		["jackherrer_joint"] = {
			label = "Jack Herrer Joint",
			weight = 2,
			stack = true,
			close = true,
			description = "Big Doinks!!",
			client = {
				image = "joint7.png",
			}
		},

		["bestbuds_joint"] = {
			label = "Best Buds Joint",
			weight = 3,
			stack = true,
			close = true,
			description = "Best Buds Exclusive",
			client = {
				image = "bestbuds_joint.png",
			}
		},

		["whitewidow_joint"] = {
			label = "White Widow Joint",
			weight = 3,
			stack = true,
			close = true,
			description = "White Widows Exclusive",
			client = {
				image = "whitewidow_joint.png",
			}
		},

		["weed_bud"] = {
			label = "Weed Bud",
			weight = 1,
			stack = true,
			close = true,
			description = "Weed Bud",
			client = {
				image = "weed_bud.png",
			}
		},

		-- Eddibles

		["bluedream_gummie"] = {
			label = "Blue Dream Gummie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "bluedream_gummie.png",
			}
		},

		["rasberrykush_gummie"] = {
			label = "Rasberry Kush Gummie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "rasberrykush_gummie.png",
			}
		},

		["grandaddypurp_gummie"] = {
			label = "Grandaddy Purp Gummie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "grandaddypurp_gummie.png",
			}
		},

		["rainbowbelts_gummie"] = {
			label = "Rainbow Belts Gummie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "rainbowbelts_gummie.png",
			}
		},

		["snickerdoodle_cookie"] = {
			label = "Snicker Doodle Cookie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "snickerdoodle_cookie.png",
			}
		},

		["chocolatechip_cookie"] = {
			label = "Chocolate Chip Cookie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "chocolatechip_cookie.png",
			}
		},

		["peanutbutter_cookie"] = {
			label = "Peanut Butter Cookie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "peanutbutter_cookie.png",
			}
		},

		["crispytreat_cookie"] = {
			label = "Crispy Treat Cookie",
			weight = 2,
			stack = true,
			close = true,
			description = "Snacks with a twist",
			client = {
				image = "crispytreat_cookie.png",
			}
		},

		-- Chems
		["ephedrine"] = {
			label = "Ephedrine",
			weight = 200,
			stack = true,
			close = false,
			description = "make some meth",
			client = {
				image = "ephedrine.png",
			}
		},

		["aluminumoxide"] = {
			label = "Aluminium Powder",
			weight = 100,
			stack = true,
			close = false,
			description = "Some powder to mix with",
			client = {
				image = "aluminumoxide.png",
			}
		},

		["ironoxide"] = {
			label = "Iron Powder",
			weight = 100,
			stack = true,
			close = false,
			description = "Some powder to mix with",
			client = {
				image = "ironoxide.png",
			}
		},

		["hydrochloricacid"] = {
			label = "Hydrochloric Acid",
			weight = 200,
			stack = true,
			close = false,
			description = "What's this for?",
			client = {
				image = "hydrochloricacid.png",
			}
		},

		["trimmers"] = {
			label = "Trimmers",
			weight = 200,
			stack = true,
			close = false,
			description = "Trim some weed.",
			client = {
				image = "trimmers.png",
			}
		},

		["acetone"] = {
			label = "Acetone",
			weight = 200,
			stack = true,
			close = false,
			description = "make some meth",
			client = {
				image = "acetone.png",
			}
		},

		-- DRIFT
		["driftkey"] = {
			label = "Drift Key",
			weight = 5,
			stack = true,
			close = true,
			description = "A usb with drift knowledge.",
			client = {
				image = "driftkey.png",
			}
		},
		-- Coke
		["crack_baggy"] = {
			label = "Bag of Crack",
			weight = 50,
			stack = true,
			close = true,
			description = "To get happy faster.",
			client = {
				image = "crack_baggy.png",
			}
		},

		["cokebaggy"] = {
			label = "Bag of Coke",
			weight = 42,
			stack = true,
			close = true,
			description = "The devil's Drug",
			client = {
				image = "cocaine_baggy.png",
			}
		},

		--md-drugs copy and paste below items to ox_inventory/data/items.lua
		["coke"] = {
			label = "Raw Cocaine",
			weight = 100,
			stack = true,
			close = false,
			description = "Raw Cocaine",
			client = {
				image = "coke.png",
			}
		},
		["empty_weed_bag"] = {
			label = "Empty Bag",
			weight = 1000,
			stack = true,
			close = false,
			description = "Empty Bag To Put Product In",
			client = {
				image = "weed_baggy_empty.png",
			}
		},
		["coca_leaf"] = {
			label = "Cocaine leaves",
			weight = 7.8,
			stack = true,
			close = false,
			description = "Cocaine leaves that must be processed !",
			client = {
				image = "coca_leaf.png",
			}
		},
		["poppyresin"] = {
			label = "Poppy resin",
			weight = 10,
			stack = true,
			close = false,
			description = "It sticks to your fingers when you handle it.",
			client = {
				image = "poppyresin.png",
			}
		},
		["heroin"] = {
			label = "Weak Heroin Powder",
			weight = 500,
			stack = true,
			close = true,
			description = "Dragon Chasin?",
			client = {
				image = "loosecoke.png",
			}
		},
		["bakingsoda"] = {
			label = "Baking Soda",
			weight = 300,
			stack = true,
			close = false,
			description = "Household Baking Soda!",
			client = {
				image = "bakingsoda.png",
			}
		},
		["lysergic_acid"] = {
			label = "Lysergic Acid",
			weight = 100,
			stack = true,
			close = true,
			description = "Acid to make acid?",
			client = {
				image = "lysergic_acid.png",
			}
		},
		["diethylamide"] = {
			label = "Diethylamide",
			weight = 100,
			stack = true,
			close = true,
			description = "die? I sure hope not!",
			client = {
				image = "diethylamide.png",
			}
		},
		["lsd_one_vial"] = {
			label = "Tier 1 LSD Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Full LSD Vial",
			client = {
				image = "lsd_one_vial.png",
			}
		},
		["lsd_vial_two"] = {
			label = "Tier 2 LSD Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Vial Of LSD",
			client = {
				image = "lsd_vial_two.png",
			}
		},
		["lsd_vial_three"] = {
			label = "Tier 3 LSD Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Vial Of LSD",
			client = {
				image = "lsd_vial_three.png",
			}
		},
		["lsd_vial_four"] = {
			label = "Tier 4 LSD Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Vial Of LSD",
			client = {
				image = "lsd_vial_four.png",
			}
		},
		["lsd_vial_five"] = {
			label = "Tier 5 LSD Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Vial Of LSD",
			client = {
				image = "lsd_vial_five.png",
			}
		},
		["lsd_vial_six"] = {
			label = "Tier 6 LSD Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Vial Of LSD",
			client = {
				image = "lsd_vial_six.png",
			}
		},
		["tab_paper"] = {
			label = "Tab Paper",
			weight = 100,
			stack = true,
			close = true,
			description = "Paper To Dip LSD On",
			client = {
				image = "tab_paper.png",
			}
		},
		["smileyfacesheet"] = {
			label = "Smiley Face Sheet",
			weight = 100,
			stack = true,
			close = true,
			description = "You Are Cute When You Smile - Creepy Dudes",
			client = {
				image = "smileysheet.png",
			}
		},
		["wildcherrysheet"] = {
			label = "Wild Cherry Sheet",
			weight = 100,
			stack = true,
			close = true,
			description = "Lets Get Wild",
			client = {
				image = "wildcherrysheet.png",
			}
		},
		["yinyangsheet"] = {
			label = "Yin and Yang Sheet",
			weight = 100,
			stack = true,
			close = true,
			description = "All Together In Harmony",
			client = {
				image = "yinyangsheet.png",
			}
		},
		["pineapplesheet"] = {
			label = "Pineapple Sheet",
			weight = 100,
			stack = true,
			close = true,
			description = "When You Hold It Upside It Means Something Different",
			client = {
				image = "pineapplesheet.png",
			}
		},
		["bartsheet"] = {
			label = "Cluckin Sheet",
			weight = 100,
			stack = true,
			close = true,
			description = "A Cluckin Good Time",
			client = {
				image = "bartsheet.png",
			}
		},
		["gratefuldeadsheet"] = {
			label = "Maze Sheet",
			weight = 100,
			stack = true,
			close = true,
			description = "I heard Its aMAZEing.. get it.. ill stop now",
			client = {
				image = "gratefuldeadsheet.png",
			}
		},
		["smiley_tabs"] = {
			label = "Smiley Tabs",
			weight = 100,
			stack = true,
			close = true,
			description = "You Are Cute When You Smile - Creepy Dudes",
			client = {
				image = "smiley_tabs.png",
			}
		},
		["wildcherry_tabs"] = {
			label = "Wild Cherry Tabs",
			weight = 100,
			stack = true,
			close = true,
			description = "Lets Get Wild",
			client = {
				image = "wildcherry_tabs.png",
			}
		},
		["yinyang_tabs"] = {
			label = "Yin and Yang Tabs",
			weight = 100,
			stack = true,
			close = true,
			description = "All Together In Harmony",
			client = {
				image = "yinyang_tabs.png",
			}
		},
		["pineapple_tabs"] = {
			label = "Pineapple Tabs",
			weight = 100,
			stack = true,
			close = true,
			description = "When You Hold It Upside It Means Something Different",
			client = {
				image = "pineapple_tabs.png",
			}
		},
		["bart_tabs"] = {
			label = "Cluckin Tabs",
			weight = 100,
			stack = true,
			close = true,
			description = "A Cluckin Good Time",
			client = {
				image = "bart_tabs.png",
			}
		},
		["gratefuldead_tabs"] = {
			label = "Maze Tabs",
			weight = 100,
			stack = true,
			close = true,
			description = "I heard Its aMAZEing.. get it.. ill stop now",
			client = {
				image = "gratefuldead_tabs.png",
			}
		},
		["lsdlabkit"] = {
			label = "LSD Mixing Table",
			weight = 1000,
			stack = true,
			close = true,
			description = "How Can A Big Ass Table Fit In One Slot",
			client = {
				image = "labkit.png",
			}
		},
		["heroinstagetwo"] = {
			label = "Better Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Raw Heroin",
			client = {
				image = "cokestagetwo.png",
			}
		},
		["heroinstagethree"] = {
			label = "Best Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Raw Heroin",
			client = {
				image = "cokestagethree.png",
			}
		},
		["heroincut"] = {
			label = "Cut Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Cut Heroin",
			client = {
				image = "loosecoke.png",
			}
		},
		["heroincutstagetwo"] = {
			label = "Better Cut Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Cut Heroin",
			client = {
				image = "loosecokestagetwo.png",
			}
		},
		["heroincutstagethree"] = {
			label = "Best Cut Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Cut Heroin",
			client = {
				image = "loosecokestagethree.png",
			}
		},
		["heroinlabkit"] = {
			label = "Heroin Lab Kit",
			weight = 250,
			stack = true,
			close = false,
			description = "How Can A Big Ass Table Fit In One Slot",
			client = {
				image = "labkit.png",
			}
		},
		["heroinvial"] = {
			label = "Vial Of Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Hmm, Maybe A Needle Can Help",
			client = {
				image = "heroin.png",
			}
		},
		["heroinvialstagetwo"] = {
			label = "Better Vial of Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Hmm, Maybe A Needle Can Help",
			client = {
				image = "heroinstagetwo.png",
			}
		},
		["heroinvialstagethree"] = {
			label = "Best Vial Of Heroin",
			weight = 250,
			stack = true,
			close = false,
			description = "Hmm, Maybe A Needle Can Help",
			client = {
				image = "heroinstagethree.png",
			}
		},
		["heroin_ready"] = {
			label = "Heroin Syringe",
			weight = 250,
			stack = true,
			close = false,
			description = "Go On, Chase The Dragon",
			client = {
				image = "heroin_ready.png",
			}
		},
		["heroin_readystagetwo"] = {
			label = "Heroin Syringe 2",
			weight = 250,
			stack = true,
			close = false,
			description = "Go On, Chase The Dragon",
			client = {
				image = "heroin_readystagetwo.png",
			}
		},
		["heroin_readystagethree"] = {
			label = "Heroin Syringe 3",
			weight = 250,
			stack = true,
			close = false,
			description = "Go On, Chase The Dragon",
			client = {
				image = "heroin_readystagethree.png",
			}
		},
		["emptyvial"] = {
			label = "Empty Vial",
			weight = 100,
			stack = true,
			close = true,
			description = "Hmm, What Can Go In This?",
			client = {
				image = "emptyvial.png",
			}
		},
		["needle"] = {
			label = "Syringe",
			weight = 250,
			stack = true,
			close = false,
			description = "I Swear Officer, Its For Diabetes",
			client = {
				image = "syringe.png",
			}
		},
		["crackrock"] = {
			label = "Crack Rock",
			weight = 250,
			stack = true,
			close = false,
			description = "This Isnt The Rock The Hippie Girl Told Me About",
			client = {
				image = "crackrock1.png",
			}
		},
		["crackrockstagetwo"] = {
			label = "Better Crack Rock",
			weight = 250,
			stack = true,
			close = false,
			description = "This Rocks!",
			client = {
				image = "crackrock2.png",
			}
		},
		["crackrockstagethree"] = {
			label = "Best Crack Rock",
			weight = 250,
			stack = true,
			close = false,
			description = "This Rocks!",
			client = {
				image = "crackrock3.png",
			}
		},
		["baggedcracked"] = {
			label = "Bag Of Crack",
			weight = 250,
			stack = true,
			close = false,
			description = "Bags Of Crack",
			client = {
				image = "crackbag1.png",
			}
		},
		["baggedcrackedstagetwo"] = {
			label = "Better Bag Of Crack",
			weight = 250,
			stack = true,
			close = false,
			description = "Bags Of Crack",
			client = {
				image = "crackbag2.png",
			}
		},
		["baggedcrackedstagethree"] = {
			label = "Best Bag Of Crack",
			weight = 250,
			stack = true,
			close = false,
			description = "Bags Of Crack",
			client = {
				image = "crackbag3.png",
			}
		},
		["shrooms"] = {
			label = "Shrooms",
			weight = 250,
			stack = true,
			close = false,
			description = "Holy Shit ake mushroom",
			client = {
				image = "shrooms.png",
			}
		},
		["prescription_pad"] = {
			label = "Prescription Pad",
			weight = 10,
			stack = true,
			close = false,
			description = "Write Your Prescriptions here",
			client = {
				image = "prescriptionpad.png",
			}
		},
		["vicodin_prescription"] = {
			label = "Vicie Prescription",
			weight = 250,
			stack = true,
			close = false,
			description = "If Only This Helped With The Pain inside",
			client = {
				image = "adderalprescription.png",
			}
		},
		["adderal_prescription"] = {
			label = "Mdderal Prescription",
			weight = 250,
			stack = true,
			close = false,
			description = "I CAN DO EVERYTHING",
			client = {
				image = "adderalprescription.png",
			}
		},
		["morphine_prescription"] = {
			label = "Morphin Prescription",
			weight = 250,
			stack = true,
			close = false,
			description = "I Cant Feel Anything",
			client = {
				image = "adderalprescription.png",
			}
		},
		["xanax_prescription"] = {
			label = "Zany Prescription",
			weight = 250,
			stack = true,
			close = false,
			description = "Ahhh Sweet Comfort",
			client = {
				image = "adderalprescription.png",
			}
		},
		["adderal"] = {
			label = "Madderal",
			weight = 100,
			stack = true,
			close = true,
			description = "If Only This Helped With The Pain inside",
			client = {
				image = "adderal.png",
			}
		},
		["vicodin"] = {
			label = "Vicie",
			weight = 100,
			stack = true,
			close = true,
			description = "I CAN DO EVERYTHING",
			client = {
				image = "vicodin.png",
			}
		},
		["morphine"] = {
			label = "Morphin",
			weight = 100,
			stack = true,
			close = true,
			description = "I Cant Feel Anything",
			client = {
				image = "morphine.png",
			}
		},
		["xanax"] = {
			label = "Zany",
			weight = 100,
			stack = true,
			close = true,
			description = "Ahhh Sweet Comfort",
			client = {
				image = "xanax.png",
			}
		},
		["adderalbottle"] = {
			label = "Madderal Bottle",
			weight = 100,
			stack = true,
			close = true,
			description = "Bottles Of Good Drugs",
			client = {
				image = "pillbottle.png",
			}
		},
		["vicodinbottle"] = {
			label = "Vicie Bottle",
			weight = 100,
			stack = true,
			close = true,
			description = "Bottles Of Good Drugs",
			client = {
				image = "pillbottle.png",
			}
		},
		["morphinebottle"] = {
			label = "Morphin Bottle",
			weight = 100,
			stack = true,
			close = true,
			description = "Bottles Of Good Drugs",
			client = {
				image = "pillbottle.png",
			}
		},
		["xanaxbottle"] = {
			label = "Zany Bottle",
			weight = 100,
			stack = true,
			close = true,
			description = "Bottle Of Good Drugs",
			client = {
				image = "pillbottle.png",
			}
		},
		["isosafrole"] = {
			label = "Isosafrole",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "isosafrole.png",
			}
		},
		["mdp2p"] = {
			label = "MDP2P",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "mdp2p.png",
			}
		},
		["raw_xtc"] = {
			label = "Raw XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "raw_xtc.png",
			}
		},
		["singlepress"] = {
			label = "Single Pill Press",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "pillpress.png",
			}
		},
		["white_xtc"] = {
			label = "1 Stack White XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedwhite.png",
			}
		},
		["white_xtc2"] = {
			label = "2 Stack White XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedwhite.png",
			}
		},
		["white_xtc3"] = {
			label = "3 Stack White XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedwhite.png",
			}
		},
		["white_xtc4"] = {
			label = "4 Stack White XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedwhite.png",
			}
		},
		["red_xtc"] = {
			label = "1 Stack Red XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedred.png",
			}
		},
		["red_xtc2"] = {
			label = "2 Stack Red XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedred.png",
			}
		},
		["red_xtc3"] = {
			label = "3 Stack Red XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedred.png",
			}
		},
		["red_xtc4"] = {
			label = "4 Stack Red XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedred.png",
			}
		},
		["orange_xtc"] = {
			label = "1 Stack Orange XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedorange.png",
			}
		},
		["orange_xtc2"] = {
			label = "2 Stack Orange XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedorange.png",
			}
		},
		["orange_xtc3"] = {
			label = "3 Stack Orange XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedorange.png",
			}
		},
		["orange_xtc4"] = {
			label = "4 Stack Orange XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedorange.png",
			}
		},
		["blue_xtc"] = {
			label = "1 Stack Blue XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedblue.png",
			}
		},
		["blue_xtc2"] = {
			label = "2 Stack Blue XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedblue.png",
			}
		},
		["blue_xtc3"] = {
			label = "3 Stack Blue XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedblue.png",
			}
		},
		["blue_xtc4"] = {
			label = "4 Stack Blue XTC",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "unstampedblue.png",
			}
		},
		["white_playboys"] = {
			label = "1 Stack White Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_white.png",
			}
		},
		["white_playboys2"] = {
			label = "2 Stack White Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_white.png",
			}
		},
		["white_playboys3"] = {
			label = "3 Stack White Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_white.png",
			}
		},
		["white_playboys4"] = {
			label = "4 Stack White Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_white.png",
			}
		},
		["blue_playboys"] = {
			label = "1 Stack Blue Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_blue.png",
			}
		},
		["blue_playboys2"] = {
			label = "2 Stack Blue Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_blue.png",
			}
		},
		["blue_playboys3"] = {
			label = "3 Stack Blue Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_blue.png",
			}
		},
		["blue_playboys4"] = {
			label = "4 Stack Blue Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_blue.png",
			}
		},
		["red_playboys"] = {
			label = "1 Stack Red Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_red.png",
			}
		},
		["red_playboys2"] = {
			label = "2 Stack Red Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_red.png",
			}
		},
		["red_playboys3"] = {
			label = "3 Stack Red Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_red.png",
			}
		},
		["red_playboys4"] = {
			label = "4 Stack Red Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_red.png",
			}
		},
		["orange_playboys"] = {
			label = "1 Stack Orange Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_orange.png",
			}
		},
		["orange_playboys2"] = {
			label = "2 Stack Orange Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_orange.png",
			}
		},
		["orange_playboys3"] = {
			label = "3 Stack Orange Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_orange.png",
			}
		},
		["orange_playboys4"] = {
			label = "4 Stack Orange Fruit",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "playboy_orange.png",
			}
		},
		["white_aliens"] = {
			label = "1 Stack White Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_white.png",
			}
		},
		["white_aliens2"] = {
			label = "2 Stack White Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_white.png",
			}
		},
		["white_aliens3"] = {
			label = "3 Stack White Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_white.png",
			}
		},
		["white_aliens4"] = {
			label = "4 Stack White Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_white.png",
			}
		},
		["blue_aliens"] = {
			label = "1 Stack Blue Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_blue.png",
			}
		},
		["blue_aliens2"] = {
			label = "2 Stack Blue Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_blue.png",
			}
		},
		["blue_aliens3"] = {
			label = "3 Stack Blue Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_blue.png",
			}
		},
		["blue_aliens4"] = {
			label = "4 Stack Blue Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_blue.png",
			}
		},
		["red_aliens"] = {
			label = "1 Stack Red Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_red.png",
			}
		},
		["red_aliens2"] = {
			label = "2 Stack Red Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_red.png",
			}
		},
		["red_aliens3"] = {
			label = "3 Stack Red Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_red.png",
			}
		},
		["red_aliens4"] = {
			label = "4 Stack Red Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_red.png",
			}
		},
		["orange_aliens"] = {
			label = "1 Stack Orange Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_orange.png",
			}
		},
		["orange_aliens2"] = {
			label = "2 Stack Orange Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_orange.png",
			}
		},
		["orange_aliens3"] = {
			label = "3 Stack Orange Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_orange.png",
			}
		},
		["orange_aliens4"] = {
			label = "4 Stack Orange Aliens",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "alien_orange.png",
			}
		},
		["white_pl"] = {
			label = "1 Stack White PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_white.png",
			}
		},
		["white_pl2"] = {
			label = "2 Stack White PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_white.png",
			}
		},
		["white_pl3"] = {
			label = "3 Stack White PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_white.png",
			}
		},
		["white_pl4"] = {
			label = "4 Stack White PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_white.png",
			}
		},
		["blue_pl"] = {
			label = "1 Stack Blue PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_blue.png",
			}
		},
		["blue_pl2"] = {
			label = "2 Stack Blue PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_blue.png",
			}
		},
		["blue_pl3"] = {
			label = "3 Stack Blue PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_blue.png",
			}
		},
		["blue_pl4"] = {
			label = "4 Stack Blue PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_blue.png",
			}
		},
		["red_pl"] = {
			label = "1 Stack Red PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_red.png",
			}
		},
		["red_pl2"] = {
			label = "2 Stack Red PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_red.png",
			}
		},
		["red_pl3"] = {
			label = "3 Stack Red PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_red.png",
			}
		},
		["red_pl4"] = {
			label = "4 Stack Red PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_red.png",
			}
		},
		["orange_pl"] = {
			label = "1 Stack Orange PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_orange.png",
			}
		},
		["orange_pl2"] = {
			label = "2 Stack Orange PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_orange.png",
			}
		},
		["orange_pl3"] = {
			label = "3 Stack Orange PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_orange.png",
			}
		},
		["orange_pl4"] = {
			label = "4 Stack Orange PL",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "PL_orange.png",
			}
		},
		["white_trolls"] = {
			label = "1 Stack White Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_white.png",
			}
		},
		["white_trolls2"] = {
			label = "2 Stack White Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_white.png",
			}
		},
		["white_trolls3"] = {
			label = "3 Stack White Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_white.png",
			}
		},
		["white_trolls4"] = {
			label = "4 Stack White Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_white.png",
			}
		},
		["blue_trolls"] = {
			label = "1 Stack Blue Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_blue.png",
			}
		},
		["blue_trolls2"] = {
			label = "2 Stack Blue Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_blue.png",
			}
		},
		["blue_trolls3"] = {
			label = "3 Stack Blue Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_blue.png",
			}
		},
		["blue_trolls4"] = {
			label = "4 Stack Blue Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_blue.png",
			}
		},
		["red_trolls"] = {
			label = "1 Stack Red Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_red.png",
			}
		},
		["red_trolls2"] = {
			label = "2 Stack Red Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_red.png",
			}
		},
		["red_trolls3"] = {
			label = "3 Stack Red Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_red.png",
			}
		},
		["red_trolls4"] = {
			label = "4 Stack Red Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_red.png",
			}
		},
		["orange_trolls"] = {
			label = "1 Stack Orange Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_orange.png",
			}
		},
		["orange_trolls2"] = {
			label = "2 Stack Orange Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_orange.png",
			}
		},
		["orange_trolls3"] = {
			label = "3 Stack Orange Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_orange.png",
			}
		},
		["orange_trolls4"] = {
			label = "4 Stack Orange Trolls",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "troll_orange.png",
			}
		},
		["white_cats"] = {
			label = "1 Stack White Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_white.png",
			}
		},
		["white_cats2"] = {
			label = "2 Stack White Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_white.png",
			}
		},
		["white_cats3"] = {
			label = "3 Stack White Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_white.png",
			}
		},
		["white_cats4"] = {
			label = "4 Stack White Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_white.png",
			}
		},
		["blue_cats"] = {
			label = "1 Stack Blue Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_blue.png",
			}
		},
		["blue_cats2"] = {
			label = "2 Stack Blue Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_blue.png",
			}
		},
		["blue_cats3"] = {
			label = "3 Stack Blue Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_blue.png",
			}
		},
		["blue_cats4"] = {
			label = "4 Stack Blue Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_blue.png",
			}
		},
		["red_cats"] = {
			label = "1 Stack Red Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_red.png",
			}
		},
		["red_cats2"] = {
			label = "2 Stack Red Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_red.png",
			}
		},
		["red_cats3"] = {
			label = "3 Stack Red Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_red.png",
			}
		},
		["red_cats4"] = {
			label = "4 Stack Red Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_red.png",
			}
		},
		["orange_cats"] = {
			label = "1 Stack Orange Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_orange.png",
			}
		},
		["orange_cats2"] = {
			label = "2 Stack Orange Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_orange.png",
			}
		},
		["orange_cats3"] = {
			label = "3 Stack Orange Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_orange.png",
			}
		},
		["orange_cats4"] = {
			label = "4 Stack Orange Cats",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "kitty_orange.png",
			}
		},
		["dualpress"] = {
			label = "Dual Pill Press",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "pillpress.png",
			}
		},
		["triplepress"] = {
			label = "Triple Pill Press",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "pillpress.png",
			}
		},
		["quadpress"] = {
			label = "Quad Pill Press",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "pillpress.png",
			}
		},
		["spores"] = {
			label = "Spores",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "shrooms.png",
			}
		},
		["cokeburner"] = {
			label = "Coke Burner",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "gta5phone.png",
			}
		},
		["crackburner"] = {
			label = "Crack Burner",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "gta5phone.png",
			}
		},
		["heroinburner"] = {
			label = "Heroin Burner",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "gta5phone.png",
			}
		},
		["lsdburner"] = {
			label = "LSD Burner",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "gta5phone.png",
			}
		},
		["cactusbulb"] = {
			label = "Cactus Bulb",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "cactusbulb.png",
			}
		},
		["driedmescaline"] = {
			label = "Mescaline",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "driedmescaline.png",
			}
		},
		["mdlean"] = {
			label = "Sizzurup",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "Sizzurup.png",
			}
		},
		["mdreddextro"] = {
			label = "Red Dextro",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "reddextro.png",
			}
		},
		["wetcannabis"] = {
			label = "Wet Cannabis",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "wetcannabis.png",
			}
		},
		["drycannabis"] = {
			label = "Dry Cannabis",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "driedcannabis.png",
			}
		},
		["weedgrinder"] = {
			label = "Weed Grinder",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "weedgrinder.png",
			}
		},
		["mdbutter"] = {
			label = "Butter",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "butter.png",
			}
		},
		["cannabutter"] = {
			label = "Canna-Butter",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "cannabutter.png",
			}
		},
		["specialbrownie"] = {
			label = "Special Brownie",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "chocolate.png",
			}
		},
		["specialcookie"] = {
			label = "Special Cookie",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "specialcookie.png",
			}
		},
		["specialmuffin"] = {
			label = "Special Muffin",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "specialmuffin.png",
			}
		},
		["specialchocolate"] = {
			label = "Special Chocolate",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "specialchocolate.png",
			}
		},
		["grindedweed"] = {
			label = "Keef",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "keef.png",
			}
		},
		["flour"] = {
			label = "Flour",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "flour.png",
			}
		},
		["chocolate"] = {
			label = "Chocolate",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "chocolate.png",
			}
		},
		["ephedrine"] = {
			label = "Ephedrine",
			weight = 100,
			stack = true,
			close = true,
			description = "Ephedrine",
			client = {
				image = "ephedrine.png",
			}
		},
		["acetone"] = {
			label = "Acetone",
			weight = 100,
			stack = true,
			close = true,
			description = "Acetone",
			client = {
				image = "acetone.png",
			}
		},
		["methbags"] = {
			label = "Meth",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "methbags.png",
			}
		},
		["blunt"] = {
			label = "Blunts",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "blunt.png",
			}
		},
		["butane"] = {
			label = "Butane",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "butane.png",
			}
		},
		["butanetorch"] = {
			label = "Butane Torch",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "butanetorch.png",
			}
		},
		["dabrig"] = {
			label = "Dab Rig",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "dabrig2.png",
			}
		},
		["mdwoods"] = {
			label = "MDWOODS",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "mdwoods.png",
			}
		},
		["ciggie"] = {
			label = "Ciggie",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "ciggie.png",
			}
		},
		["tobacco"] = {
			label = "Tobacco",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "tobacco.png",
			}
		},
		["shatter"] = {
			label = "Shatter",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "shatter.png",
			}
		},
		["bluntwrap"] = {
			label = "Blunt Wrap",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "bluntwrap.png",
			}
		},
		["leanbluntwrap"] = {
			label = "Lean Blunt Wrap",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "leanbluntwrap.png",
			}
		},
		["dextroblunt"] = {
			label = "Dextro Blunt Wrap",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "dextroblunt.png",
			}
		},
		["leanblunts"] = {
			label = "Lean Blunts",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "leanblunts.png",
			}
		},
		["dextroblunts"] = {
			label = "Dextro Blunts",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "dextroblunts.png",
			}
		},
		["chewyblunt"] = {
			label = "Chewy",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "blunt.png",
			}
		},
		["sprunk"] = {
			label = "Sprunk",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "sprunk.png",
			}
		},
		["leancup"] = {
			label = "Empty Cup",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "leancup.png",
			}
		},
		["cupoflean"] = {
			label = "Lean Cup",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "cupoflean.png",
			}
		},
		["cupofdextro"] = {
			label = "Dextro Cup",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "cupofdextro.png",
			}
		},
		["xtcburner"] = {
			label = "XTC Burner",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "gta5phone.png",
			},
	},
	
	-- Weed
	["empty_weed_bag"] = {
		label = "Empty Baggy",
		weight = 10,
		stack = true,
		close = true,
		description = "A empty baggy",
		client = {
			image = "weed-empty-bag.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "fertilizer.png",
		}
	},

	["ground_weed"] = {
		label = "Ground Weed",
		weight = 200,
		stack = true,
		close = false,
		description = "Ground up Weed",
		client = {
			image = "ground-weed.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 100,
		stack = true,
		close = true,
		description = "A brick of weed.",
		client = {
			image = "weed_brick.png",
		}
	},

	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	["bandage"] = {
		label = "Bandage",
		weight = 100,
		stack = true,
		close = true,
		description = "A bandage to stop bleeding.",
		client = {
			image = "bandage.png",
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = true,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cs_panties_02', pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = true,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_food_mustard', pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = true,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = true,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Small Empty Baggy",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["ifaks"] = {
		label = "IFAK",
		weight = 200,
		stack = true,
		close = true,
		description = "Individual First Aid Kit for emergency personnel use",
		client = {
			image = "ifaks.png",
		}
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = true,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["casinochips"] = {
		label = "Diamond Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Chips, useful for gambling!",
		client = {
			image = "casinochips.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = true,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},
	["huntinglicense"] = {
		label = "Hunting License",
		weight = 0,
		stack = true,
		close = true,
		description = "Hunting License",
		client = {
			image = "weapon_license.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = true,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},

	["weed_whitewidow_bud"] = {
		label = "White Widow Bud",
		weight = 200,
		stack = true,
		close = false,
		description = "White Widow Bud",
		client = {
			image = "whitewidow_bud.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = true,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["weed_grandaddypurp_bud"] = {
		label = "Grandaddy Purp 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Grandaddy Purp",
		client = {
			image = "granddaddypurp_bud.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = true,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = true,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 30000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = true,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = true,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = true,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving_tube.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = true,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = true,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	["weed_bestbuds_bud"] = {
		label = "Best Buds Bud 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Best Buds",
		client = {
			image = "bestbuds_bud.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = true,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = true,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 35000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},
	["pdarmor"] = {
		label = "Heavy Armor",
		weight = 35000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "heavyarmor.png",
		}
	},	

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["weed_bluedream_bud"] = {
		label = "Blue Dream Bud",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Blue Dream",
		client = {
			image = "bluedream_bud.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = true,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = true,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},


	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = true,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = true,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = true,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = true,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = true,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["weed_weddingcake_bud"] = {
		label = "Wedding Cake Bud",
		weight = 200,
		stack = true,
		close = false,
		description = "Wedding Cake Bud",
		client = {
			image = "weddingcake_bud.png",
		}
	},

	["weed_purplecookiekush_bud"] = {
		label = "Purple Cookie Kush",
		weight = 200,
		stack = true,
		close = false,
		description = "Purple Cookie Kush Bud",
		client = {
			image = "PurpleCookieKush.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 2,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["aluminium"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["weed_afghankush_bud"] = {
		label = "Afghan Kush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Afghan Kush",
		client = {
			image = "afghankush_bud.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["weed_jackherrer_bud"] = {
		label = "Jack Herrer 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Jack Herrer",
		client = {
			image = "jackherrer_bud.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},

	["chair11"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair11.png",
		}
	},

	["chair10"] = {
		label = "Black Office Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair10.png",
		}
	},

	["washedstone"] = {
		label = "Washed Stone",
		weight = 3500,
		stack = true,
		close = false,
		description = "ORE",
		client = {
			image = "washed_stone.png",
		}
	},

	["casino_blackchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Blackjack Chip",
		client = {
			image = "casino_blackchip.png",
		}
	},

	["chair43"] = {
		label = "Wicker Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair43.png",
		}
	},

	["chair97"] = {
		label = "Plastic Lawn Chair 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair97.png",
		}
	},

	["spikestrip"] = {
		label = "Spike",
		weight = 4000,
		stack = true,
		close = true,
		description = "Stop those dirty criminals!",
		client = {
			image = "spikestrip.png",
		}
	},

	["chair91"] = {
		label = "White Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair91.png",
		}
	},

	["chair62"] = {
		label = "Green Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair62.png",
		}
	},

	["packaged_chicken"] = {
		label = "Packaged Chicken",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "packaged_chicken.png",
		}
	},

	["tomato"] = {
		label = "Tomato",
		weight = 100,
		stack = true,
		close = true,
		description = "Tomato",
		client = {
			image = "domates.png",
		}
	},

	["croutons"] = {
		label = "Croutons",
		weight = 100,
		stack = true,
		close = true,
		description = "Croutons for salads",
		client = {
			image = "croutons.png",
		}
	},

	["dicedeggs"] = {
		label = "Diced Eggs",
		weight = 100,
		stack = true,
		close = true,
		description = "Diced Eggs for salads",
		client = {
			image = "dicedeggs.png",
		}
	},

	["cornseeds"] = {
		label = "Corn Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "Corn seeds",
		client = {
			image = "cornseeds.png",
		}
	},

	["whipcream"] = {
		label = "Whip Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Whip Cream",
		client = {
			image = "whip_cream.png",
		}
	},

	["mintchocolatechip"] = {
		label = "Mint Chocolate Chip",
		weight = 100,
		stack = true,
		close = true,
		description = "Mint Chocolate Chips",
		client = {
			image = "mintchocolatechip.png",
		}
	},

	["weapon_juanspistol"] = {
		label = "Juans 1 of 1",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weapon_glock.png",
		}
	},

	["marijuana_1oz_high"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = true,
		close = false,
		description = "1oz high grade marijuana",
		client = {
			image = "marijuana_1oz_high.png",
		}
	},

	["chair110"] = {
		label = "Black Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair110.png",
		}
	},

	["atom"] = {
		label = "Atom",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "atom.png",
		}
	},

	["chair19"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair19.png",
		}
	},

	["chair9"] = {
		label = "Standard Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair9.png",
		}
	},

	["head_bag"] = {
		label = "Head Bag",
		weight = 5,
		stack = true,
		close = false,
		description = "Put mask on hostage.",
		client = {
			image = "head_bag.png",
		}
	},

	["chair47"] = {
		label = "Black Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair47.png",
		}
	},

	["chair56"] = {
		label = "Old Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair56.png",
		}
	},

	["chair84"] = {
		label = "Orange Deco Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair84.png",
		}
	},

	["chair6"] = {
		label = "Grey Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair6.png",
		}
	},

	["chair12"] = {
		label = "Used Brown Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair12.png",
		}
	},

	["chair2"] = {
		label = "Wood Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair2.png",
		}
	},

	["chair39"] = {
		label = "Striped Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair39.png",
		}
	},

	["friesxl"] = {
		label = "Fries XL",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "friesxl.png",
		}
	},

	["chair16"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair16.png",
		}
	},

	["burgerm"] = {
		label = "Burger Medium",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "burgerm.png",
		}
	},

	["chair8"] = {
		label = "Lime Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair8.png",
		}
	},

	["meatcow"] = {
		label = "Cow Pelt",
		weight = 100,
		stack = true,
		close = false,
		description = "Cow Pelt",
		client = {
			image = "cowpelt.png",
		}
	},

	["lenny"] = {
		label = "Lenny",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "lenny.png",
		}
	},

	["apple"] = {
		label = "Apple",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["hotsauce"] = {
		label = "Hot Sauce",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotsauce.png",
		}
	},

	["tronco"] = {
		label = "Tree trunk",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "wood.png",
		}
	},

	["cig_et"] = {
		label = "Raw Meat",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cig_et.png",
		}
	},

	["chair57"] = {
		label = "Purple Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair57.png",
		}
	},

	["chair13"] = {
		label = "Orange Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair13.png",
		}
	},


	["casino_bluechip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Roulette Chip",
		client = {
			image = "casino_bluechip.png",
		}
	},

	["chair4"] = {
		label = "Old Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair4.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milk.png",
		}
	},

	["resim"] = {
		label = "Image",
		weight = 950,
		stack = true,
		close = true,
		description = "Çekilmiş bir adet fotoğraf.",
		client = {
			image = "resim.png",
		}
	},

	["chair90"] = {
		label = "White Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair90.png",
		}
	},

	["chair74"] = {
		label = "Yellow Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair74.png",
		}
	},

	["chair53"] = {
		label = "Fancy Garden Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair53.png",
		}
	},

	["yeager"] = {
		label = "Yeager",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "yeager.png",
		}
	},

	["meatcoyote"] = {
		label = "Coyote Pelt",
		weight = 100,
		stack = true,
		close = false,
		description = "Coyote Pelt",
		client = {
			image = "coyotepelt.png",
		}
	},

	["meatpig"] = {
		label = "Pig Meat",
		weight = 100,
		stack = true,
		close = false,
		description = "Pig Meat",
		client = {
			image = "pigpelt.png",
		}
	},

	["cooked_ham"] = {
		label = "Cooked Ham",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_ham.png",
		}
	},

	["meatrabbit"] = {
		label = "Rabbit Fur",
		weight = 100,
		stack = true,
		close = false,
		description = "Rabbit Fur",
		client = {
			image = "rabbitfur.png",
		}
	},

	["cheese"] = {
		label = "Cheese",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheese.png",
		}
	},

	["chair3"] = {
		label = "Metal Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair3.png",
		}
	},

	["chair72"] = {
		label = "Grey Sun Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair72.png",
		}
	},

	["chair48"] = {
		label = "Brown Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair48.png",
		}
	},


	["chair95"] = {
		label = "Dark Brown Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair95.png",
		}
	},

	["chair103"] = {
		label = "Green Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair103.png",
		}
	},

	["chair35"] = {
		label = "Ergonomic Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair35.png",
		}
	},

	["sogan"] = {
		label = "Onion",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sogan.png",
		}
	},

	["chair109"] = {
		label = "Cream Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair109.png",
		}
	},

	["chair83"] = {
		label = "Orange Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair83.png",
		}
	},

	["chair42"] = {
		label = "Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair42.png",
		}
	},

	["emptycowbucket"] = {
		label = "Empty Bucket",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emptybucket.png",
		}
	},

	["marijuana_trowel"] = {
		label = "Trowel",
		weight = 0,
		stack = true,
		close = true,
		description = "Small handheld garden shovel",
		client = {
			image = "marijuana_trowel.png",
		}
	},

	["meowfurryon"] = {
		label = "MeowFurryon",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "meowfurryon.png",
		}
	},

	["chair52"] = {
		label = "Worn Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair52.png",
		}
	},

	["chair104"] = {
		label = "Blue Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair104.png",
		}
	},

	["cow_leather"] = {
		label = "Cow Skin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cow_leather.png",
		}
	},

	["tavukburger"] = {
		label = "Chicken Burger",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tavukburger.png",
		}
	},

	["meatboar"] = {
		label = "Boar Tusks",
		weight = 100,
		stack = true,
		close = false,
		description = "Boar Tusks",
		client = {
			image = "boartusks.png",
		}
	},

	["art"] = {
		label = "Art",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "art.png",
		}
	},

	["chair82"] = {
		label = "Small Black Stool",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair82.png",
		}
	},

	["chair79"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair79.png",
		}
	},

	["chair33"] = {
		label = "Black Comfy Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair33.png",
		}
	},

	["burgerl"] = {
		label = "Burger Large",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "burgerl.png",
		}
	},

	["safecracker"] = {
		label = "Safe Cracker",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "laptop-green.png",
		}
	},

	["nightvision"] = {
		label = "Night Vision",
		weight = 150,
		stack = true,
		close = true,
		description = "Hunting Bait",
		client = {
			image = "nightvision.png",
		}
	},

	["mask"] = {
		label = "Mask",
		weight = 0,
		stack = true,
		close = true,
		description = "31 ceken maymun",
		client = {
			image = "mask.png",
		}
	},

	["raw_bacon"] = {
		label = "Raw Bacon",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_bacon.png",
		}
	},

	["k9"] = {
		label = "Police K9",
		weight = 1000,
		stack = true,
		close = true,
		description = "Call For Back Up Buddy",
		client = {
			image = "k9.png",
		}
	},

	["chair78"] = {
		label = "Wine Red Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair78.png",
		}
	},

	["chair7"] = {
		label = "Fancy Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair7.png",
		}
	},

	["chair76"] = {
		label = "Black Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair76.png",
		}
	},

	["cooked_sausage"] = {
		label = "Cooked Sausage",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_sausage.png",
		}
	},

	["chair100"] = {
		label = "Blue Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair100.png",
		}
	},

	["chair51"] = {
		label = "Green Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair51.png",
		}
	},

	["chair64"] = {
		label = "Striped Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair64.png",
		}
	},

	["chair80"] = {
		label = "Orange Louncher",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair80.png",
		}
	},

	["huntingbait"] = {
		label = "Hunting Bait",
		weight = 150,
		stack = true,
		close = true,
		description = "Hunting Bait",
		client = {
			image = "huntingbait.png",
		}
	},

	["casino_whitechip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Slot Machine Chip",
		client = {
			image = "casino_whitechip.png",
		}
	},

	["marijuana_phone"] = {
		label = "Burner Phone",
		weight = 0,
		stack = true,
		close = true,
		description = "Burner phone used to sell eights",
		client = {
			image = "marijuana_phone.png",
		}
	},

	["chair17"] = {
		label = "Green Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair17.png",
		}
	},

	["chair44"] = {
		label = "Old Posh Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair44.png",
		}
	},

	["tomatopaste"] = {
		label = "tomato Paste",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomatopaste.png",
		}
	},

	["stagdancer"] = {
		label = "StagDancer",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "stagdancer.png",
		}
	},

	["gloryon"] = {
		label = "Gloryon",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "gloryon.png",
		}
	},

	["chair15"] = {
		label = "Old Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair15.png",
		}
	},

	["coffeemaker"] = {
		label = "Coffee Maker",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coffeemaker.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 5000,
		stack = true,
		close = false,
		description = "It is a colourless, highly volatile and flammable liquid with a characteristic pungent odour.",
		client = {
			image = "acetone.png",
		}
	},

	["bowlingball"] = {
		label = "Bowling Ball",
		weight = 150,
		stack = true,
		close = true,
		description = "Magic",
		client = {
			image = "bowlingball.png",
		}
	},

	["toy-eggg"] = {
		label = "RoosterRest Toy Egg",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gives Random Toys",
		client = {
			image = "toy-eggg.png",
		}
	},

	["chair40"] = {
		label = "Grey Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair40.png",
		}
	},

	["chair26"] = {
		label = "Blue Plastic Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair26.png",
		}
	},

	["chair58"] = {
		label = "Zebra Print Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair58.png",
		}
	},

	["telescope"] = {
		label = "Telescope",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tel.png",
		}
	},

	["marijuana_3.5_high"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = true,
		close = true,
		description = "3.5g high grade marijuana",
		client = {
			image = "marijuana_3.5_high.png",
		}
	},

	["specialbadge"] = {
		label = "PD BADGE",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["drone_flyer_7"] = {
		label = "PD Drone",
		weight = 300,
		stack = true,
		close = true,
		description = "PD DRONE",
		client = {
			image = "drone_flyer_7.png",
		}
	},

	["chair34"] = {
		label = "Red Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair34.png",
		}
	},

	["chair92"] = {
		label = "Brown Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair92.png",
		}
	},

	["chair77"] = {
		label = "Yellow Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair77.png",
		}
	},

	["chair96"] = {
		label = "Light Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair96.png",
		}
	},

	["barry"] = {
		label = "Barry",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "barry.png",
		}
	},

	["coke_leaf"] = {
		label = "Coke Leaf",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coke_leaf.png",
		}
	},

	["chair46"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair46.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["oki"] = {
		label = "Oki",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "oki.png",
		}
	},

	["chair102"] = {
		label = "Red Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair102.png",
		}
	},

	["lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = true,
		description = "lettuce",
		client = {
			image = "marul.png",
		}
	},

	["cucumber"] = {
		label = "Cucumber",
		weight = 100,
		stack = true,
		close = true,
		description = "cucumber",
		client = {
			image = "cucumber.png",
		}
	},

	["cooked_bacon"] = {
		label = "Cooked Bacon",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_bacon.png",
		}
	},

	["chair20"] = {
		label = "Blue Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair20.png",
		}
	},

	["corncob"] = {
		label = "Corn Cob",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "corncob.png",
		}
	},

	["lando"] = {
		label = "Lando",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "lando.png",
		}
	},

	["burgerxl"] = {
		label = "Burger XL",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "burgerxl.png",
		}
	},

	["chair71"] = {
		label = "Brown Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair71.png",
		}
	},

	["kiki"] = {
		label = "Kiki",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "kiki.png",
		}
	},

	["methlab"] = {
		label = "Lab",
		weight = 15000,
		stack = true,
		close = false,
		description = "A portable Meth Lab",
		client = {
			image = "lab.png",
		}
	},

	["clayvon"] = {
		label = "Clayvon",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "clayvon.png",
		}
	},

	["beef"] = {
		label = "Beef",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "beef.png",
		}
	},

	["marijuana_1oz_low"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = true,
		close = false,
		description = "1oz low grade marijuana",
		client = {
			image = "marijuana_1oz_low.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["patates2"] = {
		label = "Piece of Potato",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "patates2.png",
		}
	},

	["chair106"] = {
		label = "Purple Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair106.png",
		}
	},


	["chair29"] = {
		label = "Blue Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair29.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["pdbadge"] = {
		label = "Police Badge",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "badge.png",
		}
	},

	["greenpepper"] = {
		label = "Green Pepper",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "greenpepper.png",
		}
	},

	["soybeans"] = {
		label = "Soy Beans",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soybeans.png",
		}
	},

	["raw_ham"] = {
		label = "Raw Ham",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_ham.png",
		}
	},

	["chair61"] = {
		label = "Cream Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair61.png",
		}
	},

	["chair24"] = {
		label = "Old White Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair24.png",
		}
	},

	["chair69"] = {
		label = "Dark Material Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair69.png",
		}
	},

	["chair14"] = {
		label = "White Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair14.png",
		}
	},

	["casino_goldchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Chip",
		client = {
			image = "casino_goldchip.png",
		}
	},

	["marijuana_seeds"] = {
		label = "Marijuana Seeds",
		weight = 500,
		stack = true,
		close = true,
		description = "marijuana seeds",
		client = {
			image = "marijuana_seeds.png",
		}
	},

	["marijuana_crop_low"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "low grade harvested marijuana crop",
		client = {
			image = "marijuana_crop_low.png",
		}
	},

	["chair41"] = {
		label = "Grey Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair41.png",
		}
	},

	["chair23"] = {
		label = "Posh White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair23.png",
		}
	},

	["tv"] = {
		label = "TV",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tv.png",
		}
	},

	["hamburger"] = {
		label = "Hamburger",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hamburger.png",
		}
	},


	["chair37"] = {
		label = "Dark Brown Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair37.png",
		}
	},

	["chair63"] = {
		label = "Blue Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair63.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = true,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["leyla"] = {
		label = "Leyla",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "leyla.png",
		}
	},

	["grapes"] = {
		label = "Grapes",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grapes.png",
		}
	},

	["chair60"] = {
		label = "Brown Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair60.png",
		}
	},

	["chair105"] = {
		label = "Light Material Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair105.png",
		}
	},

	["meatbird"] = {
		label = "Bird Feather",
		weight = 100,
		stack = true,
		close = false,
		description = "Bird Feather",
		client = {
			image = "birdfeather.png",
		}
	},

	["stone"] = {
		label = "Stone",
		weight = 3500,
		stack = true,
		close = false,
		description = "ORE",
		client = {
			image = "stone.png",
		}
	},

	["marijuana_crop_mid"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "mid grade harvested marijuana crop",
		client = {
			image = "marijuana_crop_mid.png",
		}
	},

	["chair66"] = {
		label = "Yellow Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair66.png",
		}
	},

	["rawpumpkin"] = {
		label = "Raw Pumpkin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pumpkin.png",
		}
	},

	["tburgerxl"] = {
		label = "Chicken Burger XL",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tburgerxl.png",
		}
	},

	["raw_beef"] = {
		label = "Raw Beef",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_beef.png",
		}
	},

	["chair75"] = {
		label = "Oak Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair75.png",
		}
	},

	["apple_juice"] = {
		label = "Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_juice.png",
		}
	},

	["marijuana_crop_high"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "high grade harvested marijuana crop",
		client = {
			image = "marijuana_crop_high.png",
		}
	},

	["chair65"] = {
		label = "Posh Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair65.png",
		}
	},

	["chair73"] = {
		label = "Dark Brown Wood Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair73.png",
		}
	},

	["coke_empty_bags"] = {
		label = "Coke Empty Bags",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coke_empty_bags.png",
		}
	},

	["chair27"] = {
		label = "Black Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair27.png",
		}
	},

	["chair93"] = {
		label = "Brown Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair93.png",
		}
	},

	["chair108"] = {
		label = "White Casino Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair108.png",
		}
	},

	["chair94"] = {
		label = "Grey Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair94.png",
		}
	},

	["donnie"] = {
		label = "Donnie",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "donnie.png",
		}
	},

	["canofcorn"] = {
		label = "Can Of Corn",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "canofcorn.png",
		}
	},

	["casino_member"] = {
		label = "Casino Membership",
		weight = 500,
		stack = true,
		close = false,
		description = "Diamond Casino Member Card",
		client = {
			image = "casino_member.png",
		}
	},

	["milkbucket"] = {
		label = "Milk Bucket",
		weight = 75,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milkbucket.png",
		}
	},


	["cooked_pork"] = {
		label = "Cooked Pork",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_pork.png",
		}
	},


	["marijuana_rollingpapers"] = {
		label = "Rolling Papers",
		weight = 0,
		stack = true,
		close = true,
		description = "These aint Raw Rolling Papers!!?",
		client = {
			image = "marijuana_rollingpapers.png",
		}
	},

	["meatlion"] = {
		label = "Cougar Claws",
		weight = 100,
		stack = true,
		close = false,
		description = "Cougar Claw",
		client = {
			image = "cougarclaw.png",
		}
	},

	["chair67"] = {
		label = "White Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair67.png",
		}
	},

	["chair31"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair31.png",
		}
	},

	["chair28"] = {
		label = "Grey Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair28.png",
		}
	},

	["chillypepper"] = {
		label = "Chilly Pepper",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chillypepper.png",
		}
	},


	["marijuana_scale"] = {
		label = "Scale",
		weight = 0,
		stack = true,
		close = false,
		description = "This is not what it looks like",
		client = {
			image = "marijuana_scale.png",
		}
	},

	["chair45"] = {
		label = "Dark Brown Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair45.png",
		}
	},

	["marijuana_baggies"] = {
		label = "Baggies",
		weight = 0,
		stack = true,
		close = true,
		description = "Need some baggies? i got some baggies",
		client = {
			image = "marijuana_baggies.png",
		}
	},

	["chair70"] = {
		label = "Dark Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair70.png",
		}
	},

	["bowlingreceipt"] = {
		label = "Bowling Recepit",
		weight = 150,
		stack = true,
		close = true,
		description = "Magic",
		client = {
			image = "bowlingreceipt.png",
		}
	},

	["chair59"] = {
		label = "Lime Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair59.png",
		}
	},

	["chair101"] = {
		label = "Black Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair101.png",
		}
	},

	["chair32"] = {
		label = "Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair32.png",
		}
	},

	["slicedpie"] = {
		label = "Slice of Pie",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedpie.png",
		}
	},

	["microwave"] = {
		label = "Microwave",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mikro.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["chair21"] = {
		label = "Metal Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair21.png",
		}
	},

	["chair36"] = {
		label = "Comfy Ergonomic Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair36.png",
		}
	},

	["coke_bags"] = {
		label = "Coke",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coke_bags.png",
		}
	},

	["marijuana_3.5_mid"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = true,
		close = true,
		description = "3.5g mid grade marijuana",
		client = {
			image = "marijuana_3.5_mid.png",
		}
	},

	["kamera"] = {
		label = "Camera",
		weight = 950,
		stack = true,
		close = false,
		description = "Fotoğraf Makinası.",
		client = {
			image = "camera.png",
		}
	},

	["pig_leather"] = {
		label = "Pig Skin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pig_leather.png",
		}
	},

	["chair55"] = {
		label = "Old Metal ",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair55.png",
		}
	},

	["marijuana_lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "Cheap tweaker lighter, Still does the job",
		client = {
			image = "marijuana_lighter.png",
		}
	},

	["chair1"] = {
		label = "Black Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair1.png",
		}
	},

	["chair98"] = {
		label = "Red/Green Gamer Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair98.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 200,
		stack = true,
		close = false,
		description = "Raw Lithium",
		client = {
			image = "lithium.png",
		}
	},

	["chair68"] = {
		label = "White Metal Dining Chair 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair68.png",
		}
	},

	["chair86"] = {
		label = "Red Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair86.png",
		}
	},

	["chair54"] = {
		label = "Old Wooden Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair54.png",
		}
	},


	["friesl"] = {
		label = "Fries Large",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "friesl.png",
		}
	},

	["buddha"] = {
		label = "Buddha",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "buddha.png",
		}
	},

	["casino_redchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Inside Track Chip",
		client = {
			image = "casino_redchip.png",
		}
	},

	["chair30"] = {
		label = "Light Grey Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair30.png",
		}
	},

	["hanno"] = {
		label = "Hanno",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "hanno.png",
		}
	},

	["chair49"] = {
		label = "Brown Wodd Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair49.png",
		}
	},

	["chair22"] = {
		label = "Posh Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair22.png",
		}
	},

	["tabuas"] = {
		label = "Wooden planks",
		weight = 450,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "wood_cut.png",
		}
	},

	["marijuana_joint3g"] = {
		label = "Joint",
		weight = 3,
		stack = true,
		close = true,
		description = "3g joint",
		client = {
			image = "marijuana_joint3g.png",
		}
	},

	["meatdeer"] = {
		label = "Deer Horns",
		weight = 100,
		stack = true,
		close = false,
		description = "Deer Horns",
		client = {
			image = "deerhorns.png",
		}
	},

	["sven"] = {
		label = "Sven",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "sven.png",
		}
	},


	["chair99"] = {
		label = "Gamer Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair99.png",
		}
	},

	["chair89"] = {
		label = "Light Blue Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair89.png",
		}
	},

	["bjorn"] = {
		label = "Bjorn",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "bjorn.png",
		}
	},

	["pumpkinpiebox"] = {
		label = "Box of Pie",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pumpkinpiebox.png",
		}
	},

	["raw_pork"] = {
		label = "Raw Pork",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pork.png",
		}
	},

	["weed_baggy"] = {
		label = "Weed Baggy",
		weight = 100,
		stack = true,
		close = false,
		description = "A baggy of weed.",
		client = {
			image = "weed_baggy.png",
		}
	},

	["snowball"] = {
		label = "Snowball",
		weight = 0,
		stack = true,
		close = true,
		description = "Should have catched it :D",
		client = {
			image = "snowball.png",
		}
	},

	["marijuana_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 0,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "marijuana_nutrition.png",
		}
	},

	["marijuana_1oz_mid"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = true,
		close = false,
		description = "1oz mid grade marijuana",
		client = {
			image = "marijuana_1oz_mid.png",
		}
	},

	["chair25"] = {
		label = "Red Plastic Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair25.png",
		}
	},

	["chair81"] = {
		label = "Blue Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair81.png",
		}
	},

	["marijuana_water"] = {
		label = "Plant Water",
		weight = 0,
		stack = true,
		close = true,
		description = "Plant water",
		client = {
			image = "marijuana_water.png",
		}
	},

	["chair87"] = {
		label = "White Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair87.png",
		}
	},

	["chair38"] = {
		label = "Ol' Rocking Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair38.png",
		}
	},

	["marijuana_3.5_low"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = true,
		close = true,
		description = "3.5g low grade marijuana",
		client = {
			image = "marijuana_3.5_low.png",
		}
	},

	["chair85"] = {
		label = "Wine Red Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair85.png",
		}
	},

	["casino_vip"] = {
		label = "V.I.P Membership",
		weight = 500,
		stack = true,
		close = false,
		description = "Diamond Casino V.I.P Card",
		client = {
			image = "casino_vip.png",
		}
	},

	["chair18"] = {
		label = "Blue Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair18.png",
		}
	},

	["raw_sausage"] = {
		label = "Raw Sausage",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_sausage.png",
		}
	},

	["burger-meat"] = {
		label = "Burger Meat",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "burger-meat.png",
		}
	},

	["chair107"] = {
		label = "Red Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair107.png",
		}
	},

	["trowel"] = {
		label = "trowel",
		weight = 1000,
		stack = true,
		close = true,
		description = "Small handheld garden shovel",
		client = {
			image = "trowel.png",
		}
	},

	["chair50"] = {
		label = "Plastic Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair50.png",
		}
	},

	["marijuana_joint"] = {
		label = "Joint",
		weight = 2,
		stack = true,
		close = true,
		description = "1g joint",
		client = {
			image = "marijuana_joint.png",
		}
	},

	["toy-egg"] = {
		label = "Burgershot Toy Egg",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gives Random Toys",
		client = {
			image = "toy-egg.png",
		}
	},

	["chair5"] = {
		label = "Old Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair5.png",
		}
	},

	["chair88"] = {
		label = "Black Deco Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair88.png",
		}
	},

	["miningdrill"] = {
		label = "Mining Drill",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "miningdrill.png",
		}
	},

	["ecola"] = {
		label = "eCola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 21,
			},
			image = "ecola.png",
		}
	},

	["sapphire_earring"] = {
		label = "Sapphire Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring.png",
		}
	},

	["headlights"] = {
		label = "Xenon Headlights",
		weight = 0,
		stack = true,
		close = true,
		description = "8k HID headlights",
		client = {
			image = "headlights.png",
		}
	},

	["skirts"] = {
		label = "Vehicle Skirts",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["sapphire_ring_silver"] = {
		label = "Sapphire Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring_silver.png",
		}
	},

	["diamond_earring_silver"] = {
		label = "Diamond Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["toolbox"] = {
		label = "Toolbox",
		weight = 0,
		stack = true,
		close = true,
		description = "Needed for Performance part removal",
		client = {
			image = "toolbox.png",
		}
	},

	["emerald_ring"] = {
		label = "Emerald Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring.png",
		}
	},

	["axleparts"] = {
		label = "Axle Parts",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axleparts.png",
		}
	},

	["diamond_earring"] = {
		label = "Diamond Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring.png",
		}
	},

	["bottle"] = {
		label = "Empty Bottle",
		weight = 10,
		stack = true,
		close = false,
		description = "A glass bottle",
		client = {
			image = "bottle.png",
		}
	},

	["spoiler"] = {
		label = "Vehicle Spoiler",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["sparkplugs"] = {
		label = "Spark Plugs",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparkplugs.png",
		}
	},

	["silveringot"] = {
		label = "Silver Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silveringot.png",
		}
	},

	["emerald_necklace"] = {
		label = "Emerald Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["engine1"] = {
		label = "Tier 1 Engine",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "engine1.png",
		}
	},

	["sparetire"] = {
		label = "Spare Tire",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparetire.png",
		}
	},

	["can"] = {
		label = "Empty Can",
		weight = 10,
		stack = true,
		close = false,
		description = "An empty can, good for recycling",
		client = {
			image = "can.png",
		}
	},

	["silverearring"] = {
		label = "Silver Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_earring.png",
		}
	},

	["suspension2"] = {
		label = "Tier 2 Suspension",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "suspension2.png",
		}
	},

	["engine3"] = {
		label = "Tier 3 Engine",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "engine3.png",
		}
	},

	["silverchain"] = {
		label = "Silver Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silverchain.png",
		}
	},

	["drifttires"] = {
		label = "Drift Tires",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["drillbit"] = {
		label = "Drill Bit",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "drillbit.png",
		}
	},

	["hood"] = {
		label = "Vehicle Hood",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["sapphire_necklace"] = {
		label = "Sapphire Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["emerald_earring_silver"] = {
		label = "Emerald Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "A full bottle of NOS",
		client = {
			image = "nos.png",
		}
	},

	["emerald_necklace_silver"] = {
		label = "Emerald Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["brakes3"] = {
		label = "Tier 3 Brakes",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["ruby_earring"] = {
		label = "Ruby Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring.png",
		}
	},

	["uncut_diamond"] = {
		label = "Uncut Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Diamond",
		client = {
			image = "uncut_diamond.png",
		}
	},

	["goldingot"] = {
		label = "Gold Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldingot.png",
		}
	},

	["engine4"] = {
		label = "Tier 4 Engine",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "engine4.png",
		}
	},

	["sapphire_ring"] = {
		label = "Sapphire Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring.png",
		}
	},

	["customplate"] = {
		label = "Customized Plates",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["ecolalight"] = {
		label = "eCola Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 22,
			},
			image = "ecolalight.png",
		}
	},

	["uncut_sapphire"] = {
		label = "Uncut Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Sapphire",
		client = {
			image = "uncut_sapphire.png",
		}
	},

	["ruby_necklace"] = {
		label = "Ruby Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["bprooftires"] = {
		label = "Bulletproof Tires",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["goldpan"] = {
		label = "Gold Panning Tray",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldpan.png",
		}
	},

	["sapphire_earring_silver"] = {
		label = "Sapphire Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["sapphire"] = {
		label = "Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A Sapphire that shimmers",
		client = {
			image = "sapphire.png",
		}
	},

	["copperore"] = {
		label = "Copper Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Copper, a base ore.",
		client = {
			image = "copperore.png",
		}
	},

	["exhaust"] = {
		label = "Vehicle Exhaust",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["brakes1"] = {
		label = "Tier 1 Brakes",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["sapphire_necklace_silver"] = {
		label = "Sapphire Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["sprunklight"] = {
		label = "Sprunk Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 24,
			},
			image = "sprunklight.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mechanic tools",
		weight = 0,
		stack = true,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["suspension1"] = {
		label = "Tier 1 Suspension",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "suspension1.png",
		}
	},

	["gold_ring"] = {
		label = "Gold Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_ring.png",
		}
	},

	["ruby"] = {
		label = "Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A Ruby that shimmers",
		client = {
			image = "ruby.png",
		}
	},

	["diamond_ring_silver"] = {
		label = "Diamond Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring_silver.png",
		}
	},

	["rims"] = {
		label = "Custom Wheel Rims",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["transmission4"] = {
		label = "Tier 4 Transmission",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "transmission4.png",
		}
	},

	["suspension3"] = {
		label = "Tier 3 Suspension",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "suspension3.png",
		}
	},

	["emerald_ring_silver"] = {
		label = "Emerald Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring_silver.png",
		}
	},

	["ruby_ring_silver"] = {
		label = "Ruby Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring_silver.png",
		}
	},

	["diamond_necklace_silver"] = {
		label = "Diamond Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["transmission3"] = {
		label = "Tier 3 Transmission",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "transmission3.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "carbattery.png",
		}
	},

	["seat"] = {
		label = "Seat Cosmetics",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["silverore"] = {
		label = "Silver Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Silver Ore",
		client = {
			image = "silverore.png",
		}
	},

	["turbo"] = {
		label = "Supercharger Turbo",
		weight = 0,
		stack = true,
		close = true,
		description = "Who doesn't need a 65mm Turbo??",
		client = {
			image = "turbo.png",
		}
	},

	["carbon"] = {
		label = "Carbon",
		weight = 1000,
		stack = true,
		close = false,
		description = "Carbon, a base ore.",
		client = {
			image = "carbon.png",
		}
	},

	["roof"] = {
		label = "Vehicle Roof",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["mininglaser"] = {
		label = "Mining Laser",
		weight = 900,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mininglaser.png",
		}
	},

	["goldearring"] = {
		label = "Golden Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_earring.png",
		}
	},

	["suspension4"] = {
		label = "Tier 4 Suspension",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "suspension4.png",
		}
	},

	["noscan"] = {
		label = "Empty NOS Bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "An Empty bottle of NOS",
		client = {
			image = "noscan.png",
		}
	},

	["horn"] = {
		label = "Custom Vehicle Horn",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["emerald"] = {
		label = "Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A Emerald that shimmers",
		client = {
			image = "emerald.png",
		}
	},

	["pickaxe"] = {
		label = "Pickaxe",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pickaxe.png",
		}
	},

	["bumper"] = {
		label = "Vehicle Bumper",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["brakes2"] = {
		label = "Tier 2 Brakes",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["rollcage"] = {
		label = "Roll Cage",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["ironore"] = {
		label = "Iron Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Iron, a base ore.",
		client = {
			image = "ironore.png",
		}
	},

	["engine5"] = {
		label = "Tier 5 Engine",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "engine5.png",
		}
	},

	["paintcan"] = {
		label = "Vehicle Spray Can",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["emerald_earring"] = {
		label = "Emerald Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring.png",
		}
	},

	["ruby_earring_silver"] = {
		label = "Ruby Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["transmission2"] = {
		label = "Tier 2 Transmission",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "transmission2.png",
		}
	},

	["uncut_emerald"] = {
		label = "Uncut Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Emerald",
		client = {
			image = "uncut_emerald.png",
		}
	},

	["ruby_necklace_silver"] = {
		label = "Ruby Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["internals"] = {
		label = "Internal Cosmetics",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["suspension5"] = {
		label = "Tier 5 Suspension",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "suspension5.png",
		}
	},

	["silver_ring"] = {
		label = "Silver Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_ring.png",
		}
	},

	["ruby_ring"] = {
		label = "Ruby Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring.png",
		}
	},

	["car_armor"] = {
		label = "Vehicle Armor",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "car_armor.png",
		}
	},

	["livery"] = {
		label = "Livery Roll",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["uncut_ruby"] = {
		label = "Uncut Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Ruby",
		client = {
			image = "uncut_ruby.png",
		}
	},

	["newoil"] = {
		label = "Car Oil",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caroil.png",
		}
	},

	["underglow_controller"] = {
		label = "Neon Controller",
		weight = 0,
		stack = true,
		close = true,
		description = "RGB LED Vehicle Remote",
		client = {
			image = "underglow_controller.png",
		}
	},

	["goldore"] = {
		label = "Gold Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Gold Ore",
		client = {
			image = "goldore.png",
		}
	},

	["diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["externals"] = {
		label = "Exterior Cosmetics",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["engine2"] = {
		label = "Tier 2 Engine",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "engine2.png",
		}
	},

	["noscolour"] = {
		label = "NOS Colour Injector",
		weight = 0,
		stack = true,
		close = true,
		description = "Make that purge spray",
		client = {
			image = "noscolour.png",
		}
	},

	["mechboard"] = {
		label = "Mechanic Sheet",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["ducttape"] = {
		label = "Duct Tape",
		weight = 0,
		stack = true,
		close = true,
		description = "Good for quick fixes",
		client = {
			image = "bodyrepair.png",
		}
	},

	["tires"] = {
		label = "Drift Smoke Tires",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["transmission1"] = {
		label = "Tier 1 Transmission",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "transmission1.png",
		}
	},

	["bestbudsbud"] = {
		label = "Best Buds Bud",
		weight = 0,
		stack = true,
		close = true,
		description = "Best Buds Famous Bud",
		client = {
			image = "bestbudsbud.png",
		}
	},

	["burger-mshake"] = {
		label = "Milkshake",
		weight = 125,
		stack = true,
		close = true,
		description = "Hand-scooped for you!",
		client = {
			image = "bs_milkshake.png",
		}
	},

	["burger-fries"] = {
		label = "Fries",
		weight = 125,
		stack = true,
		close = true,
		description = ".",
		client = {
			image = "bs_fries.png",
		}
	},

	["burger-lettuce"] = {
		label = "Lettuce",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_lettuce.png",
		}
	},

	["burger-mshakeformula"] = {
		label = "Milkshake Formula",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_icecream.png",
		}
	},

	["burger-meatfree"] = {
		label = "MeatFree",
		weight = 125,
		stack = true,
		close = true,
		description = ".",
		client = {
			image = "bs_meat-free.png",
		}
	},

	["burger-heartstopper"] = {
		label = "Heartstopper",
		weight = 2500,
		stack = true,
		close = true,
		description = ".",
		client = {
			image = "bs_the-heart-stopper.png",
		}
	},

	["burger-bun"] = {
		label = "Bun",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_bun.png",
		}
	},

	["burger-bleeder"] = {
		label = "Bleeder",
		weight = 250,
		stack = true,
		close = true,
		description = ".",
		client = {
			image = "bs_the-bleeder.png",
		}
	},

	["burger-tomato"] = {
		label = "Tomato",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_tomato.png",
		}
	},

	["burger-potato"] = {
		label = "Bag of Potatoes",
		weight = 1500,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_potato.png",
		}
	},

	["burger-torpedo"] = {
		label = "Torpedo",
		weight = 310,
		stack = true,
		close = true,
		description = ".",
		client = {
			image = "bs_torpedo.png",
		}
	},

	["burger-sodasyrup"] = {
		label = "Soda Syrup",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_hfcs.png",
		}
	},

	["burger-raw"] = {
		label = "Raw Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty_raw.png",
		}
	},

	["burger-softdrink"] = {
		label = "Soft Drink",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ice Cold Drink.",
		client = {
			image = "bs_softdrink.png",
		}
	},

	["burger-moneyshot"] = {
		label = "Moneyshot",
		weight = 300,
		stack = true,
		close = true,
		description = ".",
		client = {
			image = "bs_money-shot.png",
		}
	},

	["burgercola"] = {
		label = "Burger Cola",
		weight = 0,
		stack = true,
		close = true,
		description = "This shit bussin.",
		client = {
			image = "pug-burgercola.png",
		}
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["jolly_ranchers"] = {
		label = "Jolly Ranchers",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["ammonium_nitrate"] = {
		label = "Ammonium nitrate",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["drink_sprite"] = {
		label = "Sprite",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["opium"] = {
		label = "Opium",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["sodium_hydroxide"] = {
		label = "Sodium hydroxide",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["green_gelato_cannabis"] = {
		label = "Green Gelato Cannabis",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["drug_meth"] = {
		label = "Meth",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["nitrogen"] = {
		label = "Nitrogen",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["red_sulfur"] = {
		label = "Red Sulfur",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["drug_lsd"] = {
		label = "LSD",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["ice"] = {
		label = "Ice",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "ice.png",
		}
	},

	["drug_lean"] = {
		label = "Lean",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "lean.png",
		}
	},


	["codeine"] = {
		label = "Codeine",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["drug_ecstasy"] = {
		label = "Ecstasy",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["liquid_sulfur"] = {
		label = "Liquid Sulfur",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["muriatic_acid"] = {
		label = "Muriatic Acid",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["pseudoefedrine"] = {
		label = "Pseudoefedrine",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["oxygen"] = {
		label = "Oxygen",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["hydrogen"] = {
		label = "Hydrogen",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["drug_shears"] = {
		label = "Drug Shears",
		weight = 100,
		stack = true,
		close = true,
		description = "used to pick weed",
		client = {
			image = "drug_shears.png",
		}
	},

	["trimming_scissors"] = {
		label = "Trimming_scissors",
		weight = 1000,
		stack = true,
		close = true,
		description = "used to pick weed",
		client = {
			image = "pug-trimming_scissors.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["eggs"] = {
		label = "Eggs",
		weight = 100,
		stack = true,
		close = false,
		description = "Carton of eggs (used to craft)",
		client = {
			image = "eggs.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = false,
		description = "Sugar (used to craft)",
		client = {
			image = "sugar.png",
		}
	},

	["gelatin"] = {
		label = "Gelatin",
		weight = 100,
		stack = true,
		close = false,
		description = "Gelatin (used to craft gummies)",
		client = {
			image = "gelatine.png",
		}
	},

	["gelatinmold"] = {
		label = "Gelatin Mold",
		weight = 100,
		stack = true,
		close = false,
		description = "Gelatin Mold (used to craft gummies)",
		client = {
			image = "gelatinmold.png",
		}
	},

	["thcextract"] = {
		label = "Thc Extract",
		weight = 100,
		stack = true,
		close = false,
		description = "Thc Extract (used to craft gummies)",
		client = {
			image = "weed_oil.png",
		}
	},

	["chickentenders"] = {
		label = "Chicken Tenders",
		weight = 100,
		stack = true,
		close = false,
		description = "Chicken Tenders",
		client = {
			image = "chicken_tenders.png",
		}
	},

	["chickenwings"] = {
		label = "Chicken Wings",
		weight = 100,
		stack = true,
		close = false,
		description = "Chicken Tenders",
		client = {
			image = "chicken_wings.png",
		}
	},

	["weed_weddingcake_bud"] = {
		label = "Wedding Cake 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Wedding Cake",
		client = {
			image = "weddingcake_bud.png",
		}
	},

	["WEAPON_FADEBFKNIFE"] = {
		label = "Fade Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fade Butterfly Knife",
		client = {
			image = "WEAPON_FADEBFKNIFE",
		}
	},

	["cuffkeys"] = {
		label = "Cuff Keys",
		weight = 75,
		stack = true,
		close = true,
		description = "Set them free !",
		client = {
			image = "cuffkeys.png",
		}
	},

	["WEAPON_GUTKNIFE"] = {
		label = "Gut Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gut Knife.",
		client = {
			image = "WEAPON_GUTKNIFE.png",
		}
	},

	["WEAPON_KARAMBITKNIFE"] = {
		label = "Karamabit Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Karamabit Knife.",
		client = {
			image = "WEAPON_KARAMBITKNIFE.png",
		}
	},

	["WEAPON_PERFORATOR"] = {
		label = "The Perforator",
		weight = 1000,
		stack = true,
		close = true,
		description = "PERFORATOR.",
		client = {
			image = "PERFORATOR.png",
		}
	},

	["WEAPON_URBANRBFKNIFE"] = {
		label = "Urban Masked Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Urban Masked Butterfly Knife",
		client = {
			image = "WEAPON_URBANRBFKNIFE.png",
		}
	},

	["WEAPON_STAINEDRBFKNIFE"] = {
		label = "Stained Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Stained Butterfly Knife.",
		client = {
			image = "WEAPON_STAINEDRBFKNIFE.png",
		}
	},

	["WEAPON_HUNTSMANKNIFE"] = {
		label = "Huntsman Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Huntsman Knife.",
		client = {
			image = "WEAPON_HUNTSMANKNIFE.png",
		}
	},

	["bolt_cutter"] = {
		label = "Bolt Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Wanna cut some metal items ?",
		client = {
			image = "bolt_cutter.png",
		}
	},

	["WEAPON_BLUEBFKNIFE"] = {
		label = "Blue Steel Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Blue Steel Butterfly Knife",
		client = {
			image = "WEAPON_BLUEBFKNIFE",
		}
	},

	["WEAPON_FLIPKNIFE"] = {
		label = "Flip Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Flip Knife",
		client = {
			image = "WEAPON_FLIPKNIFE",
		}
	},

	["gps_tracker"] = {
		label = "LEO GPS",
		weight = 200,
		stack = true,
		close = true,
		description = "Show your gps location to others",
		client = {
			image = "gps_tracker.png",
		}
	},

	["ziptie"] = {
		label = "ZipTie",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "ziptie.png",
		}
	},

	["shackles"] = {
		label = "Shackles",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave.",
		client = {
			image = "shackles.png",
		}
	},

	["alcoholtester"] = {
		label = "Alcohol Tester",
		weight = 400,
		stack = true,
		close = true,
		description = "For testing purposes..",
		client = {
			image = "alcoholtester.png",
		}
	},

	["flush_cutter"] = {
		label = "Flush Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when you want to cut zipties..",
		client = {
			image = "flush_cutter.png",
		}
	},

	["WEAPON_SCORCHEDBFKNIFE"] = {
		label = "Scorched Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Scorched Butterfly Knife.",
		client = {
			image = "WEAPON_SCORCHEDBFKNIFE.png",
		}
	},

	["WEAPON_CRIMSONBFKNIFE"] = {
		label = "Crimson Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Crimson Butterfly Knife",
		client = {
			image = "WEAPON_CRIMSONBFKNIFE",
		}
	},

	["WEAPON_BFKNIFE"] = {
		label = "Vanilla Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vanilla Butterfly Knife",
		client = {
			image = "WEAPON_BFKNIFE",
		}
	},

	["WEAPON_SAFARIBFKNIFE"] = {
		label = "Safari Mesh Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Safari Mesh Butterfly Knife.",
		client = {
			image = "WEAPON_SAFARIBFKNIFE.png",
		}
	},

	["WEAPON_CHBFKNIFE"] = {
		label = "Case Hardened Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Case Hardened Butterfly Knife",
		client = {
			image = "WEAPON_CHBFKNIFE",
		}
	},

	["broken_handcuffs"] = {
		label = "Broken Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "It's broken, maybe you can repair it?",
		client = {
			image = "broken_handcuffs.png",
		}
	},

	["WEAPON_FORESTBFKNIFE"] = {
		label = "Forest Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Forest Butterfly Knife.",
		client = {
			image = "WEAPON_FORESTBFKNIFE.png",
		}
	},

	["WEAPON_SLAUGHTERBFKNIFE"] = {
		label = "Slaughter Butterfly Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Slaughter Butterfly Knife.",
		client = {
			image = "WEAPON_SLAUGHTERBFKNIFE.png",
		}
	},

	["contract"] = {
		label = "Vehicle Contract",
		weight = 100,
		stack = true,
		close = true,
		description = "Used to sell your vehicle.",
		client = {
			image = "contract.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mechanic tools", weight = 0, stack = true, close = true, description = "Needed for vehicle repairs",
		client = { image = "mechanic_tools.png", event = "jim-mechanic:client:Repair:Check" }
	},
	["toolbox"] = {
		label = "Toolbox", weight = 0, stack = true, close = true, description = "Needed for Performance part removal",
		client = { image = "toolbox.png", event = "jim-mechanic:client:Menu" }
	},
	["ducttape"] = {
		label = "Duct Tape", weight = 0, stack = true, close = true, description = "Good for quick fixes",
		client = { image = "bodyrepair.png", event = "jim-mechanic:quickrepair" }
	},
	['mechboard'] = { label = 'Mechanic Sheet', weight = 0, stack = true, close = false,
		buttons = {
			{ 	label = 'Copy Parts List',
				action = function(slot)
					local item = exports.ox_inventory:Search('slots', 'mechboard')
					for _, v in pairs(item) do
						if (v.slot == slot) then lib.setClipboard(v.metadata.info.vehlist) break end
					end
				end },
			{ 	label = 'Copy Plate Number',
				action = function(slot)
					local item = exports.ox_inventory:Search('slots', 'mechboard')
					for _, v in pairs(item) do
						if (v.slot == slot) then lib.setClipboard(v.metadata.info.vehplate) break end
					end
				end },
			{	label = 'Copy Vehicle Model',
				action = function(slot)
					local item = exports.ox_inventory:Search('slots', 'mechboard')
					for _, v in pairs(item) do
						if (v.slot == slot) then lib.setClipboard(v.metadata.info.veh) break  end
					end
				end },
		},
	},
    
    --Pharmacy
	["grizzlyfak"] = {
		label = "Grizzly First Aid Kit",
		weight = 15,
		stack = true,
		close = true,
		description = "First aid kit to fix your tough wounnds.",
		client = {
			image = "medikit.png",
		}
	},	
	["bandaid"] = {
		label = "Band-aid",
		weight = 5,
		stack = true,
		close = true,
		description = "Baby band aids.",
		client = {
			image = "baby_medikit.png",
		}
	},
	["adrenalinestim"] = {
		label = "Adrenaline Stim",
		weight = 5,
		stack = true,
		close = true,
		description = "Adrenaline stim.",
		client = {
			image = "adrenalinestim.png",
		}
	},
	["sj6stim"] = {
		label = "SJ6 Stim",
		weight = 5,
		stack = true,
		close = true,
		description = "SJ6 stim, helps give food and water.",
		client = {
			image = "sj6stim.png",
		}
	},
	["etgcstim"] = {
		label = "ETG Charge Stim",
		weight = 5,
		stack = true,
		close = true,
		description = "ETG Charge stim, helps bleeding.",
		client = {
			image = "etgstim.png",
		}
	},
	["meldonin"] = {
		label = "Meldonin Stim",
		weight = 5,
		stack = true,
		close = true,
		description = "Meldonin stim, makes you go fast.",
		client = {
			image = "meldonin.png",
		}
	},
	["odolbos"] = {
		label = "Odolbos Stim",
		weight = 5,
		stack = true,
		close = true,
		description = "Odolbos stim, makes you go faster.",
		client = {
			image = "odolbos.png",
		}
	},
	["adderall"] = {
		label = "Aderall pill",
		weight = 5,
		stack = true,
		close = true,
		description = "Adderall pill, fixes health.",
		client = {
			image = "adderall.png",
		}
	},
	["vicodin"] = {
		label = "Vicodin pill",
		weight = 5,
		stack = true,
		close = true,
		description = "Vicodin pill, makes you go faster.",
		client = {
			image = "vicodin.png",
		}
	},



	--Performance
	["turbo"] = {
		label = "Supercharger Turbo", weight = 0, stack = true, close = true, description = "Who doesn't need a 65mm Turbo??",
		client = { image = "turbo.png", event = "jim-mechanic:client:applyTurbo", remove = false },
	},
	["car_armor"] = {
		label = "Vehicle Armor", weight = 0, stack = true, close = true, description = "",
		client = { image = "car_armor.png", event = "jim-mechanic:client:applyArmour", remove = false },
	},
	["nos"] = {
		label = "NOS Bottle", weight = 0, stack = true, close = true, description = "A full bottle of NOS",
		client = { image = "nos.png", event = "jim-mechanic:client:applyNOS", },
	},
	["noscan"] = {
		label = "Empty NOS Bottle", weight = 0, stack = true, close = true, description = "An Empty bottle of NOS",
		client = { image = "noscan.png", }
	},
	["noscolour"] = {
		label = "NOS Colour Injector", weight = 0, stack = true, close = true, description = "Make that purge spray",
		client = { image = "noscolour.png", }
	},
	
	["engine1"] = {
		label = "Tier 1 Engine", weight = 0, stack = true, close = true, description = "",
		client = { image = "engine1.png",  event = "jim-mechanic:client:applyEngine", level = 0, remove = false },
	},
	["engine2"] = {
		label = "Tier 2 Engine", weight = 0, stack = true, close = true, description = "",
		client = { image = "engine2.png",  event = "jim-mechanic:client:applyEngine", level = 1, remove = false },
	},
	["engine3"] = {
		label = "Tier 3 Engine", weight = 0, stack = true, close = true, description = "",
		client = { image = "engine3.png",  event = "jim-mechanic:client:applyEngine", level = 2, remove = false },
	},
	["engine4"] = {
		label = "Tier 4 Engine", weight = 0, stack = true, close = true, description = "",
		client = { image = "engine4.png",  event = "jim-mechanic:client:applyEngine", level = 3, remove = false },
	},
	["engine5"] = {
		label = "Tier 5 Engine", weight = 0, stack = true, close = true, description = "",
		client = { image = "engine5.png",  event = "jim-mechanic:client:applyEngine", level = 4, remove = false },
	},
	
	["transmission1"] = {
		label = "Tier 1 Transmission", weight = 0, stack = true, close = true, description = "",
		client = { image = "transmission1.png",  event = "jim-mechanic:client:applyTransmission", level = 0, remove = false },
	},
	["transmission2"] = {
		label = "Tier 2 Transmission", weight = 0, stack = true, close = true, description = "",
		client = { image = "transmission2.png",  event = "jim-mechanic:client:applyTransmission", level = 1, remove = false },
	},
	["transmission3"] = {
		label = "Tier 3 Transmission", weight = 0, stack = true, close = true, description = "",
		client = { image = "transmission3.png",  event = "jim-mechanic:client:applyTransmission", level = 2, remove = false },
	},
	["transmission4"] = {
		label = "Tier 4 Transmission", weight = 0, stack = true, close = true, description = "",
		client = { image = "transmission4.png",  event = "jim-mechanic:client:applyTransmission", level = 3, remove = false },
	},
	
	["brakes1"] = {
		label = "Tier 1 Brakes", weight = 0, stack = true, close = true, description = "",
		client = { image = "brakes1.png",  event = "jim-mechanic:client:applyBrakes", level = 0, remove = false },
	},
	["brakes2"] = {
		label = "Tier 2 Brakes", weight = 0, stack = true, close = true, description = "",
		client = { image = "brakes2.png",  event = "jim-mechanic:client:applyBrakes", level = 1, remove = false },
	},
	["brakes3"] = {
		label = "Tier 3 Brakes", weight = 0, stack = true, close = true, description = "",
		client = { image = "brakes3.png",  event = "jim-mechanic:client:applyBrakes", level = 2, remove = false },
	},
	
	["suspension1"] = {
		label = "Tier 1 Suspension", weight = 0, stack = true, close = true, description = "",
		client = { image = "suspension1.png", event = "jim-mechanic:client:applySuspension",  level = 0, remove = false },
	},
	["suspension2"] = {
		label = "Tier 2 Suspension", weight = 0, stack = true, close = true, description = "",
		client = { image = "suspension2.png", event = "jim-mechanic:client:applySuspension", level = 1, remove = false },
	},
	["suspension3"] = {
		label = "Tier 3 Suspension", weight = 0, stack = true, close = true, description = "",
		client = { image = "suspension3.png", event = "jim-mechanic:client:applySuspension", level = 2, remove = false },
	},
	["suspension4"] = {
		label = "Tier 4 Suspension", weight = 0, stack = true, close = true, description = "",
		client = { image = "suspension4.png", event = "jim-mechanic:client:applySuspension", level = 3, remove = false },
	},
	["suspension5"] = {
		label = "Tier 5 Suspension", weight = 0, stack = true, close = true, description = "",
		client = { image = "suspension5.png", event = "jim-mechanic:client:applySuspension", level = 4, remove = false },
	},
	
	["bprooftires"] = {
		label = "Bulletproof Tires", weight = 0, stack = true, close = true, description = "",
		client = { image = "bprooftires.png", event = "jim-mechanic:client:applyBulletProof", remove = false },
	},
	["drifttires"] = {
		label = "Drift Tires", weight = 0, stack = true, close = true, description = "",
		client = { image = "drifttires.png", event = "jim-mechanic:client:applyDrift", remove = false },
	},
	
	["oilp1"] = {
		label = "Tier 1 Oil Pump", weight = 0, stack = true, close = true, description = "",
		client = { image = "oilp1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "oilp", remove = false },
	},
	["oilp2"] = {
		label = "Tier 2 Oil Pump", weight = 0, stack = true, close = true, description = "",
		client = { image = "oilp2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "oilp", remove = false },
	},
	["oilp3"] = {
		label = "Tier 3 Oil Pump", weight = 0, stack = true, close = true, description = "",
		client = { image = "oilp3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "oilp", remove = false },
	},
	
	["drives1"] = {
		label = "Tier 1 Drive Shaft", weight = 0, stack = true, close = true, description = "",
		client = { image = "drives1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "drives", remove = false },
	},
	["drives2"] = {
		label = "Tier 2 Drive Shaft", weight = 0, stack = true, close = true, description = "",
		client = { image = "drives2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "drives", remove = false },
	},
	["drives3"] = {
		label = "Tier 3 Drive Shaft", weight = 0, stack = true, close = true, description = "",
		client = { image = "drives3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "drives", remove = false },
	},
	
	["cylind1"] = {
		label = "Tier 1 Cylinder Head", weight = 0, stack = true, close = true, description = "",
		client = { image = "cylind1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "cylind", remove = false },
	},
	["cylind2"] = {
		label = "Tier 2 Cylinder Head", weight = 0, stack = true, close = true, description = "",
		client = { image = "cylind2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "cylind", remove = false },
	},
	["cylind3"] = {
		label = "Tier 3 Cylinder Head", weight = 0, stack = true, close = true, description = "",
		client = { image = "cylind3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "cylind", remove = false },
	},
	
	["cables1"] = {
		label = "Tier 1 Battery Cables", weight = 0, stack = true, close = true, description = "",
		client = { image = "cables1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "cables", remove = false },
	},
	["cables2"] = {
		label = "Tier 2 Battery Cables", weight = 0, stack = true, close = true, description = "",
		client = { image = "cables2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "cables", remove = false },
	},
	["cables3"] = {
		label = "Tier 3 Battery Cables", weight = 0, stack = true, close = true, description = "",
		client = { image = "cables3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "cables", remove = false },
	},
	
	["fueltank1"] = {
		label = "Tier 1 Fuel Tank", weight = 0, stack = true, close = true, description = "",
		client = { image = "fueltank1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "fueltank", remove = false },
	},
	["fueltank2"] = {
		label = "Tier 2 Fuel Tank", weight = 0, stack = true, close = true, description = "",
		client = { image = "fueltank2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "fueltank", remove = false },
	},
	["fueltank3"] = {
		label = "Tier 3 Fuel Tank", weight = 0, stack = true, close = true, description = "",
		client = { image = "fueltank3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "fueltank", remove = false },
	},
	
	["antilag"] = {
		label = "AntiLag", weight = 0, stack = true, close = true, description = "",
		client = { image = "antiLag.png", event = "jim-mechanic:client:applyAntiLag", remove = false },
	},
	
	["underglow_controller"] = {
		label = "Neon Controller", weight = 0, stack = true, close = true, description = "",
		client = { image = "underglow_controller.png", event = "jim-mechanic:client:neonMenu", },
	},
	["headlights"] = {
		label = "Xenon Headlights", weight = 0, stack = true, close = true, description = "",
		client = { image = "headlights.png", event = "jim-mechanic:client:applyXenons", },
	},
	
	["tint_supplies"] = {
		label = "Window Tint Kit", weight = 0, stack = true, close = true, description = "",
		client = { image = "tint_supplies.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	
	["customplate"] = {
		label = "Customized Plates", weight = 0, stack = true, close = true, description = "",
		client = { image = "plate.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["hood"] = {
		label = "Vehicle Hood", weight = 0, stack = true, close = true, description = "",
		client = { image = "hood.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["roof"] = {
		label = "Vehicle Roof", weight = 0, stack = true, close = true, description = "",
		client = { image = "roof.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["spoiler"] = {
		label = "Vehicle Spoiler", weight = 0, stack = true, close = true, description = "",
		client = { image = "spoiler.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["bumper"] = {
		label = "Vehicle Bumper", weight = 0, stack = true, close = true, description = "",
		client = { image = "bumper.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["skirts"] = {
		label = "Vehicle Skirts", weight = 0, stack = true, close = true, description = "",
		client = { image = "skirts.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["exhaust"] = {
		label = "Vehicle Exhaust", weight = 0, stack = true, close = true, description = "",
		client = { image = "exhaust.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["seat"] = {
		label = "Seat Cosmetics", weight = 0, stack = true, close = true, description = "",
		client = { image = "seat.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["rollcage"] = {
		label = "Roll Cage", weight = 0, stack = true, close = true, description = "",
		client = { image = "rollcage.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	
	["rims"] = {
		label = "Custom Wheel Rims", weight = 0, stack = true, close = true, description = "",
		client = { image = "rims.png", event = "jim-mechanic:client:Rims:Check", },
	},
	
	["livery"] = {
		label = "Livery Roll", weight = 0, stack = true, close = true, description = "",
		client = { image = "livery.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["paintcan"] = {
		label = "Vehicle Spray Can", weight = 0, stack = true, close = true, description = "",
		client = { image = "spraycan.png", event = "jim-mechanic:client:Paints:Check", },
	},
	["tires"] = {
		label = "Drift Smoke Tires", weight = 0, stack = true, close = true, description = "",
		client = { image = "tires.png", event = "jim-mechanic:client:Tires:Check", },
	},
	
	["horn"] = {
		label = "Custom Vehicle Horn", weight = 0, stack = true, close = true, description = "",
		client = { image = "horn.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	
	["internals"] = {
		label = "Internal Cosmetics", weight = 0, stack = true, close = true, description = "",
		client = { image = "internals.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	["externals"] = {
		label = "Exterior Cosmetics", weight = 0, stack = true, close = true, description = "",
		client = { image = "mirror.png", event = "jim-mechanic:client:Cosmetic:Check", },
	},
	
	["newoil"] = {
		label = "Car Oil", weight = 0, stack = true, close = true, description = "",
		client = { image = "caroil.png", },
	},
	["sparkplugs"] = {
		label = "Spark Plugs", weight = 0, stack = true, close = true, description = "",
		client = { image = "sparkplugs.png", },
	},
	["carbattery"] = {
		label = "Car Battery", weight = 0, stack = true, close = true, description = "",
		client = { image = "carbattery.png", },
	},
	["axleparts"] = {
		label = "Axle Parts", weight = 0, stack = true, close = true, description = "",
		client = { image = "axleparts.png", },
	},
	["sparetire"] = {
		label = "Spare Tire", weight = 0, stack = true, close = true, description = "",
		client = { image = "sparetire.png", },
	},
	
	["harness"] = {
		label = "Race Harness", weight = 0, stack = true, close = true, description = "Racing Harness so no matter what you stay in the car",
		client = { image = "harness.png", event = "jim-mechanic:client:applyHarness", remove = false },
	},
	
	["manual"] = {
		label = "Manual Transmission", weight = 0, stack = true, close = true, description = "Manual Transmission change for vehicles",
		client = { image = "manual.png", event = "jim-mechanic:client:applyManual", remove = false },
	},
	
	["underglow"] = {
		label = "Underglow LEDS", weight = 0, stack = true, close = true, description = "Underglow addition for vehicles",
		client = { image = "underglow.png", event = "jim-mechanic:client:applyUnderglow", remove = false },
	},
	
	["cleaningkit"] = {
		label = "Cleaning Kit", weight = 0, stack = true, close = true, description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = { image = "cleaningkit.png", event = "jim-mechanic:client:cleanVehicle"},
	},
	["repairkit"] = {
		label = "Repairkit", weight = 0, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle",
		client = { image = "repairkit.png", event = "jim-mechanic:vehFailure:RepairVehicle", item = "repairkit", full = false },
	},
	["advancedrepairkit"] = {
		label = "Advanced Repairkit", weight = 0, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle",
		client = { image = "advancedkit.png", event = "jim-mechanic:vehFailure:RepairVehicle", item = "advancedrepairkit", full = true },
	},

	["parkingcard"] = {
		label = "Parking Card",
		weight = 10,
		stack = true,
		close = false,
		description = "Allow you park your vehicle for free",
		client = {
			image = "parking_card.png",
		}
	},

	["cokestagetwo"] = {
		label = "Better Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Raw cocaine",
		client = {
			image = "cokestagetwo.png",
		}
	},

	["loosecoke"] = {
		label = "loose coke",
		weight = 125,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecoke.png",
		}
	},

	["cokebaggystagetwo"] = {
		label = "Bag of Good Coke",
		weight = 150,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagetwo.png",
		}
	},

	["cokestagethree"] = {
		label = "Best Raw Cocaine",
		weight = 250,
		stack = true,
		close = false,
		description = "Raw cocaine",
		client = {
			image = "cokestagethree.png",
		}
	},

	["loosecokestagethree"] = {
		label = "Purest Loose Coke",
		weight = 175,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecokestagethree.png",
		}
	},

	["loosecokestagetwo"] = {
		label = "More Pure Loose Coke",
		weight = 150,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecokestagetwo.png",
		}
	},

	["cokebaggystagethree"] = {
		label = "Bag of Great Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagethree.png",
		}
	},

	["shrimpcocktail"] = {
		label = "Shrimp Cocktail",
		weight = 50,
		stack = true,
		close = true,
		description = "Yummy seafood",
		client = {
			image = "shrimpcocktail.png",
		}
	},


	["orange"] = {
		label = "Orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "Orange Fruit",
		client = {
			image = "orange_fruit.png",
		}
	},

	["irishcream"] = {
		label = "Irish Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Irish Cream",
		client = {
			image = "irish_cream.png",
		}
	},

	["coffeebeans"] = {
		label = "Coffee Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "Coffee Beans to make Coffee",
		client = {
			image = "coffee_beans.png",
		}
	},

	["lime"] = {
		label = "Lime",
		weight = 100,
		stack = true,
		close = true,
		description = "Lime",
		client = {
			image = "lime.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "Chocolate",
		client = {
			image = "chocolate.png",
		}
	},

	["cranberryjuice"] = {
		label = "Cranberry Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Cranberry Juice",
		client = {
			image = "cranberry_juice.png",
		}
	},

	["amaretto"] = {
		label = "Amaretto liquor",
		weight = 100,
		stack = true,
		close = true,
		description = "Amaretto Liquor",
		client = {
			image = "amaretto.png",
		}
	},

	["curaco"] = {
		label = "Curaco liquor",
		weight = 100,
		stack = true,
		close = true,
		description = "Curaco Liquor",
		client = {
			image = "curaco.png",
		}
	},

	["orangejuice"] = {
		label = "Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Orange Juice",
		client = {
			image = "orangejuice.png",
		}
	},

	["rice"] = {
		label = "Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "Rice",
		client = {
			image = "rice.png",
		}
	},

	["strawberry"] = {
		label = "Strawberry Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "Strawberry Fruit",
		client = {
			image = "strawberry_fruit.png",
		}
	},

	["passionfruit"] = {
		label = "Passion Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "Passion Fruit",
		client = {
			image = "passion_fruit.png",
		}
	},

	["sprite"] = {
		label = "Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "Sprite",
		client = {
			image = "sprite.png",
		}
	},

	["salt"] = {
		label = "Salt",
		weight = 100,
		stack = true,
		close = true,
		description = "Salt",
		client = {
			image = "salt.png",
		}
	},

	["chocolatechips"] = {
		label = "Chocolate Chips",
		weight = 100,
		stack = true,
		close = true,
		description = "Chocolate Chips",
		client = {
			image = "chocolate_chips.png",
		}
	},

	["cookiedough"] = {
		label = "Cookie Dough",
		weight = 100,
		stack = true,
		close = true,
		description = "Cookie Dough",
		client = {
			image = "cookiedough.png",
		}
	},

	["lalab52"] = {
		label = "Tequi-la-la B52",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "b52.png",
		}
	},

	["lalablackr"] = {
		label = "Tequi la la Black R",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "blackr.png",
		}
	},

	["lalabluek"] = {
		label = "Tequi la la Blue K",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "bluek.png",
		}
	},

	["lalacuppuccinotini"] = {
		label = "Tequi la la Cuppuccinotini",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "cuppuccinotini.png",
		}
	},

	["lalacc"] = {
		label = "Tequi la la CC",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "cc.png",
		}
	},

	["lalairishflag"] = {
		label = "Tequi la la Irish Flag",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "irishflag.png",
		}
	},

	["lalakam"] = {
		label = "Tequi la la Kam",
		weight = 100,
		stack = true,
		close = true,
		description = "Yummy drink",
		client = {
			image = "kam.png",
		}
	},

	["lalacookie"] = {
		label = "Tequi la la Cookie",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Food",
		client = {
			image = "cookie.png",
		}
	},

	["lalasakeset"] = {
		label = "Tequi la la Sakeset",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Drink",
		client = {
			image = "sakeset.png",
		}
	},

	["lalaloversfruit"] = {
		label = "Tequi la la Lovers Fruit",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Drink",
		client = {
			image = "loversfruit.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 5,
		stack = true,
		close = false,
		description = "Lemon",
		client = {
			image = "lemon.png",
		}
	},

	["lalapopcorn"] = {
		label = "Tequi la la Popcorn",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Food",
		client = {
			image = "popcorn.png",
		}
	},

	["lalavoodoo"] = {
		label = "Tequi la la VooDoo",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Drink",
		client = {
			image = "voodoo.png",
		}
	},

	["lalasalad"] = {
		label = "Tequi la la Salad",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Food",
		client = {
			image = "salad.png",
		}
	},

	["lalapurgatory"] = {
		label = "Tequi la la Purgatory",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Drink",
		client = {
			image = "purgatory.png",
		}
	},

	["lalaicecream"] = {
		label = "Tequi la la Ice Cream",
		weight = 5,
		stack = true,
		close = false,
		description = "Yummy Desert",
		client = {
			image = "icecream.png",
		}
	},

	["cocainebrick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy package of Cocaine, mostly used for deals and takes up a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["lsdsheet"] = {
		label = "A Sheet of LSD Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
		client = {
			image = "gratefuldeadsheet.png",
		}
	},

	["cutcocaine"] = {
		label = "Cut Cocaine",
		weight = 500,
		stack = true,
		close = false,
		description = "A combination of Cocaine and Baking Soda",
		client = {
			image = "coke.png",
		}
	},

	["lsdtab"] = {
		label = "LSD Tab",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
		client = {
			image = "gratefuldead_tabs.png",
		}
	},

	["heroinneedle"] = {
		label = "Needle Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroin.png",
		}
	},

	["cocainesmallbrick"] = {
		label = "Small Coke Brick",
		weight = 500,
		stack = true,
		close = true,
		description = "Small package of Cocaine, mostly used for deals and takes up a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["cocainesodabrick"] = {
		label = "Shitty Coke Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy package of Cocaine mixed with Baking Soda, mostly used for deals and takes up a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["emptycocainebag"] = {
		label = "Empty Baggy",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coke_empty_bags.png",
		}
	},

	["redphosphorus"] = {
		label = "Red Phosphorus",
		weight = 200,
		stack = true,
		close = false,
		description = "Red Phosphorus",
		client = {
			image = "redphosphorus.png",
		}
	},

	["cocaleaf"] = {
		label = "Coca Leaf",
		weight = 7.8,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coke_leaf.png",
		}
	},

	["driedshrooms"] = {
		label = "Shrooms",
		weight = 250,
		stack = true,
		close = false,
		description = "Dried shrooms",
		client = {
			image = "driedshrooms.png",
		}
	},

	["cocainebaggy"] = {
		label = "Bag of Cocaine",
		weight = 42,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},
	["seranwrap"] = {
		label = "Seran Wrap",
		weight = 0,
		stack = true,
		close = false,
		description = "A classic package of seran wrap",
		client = {
			image = "rolling_paper.png",
		}
	},
	['usb_blue'] = {
		label = 'USB Drive',
		weight = 1000,
		stack = true,
		close = false,
		degrade = 600,
		description = "A blue USB flash drive"
	},

	['usb_pink'] = {
		label = 'USB Drive',
		weight = 1000,
		stack = true,
		close = false,
		degrade = 600,
		description = "A pink USB flash drive"
	},

	['nightvision'] = {
		label = 'Night Vision Goggles',
		weight = 6000,
		stack = true,
		close = false,
		degrade = 600,
		consume = 0.25,
		description = "These allow you to see in the dark"
	},

	['usb_grey'] = {
		label = 'Vault USB',
		weight = 1000,
		stack = true,
		close = false,
		degrade = 600,
		-- consume = 0.50, -- Use item twice and poof
		description = "A vault USB... What is this for?"
	},

	['usb_red'] = {
		label = 'USB Drive',
		weight = 1000,
		stack = true,
		close = false,
		degrade = 600,
		description = "A red USB flash drive"
	},

	['explosive'] = {
		label = 'Explosive',
		weight = 5000,
		stack = true,
		close = true,
		degrade = 600,
		description = "An improvised explosive of fireworks and thermite"
	},

	['usb_gold'] = {
		label = 'USB Drive',
		weight = 1000,
		stack = true,
		close = false,
		degrade = 600,
		description = "A gold USB flash drive"
	},

	['laptop_red'] = {
		label = 'P Laptop',
		weight = 2500,
		stack = false,
		close = true,
		-- consume = 0.50,
		description = "P Laptop? Could make you hundreds of thousands of dollars.. If you use it correctly."
	},

	['laptop_green'] = {
		label = 'Laptop',
		weight = 2500,
		stack = false,
		close = true,
		-- consume = 0.50,
		description = "A naughty laptop.. Do not get caught with this.."
	},

	['laptop_blue'] = {
		label = 'Laptop',
		weight = 2500,
		stack = false,
		close = true,
		-- consume = 0.50,
		description = "A naughty laptop.. Used at the back of a certain building.."
	},

	['laptop_gold'] = {
		label = 'Vault Laptop',
		weight = 2500,
		stack = false,
		close = true,
		-- consume = 0.50,
		description = "A vault laptop.. What is this used for?"
	},

	['laptop_grey'] = {
		label = 'Laptop',
		weight = 2500,
		stack = false,
		close = true,
		-- consume = 0.50,
		description = "A naughty laptop.. Clowns love this.."
	},

	['laptop_pink'] = {
		label = 'Laptop',
		weight = 2500,
		stack = false,
		close = true,
		-- consume = 0.50,
		description = "A naughty laptop.. unknown location for use.."
	},
	['usb_green'] = {
		label = 'USB Drive',
		weight = 300,
		stack = false,
		close = true,
		degrade = 600,
		description = 'A green USB flash drive'
	},
	['liquorkey'] = {
		label = 'Liquor Storeroom',
		weight = 200,
		stack = true,
		close = false,
		degrade = 600,
		description = "A curious key with the label 'Liquor Storeroom'."
	},
	['dirtymoney'] = {
		label = 'Dirty Money',
		weight = 0,
		stack = true,
		close = false,
		degrade = 600,
		description = "The ill-gotten proceeds of criminal activity. Illegal."
	},
	['hacking-laptop'] = {
		label = 'Hacker\'s Laptop',
		weight = 1500,
		stack = false,
		close = true,
		description = "A hacker's laptop, where'd you find this?"
	},
	['gpshackingdevice'] = {
		label = 'GPS Hacking Device',
		weight = 0,
		description = 'If you wish to disable vehicle GPS systems.',
		client = {
		export = 'rahe-boosting.gpshackingdevice',
		}
	},
	['lowervaultcodes'] = {
		label = 'Lower Vault Codes',
		weight = 300,
		stack = false,
		close = true,
		description = "Access Code: XXXX"
	},
	['stolenpc'] = {
		label = 'Computer',
		weight = 500,
		stack = true,
		close = true,
		description = "A Gaming PC"
	},

	['stolenscope'] = {
		label = 'Telescope',
		weight = 500,
		stack = true,
		close = true,
		description = "A Telescope"
	},

	['stolenlaptop'] = {
		label = 'Laptop',
		weight = 800,
		stack = true,
		close = true,
		description = "A Laptop"
	},

	['stolenmicro'] = {
		label = 'Microwave',
		weight = 500,
		stack = true,
		close = true,
		description = "A Microwave"
	},

	['stolentv'] = {
		label = 'Television',
		weight = 500,
		stack = true,
		close = true,
		description = "A Smart TV"
	},

	['stolenart'] = {
		label = 'Art',
		weight = 500,
		stack = true,
		close = true,
		description = "A Painting"
	},

	['stolencoffee'] = {
		label = 'Coffee Machine',
		weight = 500,
		stack = true,
		close = true,
		description = "A Coffee Machine"
	},

	['stolensafe'] = {
		label = 'Safe',
		weight = 500,
		stack = false,
		close = true,
		description = "A Locked Safe"
	},


	["testitem"] = {
		label = "Test Item",
		weight = 20000,
		stack = false,
		close = true,
		description = "This Is a Test",
		client = {
			image = "testitem.png",
		}
	},

	["green-laptop"] = {
		label = "Green Laptop",
		weight = 1000,
		stack = true,
		close = true,
		description = "A green laptop..",
		client = {
			image = "laptop-green.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["racingtablet"] = {
		label = "Racing Tablet",
		weight = 1000,
		stack = false,
		close = true,
		description = "Seems like something to do with cars.",
		client = {
			image = "racingtablet.png",
		}
	},

	["uvlight"] = {
		label = "UV Flashlight",
		weight = 300,
		stack = false,
		close = true,
		description = "A flashlight to see fingerprints",
		client = {
			image = "weapon_flashlight.png",
		}
	},

	["GPS Hacking Device"] = {
		label = "GPS Hacking Device",
		weight = 1500,
		stack = false,
		close = true,
		description = "Use this if you wish to disable vehicle GPS systems.",
		client = {
			image = "gps-device.png",
		}
	},
	["bmochi"] = {
		label = "Blue Mochi",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bmochi.png",
		},
	},
	["pmochi"] = {
		label = "Pink Mochi",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pmochi.png",
		},
	},
	["gmochi"] = {
		label = "Green Mochi",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gmochi.png",
		},
	},
	["omochi"] = {
		label = "Orange Mochi",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "omochi.png",
		},
	},
	["bobatea"] = {
		label = "Boba Tea",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bobatea.png",
		},
	},
	["bbobatea"] = {
		label = "Blue Boba Tea",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bbobatea.png",
		},
	},
	["gbobatea"] = {
		label = "Green Boba Tea",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gbobatea.png",
		},
	},
	["pbobatea"] = {
		label = "Pink Boba Tea",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pbobatea.png",
		},
	},
	["obobatea"] = {
		label = "Orange Boba Tea",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "obobatea.png",
		},
	},
	["kittycream"] = {
		label = "Kitty Cream",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "obobatea.png",
		},
	},
	["coffeejelly"] = {
		label = "Coffee Jelly",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "obobatea.png",
		},
	},
	["nekolatte"] = {
		label = "Neko Latte",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nekolatte.png",
		},
	},
	["catcoffee"] = {
		label = "Cat Coffee",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "catcoffee.png",
		},
	},
	["sake"] = {
		label = "Sake",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sake.png",
		},
	},
	["miso"] = {
		label = "Miso Soup",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "miso.png",
		},
	},
	["cake"] = {
		label = "Strawberry Cake",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cake.png",
		},
	},
	["bento"] = {
		label = "Bento Box",
		weight = "500",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bento.png",
		},
	},
	["riceball"] = {
		label = "Neko Onigiri",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "riceball.png",
		},
	},
	["nekocookie"] = {
		label = "Neko Cookie",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nekocookie.png",
		},
	},
	["nekodonut"] = {
		label = "Neko Donut",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nekodonut.png",
		},
	},
	["boba"] = {
		label = "Boba",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "boba.png",
		},
	},
	["flour"] = {
		label = "Flour",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "flour.png",
		},
	},
	["nori"] = {
		label = "Nori",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nori.png",
		},
	},
	["blueberry"] = {
		label = "Blueberry",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blueberry.png",
		},
	},
	["mint"] = {
		label = "Matcha",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "matcha.png",
		},
	},
	["tofu"] = {
		label = "Tofu",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tofu.png",
		},
	},
	["mocha"] = {
		label = "Mocha Meow",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mocha.png",
		},
	},
	["cakepop"] = {
		label = "Cat Cake-Pop",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cakepop.png",
		},
	},
	["pancake"] = {
		label = "PawCake",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pancake.png",
		},
	},
	["pizza"] = {
		label = "Kitty Pizza",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizza.png",
		},
	},
	["purrito"] = {
		label = "Purrito",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "purrito.png",
		},
	},
	["noodlebowl"] = {
		label = "Bowl of Noodles",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "noodlebowl.png",
		},
	},
	["noodles"] = {
		label = "Instant Noodles",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "noodles.png",
		},
	},
	["ramen"] = {
		label = "Bowl of Ramen",
		weight = "20",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ramen.png",
		},
	},
	["onion"] = {
		label = "Onion",
		weight = "5",
		stack = true,
		close = false,
		description = "An onion",
		client = {
			image = "onion.png",
		},
	},
	["tea"] = {
		label = "Tea Packet",
		weight = "10",
		stack = true,
		close = false,
		description = "Tea packet",
		client = {
			image = "teabag.png",
		},
	},
	["security_card_01"] = {
		label = "Green Security Card",
		weight = "0",
		stack = true,
		close = true,
		description = "A gold security card",
		client = {
			image = "securitycard_green.png",
		},
	},
	["security_card_02"] = {
		label = "Blue Security Card",
		weight = "0",
		stack = true,
		close = true,
		description = "A gold security card",
		client = {
			image = "securitycard_blue.png",
		},
	},
	["security_card_03"] = {
		label = "Red Security Card",
		weight = "1000",
		stack = true,
		close = true,
		description = "A purple security card.",
		client = {
			image = "securitycard_red.png",
		},
	},
	["security_card_04"] = {
		label = "Yellow Security Card",
		weight = "1000",
		stack = true,
		close = true,
		description = "A black security card.",
		client = {
			image = "securitycard_yellow.png",
		},
	},
	["security_card_05"] = {
		label = "White Security Card",
		weight = "1000",
		stack = true,
		close = true,
		description = "A black security card.",
		client = {
			image = "securitycard_white.png",
		},
	},
	["security_card_06"] = {
		label = "Pink Security Card",
		weight = "1000",
		stack = true,
		close = true,
		description = "A black security card.",
		client = {
			image = "securitycard_pink.png",
		},
	},
	["security_card_07"] = {
		label = "Purple Security Card",
		weight = "1000",
		stack = true,
		close = true,
		description = "A black security card.",
		client = {
			image = "securitycard_purple.png",
		},
	},
	["security_card_08"] = {
		label = "Black Security Card",
		weight = "1000",
		stack = true,
		close = true,
		description = "A black security card made specifically for LSPD, used for all banks",
		client = {
			image = "securitycard_black.png",
		},
	},
	["sec_a"] = {
		label = "Green Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_green.png",
		},
	},
	["sec_b"] = {
		label = "Blue Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_blue.png",
		},
	},
	["sec_c"] = {
		label = "Red Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_red.png",
		},
	},
	["sec_d"] = {
		label = "Pink Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_pink.png",
		},
	},
	["sec_f"] = {
		label = "Purple Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_purple.png",
		},
	},
	["sec_g"] = {
		label = "Yellow Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_yellow.png",
		},
	},
	["sec_h"] = {
		label = "Black Gruppe 6 Access Card",
		weight = "0",
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gruppe6_black.png",
		},
	},
	["fleeca_bankcard"] = {
		label = "Fleeca Bank Security Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "A keycard stolen from a Fleeca Bank.",
		client = {
			image = "bankcard_fleeca.png",
		},
	},
	["maze_bankcard"] = {
		label = "Maze Bank Security Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "A keycard stolen from a Maze Bank.",
		client = {
			image = "bankcard_maze.png",
		},
	},
	["pacific_key1"] = {
		label = "Level 1 Pacific Access Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "A data key stolen from the Pacific Standard Bank.",
		client = {
			image = "levelone.png",
		},
	},
	["pacific_key2"] = {
		label = "Level 2 Pacific Access Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "A data key stolen from the Pacific Standard Bank.",
		client = {
			image = "leveltwo.png",
		},
	},
	["pacific_key3"] = {
		label = "Level 3 Pacific Access Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "A data key stolen from the Pacific Standard Bank.",
		client = {
			image = "levelthree.png",
		},
	},
	["pacific_key4"] = {
		label = "Level 4 Pacific Access Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "A data key stolen from the Pacific Standard Bank.",
		client = {
			image = "levelfour.png",
		},
	},
	["pacific_key5"] = {
		label = "Level 5 Pacific Access Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "",
		client = {
			image = "levelfive.png",
		},
	},
	["pacific_key6"] = {
		label = "Level 6 Pacific Access Card",
		weight = "1000",
		stack = false,
		close = true,
		description = "",
		client = {
			image = "levelsix.png",
		},
	},

	["sec_k"] = {
		label = "Sablon Card",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sec_k.png",
		},
	},
	["magiccupcake"] = {
		label = "Magic Cupcake",
		weight = "250",
		stack = true,
		close = true,
		description = "A magical cupcake?",
		client = {
			image = "cupmorango.png",
		},
	},
	['medicalbag'] = {
		label = 'Medical Bag',
		weight = 220,
		stack = true,
		description = "A comprehensive medical kit for treating injuries and ailments.",
	},
	
	['defibrillator'] = {
		label = 'Defibrillator',
		weight = 100,
		stack = true,
		description = "Used for reviving patients.",
	},
	
	['tweezers'] = {
		label = 'Tweezers',
		weight = 100,
		stack = true,
		description = "Precision tweezers for safely removing foreign objects, such as bullets, from wounds.",
	},
	
	['burncream'] = {
		label = 'Burn Cream',
		weight = 100,
		stack = true,
		description = "Specialized cream for treating and soothing minor burns and skin irritations.",
	},
	
	['suturekit'] = {
		label = 'Suture Kit',
		weight = 100,
		stack = true,
		description = "A kit containing surgical tools and materials for stitching and closing wounds.",
	},
	
	['icepack'] = {
		label = 'Ice Pack',
		weight = 200,
		stack = true,
		description = "An ice pack used to reduce swelling and provide relief from pain and inflammation.",
	},
	
	['stretcher'] = {
		label = 'Ice Pack',
		weight = 200,
		stack = true,
		description = "An ice pack used to reduce swelling and provide relief from pain and inflammation.",
	},
	
	['emstablet'] = {
		label = 'Ems tablet',
		weight = 200,
		stack = true,
		client = {
			export = 'ars_ambulancejob.openDistressCalls'
		}
	},

	-- PRISON 
	['prisonslushie'] = {
		label = 'Slushie',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Slushie',
		client = {
			image = 'prisonslushie.png',
			usable = true
		}
	},

	['prisonspoon'] = {
		label = 'Spoon',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Cafeteria spoon',
		client = {
			image = 'prisonspoon.png',
			usable = false
		}
	},

	['prisonrock'] = {
		label = 'Coarse Rock',
		weight = 1000,
		stack = true,
		close = false,
		description = 'A very big coarse rock',
		client = {
			image = 'prisonrock.png',
			usable = false
		}
	},

	['prisonfruit'] = {
		label = 'Fruit Mix',
		weight = 1000,
		stack = true,
		close = false,
		description = 'A mix of random fruits',
		client = {
			image = 'prisonfruit.png',
			usable = false
		}
	},

	['prisonwine'] = {
		label = 'Pruno Mix',
		weight = 1000,
		stack = true,
		close = false,
		description = 'You should ferment this to get a good buzz',
		client = {
			image = 'prisonwine.png',
			usable = false
		}
	},

	['prisonwine_fermented'] = {
		label = 'Pruno',
		weight = 1000,
		stack = true,
		close = true,
		description = 'This should give you a good buzz',
		client = {
			image = 'prisonwine_fermented.png',
			usable = true
		}
	},

	['prisonsugar'] = {
		label = 'Sugar Pack',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Plain old sugar',
		client = {
			image = 'prisonsugar.png',
			usable = false
		}
	},

	['prisonmeth'] = {
		label = 'Crank',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Prison made meth of low quality.',
		client = {
			image = 'prisonmeth.png',
			usable = true
		}
	},

	['prisonbag'] = {
		label = 'Plastic Bag',
		weight = 1000,
		stack = true,
		close = false,
		description = 'A plastic bag',
		client = {
			image = 'prisonbag.png',
			usable = false
		}
	},

	['prisonjuice'] = {
		label = 'Orange Juice',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Regular Orange Juice',
		client = {
			image = 'prisonjuice.png',
			usable = false
		}
	},

	['prisonchemicals'] = {
		label = 'Chemicals',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Some random chemicals',
		client = {
			image = 'prisonchemicals.png',
			usable = false
		}
	},

	['prisonwateringcan'] = {
		label = 'Watering Can',
		weight = 1000,
		stack = false,
		close = false,
		description = 'Watering can with a Bolingbroke Penitentiary label.',
		client = {
			image = 'prisonwateringcan.png',
			usable = false
		}
	},

	['prisonfarmseeds'] = {
		label = 'Plant Seeds',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Seeds, water, nutrition and love make happy plants',
		client = {
			image = 'prisonfarmseeds.png',
			usable = false
		}
	},

	['prisonfarmnutrition'] = {
		label = 'Plant Nutrition',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Plant nutrition with a Bolingbroke Penitentiary label',
		client = {
			image = 'prisonfarmnutrition.png',
			usable = false
		}
	},
	['mdtcitation'] = {
		label = 'Citation',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Citation from a Police Officer!',
		client = {
			image = 'citation.png',
		}
	},
	["uvlight"] = {
		label = "UV Flashlight",
		weight = 300,
		stack = true,
		close = true,
		description = "A flashlight to see fingerprints",
		client = {
			image = "weapon_flashlight.png",
		}
	},

	["dongle1"] = {
		label = "USB Phone Dongle",
		weight = 50,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "phone_dongle.png",
		}
	},

	-- MAILBOX ROBBERY ITEMS:
	["jordans"] = {
		label = "Jordans",
		weight = 50,
		stack = false,
		close = true,
		description = "These shoes look expensive.",
		client = {
			image = "jordans.png",
		}
	},

	["leo-gps"] = {
		label = "LEO GPS",
		weight = 2000,
		stack = false,
		close = true,
		description = "Show your gps location to others",
		client = {
			image = "leo-gps.png",
		}
	},
	["cctv_faulty"] = {
		label = "Faulty CCTV Camera",
		weight = 100,
		stack = true,
		close = true,
		description = "Static CCTV Camera",

	},

	["cctv_default"] = {
		label = "Default CCTV Camera",
		weight = 100,
		stack = true,
		close = true,
		description = "360 Degree CCTV Camera",

	},

	["cctv_advanced"] = {
		label = "Advanced CCTV Camera",
		weight = 100,
		stack = true,
		close = true,
		description = "Advanced CCTV Camera",

	},

	["cctv_tablet"] = {
		label = "CCTV Tablet",
		weight = 100,
		stack = true,
		close = true,
		description = "CCTV Viewing Tablet",

	},
	["carpart_wheel"] = {
		label = "Wheel",
		weight = 10000,
		stack = false,
		close = false,
		description = "Wheel from a car",
		client = {
			image = "carpart_wheel.png",
		}
	},
	["carpart_door"] = {
		label = "Door",
		weight = 10000,
		stack = false,
		close = false,
		description = "Door from a car",
		client = {
			image = "carpart_door.png",
		}
	},
	["carpart_hood"] = {
		label = "Hood",
		weight = 10000,
		stack = false,
		close = false,
		description = "Hood from a car",
		client = {
			image = "carpart_hood.png",
		}
	},
	["carpart_trunk"] = {
		label = "Trunk",
		weight = 10000,
		stack = false,
		close = false,
		description = "Trunk from a car",
		client = {
			image = "carpart_trunk.png",
		}
	},

	["WEAPON_KARAMBIT_ULTRAVIOLET"] = {
		label = "Karambit Ultraviolet",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Ultraviolet",
		client = {
			image = "karambit_ultraviolet.png",
		}
	},

	["WEAPON_KARAMBIT_SCORCHED"] = {
		label = "Karambit Scorched",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Scorched",
		client = {
			image = "karambit_scorched.png",
		}
	},

	["WEAPON_KARAMBIT_BOREALFOREST"] = {
		label = "Karambit Boreal Forest",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Boreal Forest",
		client = {
			image = "karambit_boreal_forest.png",
		}
	},

	["WEAPON_KARAMBIT_FOREST"] = {
		label = "Karambit Forest",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Forest",
		client = {
			image = "karambit_forest.png",
		}
	},

	["WEAPON_KARAMBIT_SAFARIMESH"] = {
		label = "Karambit Safari Mesh",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Safari Mesh",
		client = {
			image = "karambit_safari_mesh.png",
		}
	},

	["WEAPON_KARAMBIT_RUSTCOAT"] = {
		label = "Karambit Rust Coat",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Rust Coat",
		client = {
			image = "karambit_rust_coat.png",
		}
	},

	["WEAPON_KARAMBIT_URBANMASKED"] = {
		label = "Karambit Urban Masked",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Urban Masked",
		client = {
			image = "karambit_urban_masked.png",
		}
	},

	["WEAPON_KARAMBIT_BRIGHTWATER"] = {
		label = "Karambit Bright Water",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Bright Water",
		client = {
			image = "karambit_brightwater.png",
		}
	},

	["WEAPON_KARAMBIT_STAINED"] = {
		label = "Karambit Stained",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Stained",
		client = {
			image = "karambit_stained.png",
		}
	},

	["WEAPON_KARAMBIT_NIGHT"] = {
		label = "Karambit Night",
		weight = 1000,
		stack = false,
		close = true,
		description = "CS GO Knife - Karambit Night",
		client = {
			image = "karambit_night.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 0,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},
	["frozenshrimp"] = {
		label = "Large Frozen Shrimp",
		weight = 350,
		stack = true,
		close = false,
		description = "A bag of large frozen shrimp",
		client = {
			image = "frozen_shrimp.png",
		}
	},

	["etgstim"] = {
		label = "ETG Charge Stim",
		weight = 5,
		stack = true,
		close = true,
		description = "SJ6 stim, helps stop bleeding.",
		client = {
			image = "etgstim.png",
		}
	},
}