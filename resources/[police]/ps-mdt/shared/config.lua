Config = Config or {}

Config.UsingPsHousing = false
Config.UsingDefaultQBApartments = true
Config.OnlyShowOnDuty = true

-- RECOMMENDED Fivemerr Images. DOES NOT EXPIRE.
-- YOU NEED TO SET THIS UP FOLLOW INSTRUCTIONS BELOW.
-- Documents: https://docs.fivemerr.com/integrations/mdt-scripts/ps-mdt
Config.FivemerrMugShot = true

-- Discord webhook for images. NOT RECOMMENDED, IMAGES EXPIRE.
Config.MugShotWebhook = false
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = true

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBBankingUse = false

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing lj-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "ox_inventory"

-- Only compatible with ox_inventory
Config.RegisterWeaponsAutomatically = false

-- Set to true to register all weapons that are added via AddItem in ox_inventory
Config.RegisterCreatedWeapons = false

-- "LegacyFuel", "lj-fuel", "ps-fuel"
Config.Fuel = "cdn-fuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['ambulance'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['bcso'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['doj'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['sast'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['sasp'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['doc'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['lssd'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
    ['sapr'] = 'https://docs.google.com/spreadsheets/d/1vDHXEEeptEu1EzWPpouABuWpes45piOL6FLn5OiyKtM/edit?gid=0#gid=0',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}

Config.PoliceJobs = {
    ['police'] = true,
}

Config.AmbulanceJobs = {
    ['ambulance'] = true,
    ['doctor'] = true
}

Config.DojJobs = {
    ['doj'] = true,
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    [1] = vector4(436.68, -1007.42, 27.32, 180.0),
    [2] = vector4(-436.14, 5982.63, 31.34, 136.0),
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = true
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = true -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[7] = false,
	},
	['police'] = {
		[17] = true,
	},
	['doj'] = {
		[22] = true,
	},    
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[7] = false,
	},
	['police'] = {
		[17] = true,
	},
    ['doj'] = {
		[22] = false,
	},
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[7] = true,
	},
	['police'] = {
		[17] = true,
	},
    ['doj'] = {
		[22] = false,
	},
}

Config.RemoveWeaponsPerms = {
	['ambulance'] = {
		[7] = false,
	},
	['police'] = {
		[17] = true,
    },
    ['doj'] = {
        [22] = true
    },
}

Config.PenalCodeTitles = {
    [1] = 'SA Code Title 1. Motor Vehicles',
    [2] = 'SA Code Title 2. Property Crimes',
    [3] = 'SA Code Title 3. Possession',
    [4] = 'SA Code Title 4. Crimes Against the Person',
    [5] = 'SA Code Title 5. Nature',
    [6] = 'SA Code Title 6. Ports',
    [7] = 'SA Code Title 7. Crimes Against the State',
    [8] = 'SA Code Title 8. Commercial Vehicles',
    
}
--Infractions
Config.PenalCode = {
    [1] = {
        [1] = {title = 'Speeding <10mph over', class = 'infraction', id = '101-01a', months = 0, fine = 50, color = 'green', description = 'Speeding 10 MPH over the posted limit.'},
        [2] = {title = 'Speeding 11mph to 20mph Over', class = 'infraction', id = '101-01b', months = 0, fine = 500, color = 'green', description = 'Speeding 11-20 MPH over the posted limit.'},
        [3] = {title = 'Speeding 21mph to 30mph Over', class = 'infraction', id = '101-01c', months = 0, fine = 750, color = 'green', description = 'Speeding 21-30 MPH over the posted limit.'},
        [4] = {title = 'Speeding 30mph to 50mph Over', class = 'infraction', id = '101-01d', months = 0, fine = 1250, color = 'green', description = 'Speeding 30-50 MPH over the posted limit.'},
        [5] = {title = 'Parking on Shoulder', class = 'infraction', id = '101-02a', months = 0, fine = 200, color = 'green', description = 'Parking on the side of the road without reason.'},
        [6] = {title = 'Parking in a No-Parking Zone', class = 'infraction', id = '101-02b', months = 0, fine = 200, color = 'green', description = 'Parking in a No Parking zone without emergency reason.'},
        [7] = {title = 'Parking in an Emergency Zone', class = 'infraction', id = '101-02b', months = 0, fine = 1000, color = 'green', description = 'Parking in an Emergency Zone without an Emergency Vehicle or in an active Emergency.'},
        [8] = {title = 'Failure to Yield to Emergency Vehicle', class = 'infraction', id = '101-03a', months = 0, fine = 1000, color = 'green', description = 'Failing to stop when signaled to by an Emergency Service Personnel.'},
        [9] = {title = 'Failure to Obey Traffic Signal', class = 'infraction', id = '101-03b', months = 0, fine = 200, color = 'green', description = 'Running a Red Light, Stop Sign, Stop Line, or any other traffic signal.'},
        [10] = {title = 'Negligent Operation of Motor Vehicle', class = 'infraction', id = '102-01', months = 0, fine = 250, color = 'green', description = 'Driving with negligence; failing to check blind spot.'},
        [11] = {title = 'Careless Operation of Motor Vehicle', class = 'infraction', id = '102-02', months = 0, fine = 2000, color = 'green', description = 'Driving carelessly; swerving between lanes to get somewhere.'},
        [12] = {title = 'Driving with an Unregistered vehicle', class = 'infraction', id = '103-04', months = 0, fine = 200, color = 'green', description = 'Driving a vehicle not registered to anyone, NOT a vehicle.'},
        [13] = {title = 'Minor Missing Vehicle Component', class = 'Fix it infraction', id = '104-01', months = 0, fine = 100, color = 'green', description = 'Missing Tail-light, Headlight, or other minor component.'},
        [14] = {title = 'Vehicle Unroadworthy or Unfit for Operation', class = 'infraction', id = '104-02', months = 0, fine = 500, color = 'green', description = 'Vehicle completely unsafe to drive.'},
        [15] = {title = 'Obstruction of Operator View', class = 'infraction', id = '104-03', months = 0, fine = 700, color = 'green', description = 'Anything obstructing the drivers view.'},
        [16] = {title = 'Distracted Driving', class = 'infraction', id = '104-04', months = 0, fine = 500, color = 'green', description = 'Driving while texting, eating, drinking, etc.'},
        [17] = {title = 'Vehicle Hydraulic Violation', class = 'infraction', id = '104-05', months = 0, fine = 500, color = 'green', description = 'Excessive modified hydraulic use, such as bouncing a vehicle up and down in an intersection.'},
        [18] = {title = 'Identification or Documentation Not Present', class = 'infraction', id = '105-01', months = 0, fine = 200, color = 'green', description = 'Does not have their ID or any other document present.'},
        [19] = {title = 'Improperly Displayed License Plate', class = 'infraction', id = '108-01', months = 0, fine = 200, color = 'green', description = 'License plate either covered or not present.'},
        [20] = {title = 'Window Tint (>70%)', class = 'infraction', id = '108-02', months = 0, fine = 200, color = 'green', description = 'Vehicle Tint that is near pitch black (Limo).'},
        [21] = {title = 'Neon Underglow while in Operation (Red Only)', class = 'infraction', id = '108-03', months = 0, fine = 200, color = 'green', description = 'Modified underglow on a vehicle.'},
        [22] = {title = 'Reckless Operation of Motor Vehicle', class = 'Misdemeanor', id = '102-03a', months = 15, fine = 1000, color = 'orange', description = 'Driving Recklessly; driving in the opposite lanes.'},
        [23] = {title = 'Driving with Suspended or Revoked Permit', class = 'Misdemeanor', id = '103-02', months = 60, fine = 5000, color = 'orange', description = 'Driving with a suspsended or revoked Drivers License / Permit'},
        [24] = {title = 'Driving without a Valid Permit', class = 'Misdemeanor', id = '103-01', months = 15, fine = 500, color = 'orange', description = 'Driving without a valid Drivers License/Permit'},
        [25] = {title = 'Failure to Present Documentation or Identification', class = 'Misdemeanor', id = '105-02', months = 15, fine = 500, color = 'orange', description = 'Refuses to provide documentation.'},
        [26] = {title = 'Speeding 50mph Over', class = 'Felony', id = '101-01e', months = 60, fine = 1500, color = 'red', description = 'Speeding >50 MPH over the posted limit.'},
        [27] = {title = 'Reckless Operation of Motor Vehicle Resulting in Serious Bodily Injury or Death', class = 'Felony', id = '102-03b', months = 60, fine = 10000, color = 'red', description = 'Driving Recklessly resulting in an injury or death.'},
        [28] = {title = 'Driving While Intoxicated (DWI)', class = 'Felony', id = '106-01a', months = 60, fine = 750, color = 'red', description = 'Driving while intoxicated (Alcohol).'},
        [29] = {title = 'Driving While Intoxicated (DWI) Resulting in Serious Bodily Injury or Death', class = 'Felony', id = '106-01b', months = 75, fine = 2500, color = 'red', description = 'Driving while intoxicated (Alcohol) resulting in a serious bodily injury or death.'},
        [30] = {title = 'Driving Under the Influence (DUI)', class = 'Felony', id = '106-02a', months = 60, fine = 1250, color = 'red', description = 'Driving under the influence of a substance that is NOT alcohol.'},
        [31] = {title = 'Driving Under the Influence (DUI) Resulting in Serious Bodily Injury or Death', class = 'Felony', id = '106-02b', months = 75, fine = 2500, color = 'red', description = 'Driving under the influence of a substance that is NOT alcohol resulting in serious bodily injury or death.'},
        [32] = {title = 'Concealing a Fugitive in a Vehicle ', class = 'Felony', id = '108-07', months = 90, fine = 800, color = 'red', description = 'Knowingly concealing a fugitive in a vehicle in the attempt to hide them from the Police.'},
        [33] = {title = 'Knowingly Transporting Wanted Person(s)', class = 'Felony', id = '108-08', months = 60, fine = 5000, color = 'red', description = 'Knowingly transporting a wanted person (Public Warrant) in the attempt to evade the Police.'},
        [34] = {title = 'Illegal Vehicle Modification', class = 'infraction', id = '108-06', months = 0, fine = 750, color = 'green', description = 'Illegal Modifications to a vehicle, such as Nitrous.'},
    },   
    [2] = {
        [1] = {title = 'Unintentional Property Damage', class = 'infraction', id = '201-02', months = 0, fine = 0, color = 'green', description = 'Unintentional public property damage typically caused by an MVA.'},
        [2] = {title = 'Vandalism', class = 'Misdemeanor', id = '201-01', months = 60, fine = 2000, color = 'orange', description = 'The act of defacing a property, such as graffiti.'},
        [3] = {title = 'Arson', class = 'Felony', id = '201-04', months = 50, fine = 10000, color = 'red', description = 'Lighting a fire with intention to cause property or personal damages.'},
        [4] = {title = 'Destruction of Government Property', class = 'Felony', id = '201-05', months = 60, fine = 7500, color = 'red', description = 'Intentional Destruction of Government Property, such as destroying a Police Vehicle.'},
        [5] = {title = 'Trespassing', class = 'Misdemeanor', id = '20202', months = 15, fine = 200, color = 'orange', description = 'Tresspassing on Private Property without proper authority.'},
        [6] = {title = 'Burglary', class = 'Felony', id = '202-03', months = 75, fine = 500, color = 'red', description = 'Entry into a building illegally with intent to commit a crime, especially theft.'},
        [7] = {title = 'Grand Theft', class = 'Felony', id = '202-04c', months = 60, fine = 500, color = 'red', description = 'Theft of an item over $1,000.'},
        [8] = {title = 'Grand Theft Auto', class = 'Felony', id = '202-04d', months = 20, fine = 1000, color = 'red', description = 'Theft of a Vehicle'},
        [9] = {title = 'Petty Theft', class = 'Misdemeanor', id = '202-04a', months = 15, fine = 200, color = 'red', description = 'Theft of an item under $100.'},
        [10] = {title = 'Theft', class = 'Misdemeanor', id = '202-04b', months = 30, fine = 500, color = 'red', description = 'Theft of an item between $100 and $1,000.'},
    },    
    [3] = {
        [1] = {title = 'Possession of Stolen Property', class = 'Misdemeanor', id = '301-01a', months = 10, fine = 200, color = 'orange', description = 'Possession of property such as an item that was stolen.'},
        [2] = {title = 'Possession of Stolen Vehicle', class = 'Misdemeanor', id = '301-01b', months = 10, fine = 500, color = 'orange', description = 'The action of taking property unlawfully from a person or place by force or threat of force while armed.'},
        [3] = {title = 'Possession of Stolen Property in Excess of $10,000', class = 'Felony', id = '301-01c', months = 60, fine = 500, color = 'red', description = 'Poessession of Stolen Property in Excess of $10,000 such as an expensive watch.'},
        [4] = {title = 'Possession of Burglary Tools', class = 'Misdemeanor', id = '301-02', months = 20, fine = 1000, color = 'orange', description = 'Crowbar, Lockpicks, Screwdrivers, etc. with probable intent to burglarize.'},
        [5] = {title = 'Illegal Possession of Class 1 Firearm', class = 'Felony', id = '302-01a', months = 30, fine = 2000, color = 'red', description = 'Carrying a Class 1 Firearm without proper permit.'},
        [6] = {title = 'Illegal Possession of Class 2 Firearm', class = 'Felony', id = '302-01b', months = 60, fine = 3000, color = 'red', description = 'Carrying a Class 2 Firearm without proper permit.'},
        [7] = {title = 'Illegal Possession of Class 3 Firearm', class = 'Felony', id = '302-01c', months = 90, fine = 5000, color = 'red', description = 'Carrying a Class 3 Firearm without proper permit.'},
        [8] = {title = 'Illegal Possession of Class 4 Firearm', class = 'Felony', id = '302-01d', months = 300, fine = 20000, color = 'red', description = 'Carrying a Class 4 Firearm without proper permit.'},
        [9] = {title = 'Possession of a Schedule 1 Controlled Substance', class = 'Felony', id = '303-02a', months = 60, fine = 1500, color = 'red', description = 'Possession of 8 grams or more, fine stacks per 64 grams'},
        [10] = {title = 'Possession of a Schedule 2 Controlled Substance', class = 'Misdemeanor', id = '303-02b', months = 20, fine = 1000, color = 'orange', description = 'Possession of 8 grams or more, fine stacks per 64 grams'},
        [11] = {title = 'Possession of a Schedule 3 Controlled Substance', class = 'Misdemeanor', id = '303-02c', months = 10, fine = 1000, color = 'orange', description = 'Possession of a Controlled Substance.'},
        [12] = {title = 'Possession of a Schedule 4 Controlled Substance', class = 'infraction', id = '303-02d', months = 0, fine = 1000, color = 'green', description = 'Possession of a Controlled Substance.'},
        [13] = {title = 'Possession of a Schedule 5 Controlled Substance', class = 'infraction', id = '303-02e', months = 0, fine = 1000, color = 'green', description = 'Possession of a Controlled Substance.'},
        [14] = {title = 'Possession of a Controlled Substance with Intent to Distribute', class = 'Felony', id = '303-02f', months = 60, fine = 2000, color = 'red', description = 'Carrying over 1 Kilogram of any substance is considered intent to distribute. Charge stacks per kilo Any suspects apprehended with over 2 kilos of any substance need to be reported to SAST immediately.'},
        [15] = {title = 'Manufacture of a Controlled Substance', class = 'Felony', id = '303-02g', months = 90, fine = 2000, color = 'red', description = 'Manufacturing a controlled substance with intent to distribute or use.'},
        [16] = {title = 'Dealing a Controlled Substance', class = 'Misdemeanor', id = '303-02i', months = 20, fine = 1000, color = 'orange', description = 'Illegal selling of narcotics / substances.'},
        [17] = {title = 'Possession of Drug Paraphernalia', class = 'Misdemeanor', id = '303-02j', months = 20, fine = 1000, color = 'orange', description = 'All equipment, products and materials of any kind that are used, designed for use or primarily intended for use in planting,  growing, harvesting, manufacturing, etc.'},
        [18] = {title = 'Bribery', class = 'Misdemeanor', id = '303-03', months = 20, fine = 1000, color = 'orange', description = 'Attempted or Successful Bribery of a Government Official.'},
    },    
    [4] = {
        [1] = {title = 'Smoking Violation', class = 'infraction', id = '401-02', months = 0, fine = 100, color = 'green', description = 'Smoking in a Prohibited Area'},
        [2] = {title = 'Public Intoxication', class = 'Misdemeanor', id = '401-01a', months = 10, fine = 100, color = 'orange', description = 'Public Intoxication.'},
        [3] = {title = 'Public Urination', class = 'Misdemeanor', id = '401-01b', months = 10, fine = 500, color = 'orange', description = 'Public Urination.'},
        [4] = {title = 'Probation Violation', class = 'Misdemeanor', id = '401-03', months = 10, fine = 100, color = 'orange', description = 'Probation Violation.'},
        [5] = {title = 'Violation of Restraining Order', class = 'Misdemeanor', id = '401-04', months = 20, fine = 1000, color = 'orange', description = 'Violation of Restraining Order.'},
        [6] = {title = 'Disturbing the Peace', class = 'Misdemeanor', id = '401-05', months = 10, fine = 75, color = 'orange', description = 'Disturbing the Peace.'},
        [7] = {title = 'Public Discharge of a Firearm', class = 'Misdemeanor', id = '401-06', months = 20, fine = 200, color = 'orange', description = 'Public Discharge of a Firearm.'},
        [8] = {title = 'Maintaining a Common Nuisance', class = 'Misdemeanor', id = '401-07', months = 10, fine = 100, color = 'orange', description = 'Knowingly using or renting out a place for people to make, sell, or use illegal drugs.'},
        [9] = {title = 'Public Endangerment', class = 'Misdemeanor', id = '401-08', months = 10, fine = 500, color = 'orange', description = 'Crimes which place the public in some form of danger, although that danger can be more or less severe according to the crime.'},
        [10] = {title = 'Reckless Endangerment', class = 'Felony', id = '401-09', months = 60, fine = 2000, color = 'red', description = 'A person commits the crime of reckless endangerment or wanton endangerment if the person recklessly engages in conduct which creates substantial jeopardy of severe corporeal trauma to another person.'},
        [11] = {title = 'Open Alcohol Container in Public', class = 'Misdemeanor', id = '401-12', months = 10, fine = 200, color = 'orange', description = 'Open Alcohol Container in Public.'},
        [12] = {title = 'Battery', class = 'Misdemeanor', id = '402-01a', months = 20, fine = 1000, color = 'orange', description = 'The unlawful use of force or violence against another person, intentionally causing harm or offensive contact.'},
        [13] = {title = 'Domestic Battery', class = 'Misdemeanor', id = '402-01b', months = 20, fine = 1000, color = 'orange', description = 'Battery committed against a family member, cohabitant, or someone in a close relationship, such as a spouse or partner.'},
        [14] = {title = 'Aggravated Battery', class = 'Felony', id = '402-01c', months = 60, fine = 3500, color = 'red', description = 'Aggravated battery is a physical attack that is more severe due to the use of a deadly weapon, the intent to cause permanent harm or disfigurement, or inflicting serious bodily injury.'},
        [15] = {title = 'Battery on a Public Servant', class = 'Felony', id = '402-01d', months = 20, fine = 4500, color = 'red', description = 'Battery committed against a public servant (e.g., police officer, firefighter) while they are performing their official duties.'},
        [16] = {title = 'Assault', class = 'Misdemeanor', id = '402-02d', months = 20, fine = 1500, color = 'orange', description = 'The intentional act of creating a reasonable apprehension of imminent harmful or offensive contact in another person, without physical contact necessarily occurring.'},
        [17] = {title = 'Aggravated Assault', class = 'Felony', id = '402-02b', months = 60, fine = 2000, color = 'red', description = 'An assault that is more severe due to the use of a deadly weapon, the intent to commit another felony, or causing serious bodily injury. '},
        [18] = {title = 'Assault on a Public Servant', class = 'Felony', id = '402-02c', months = 60, fine = 2500, color = 'red', description = 'Assault committed against a public servant while they are performing their official duties.'},
        [19] = {title = 'Voluntary Manslaughter', class = 'Felony', id = '403-01a', months = 150, fine = 0, color = 'purple', description = 'The intentional killing of another person in the heat of passion or during a sudden quarrel, without premeditation.'},
        [20] = {title = 'Involuntary Manslaughter', class = 'Felony', id = '403-01b', months = 150, fine = 0, color = 'purple', description = 'The unintentional killing of another person due to reckless or criminally negligent behavior.'},
        [21] = {title = 'Second Degree Murder', class = 'Felony', id = '403-02b', months = 150, fine = 0, color = 'purple', description = 'The intentional killing of another person without premeditation, but with malice aforethought.'},
        [22] = {title = 'First Degree Murder', class = 'Felony', id = '403-02c', months = 150, fine = 0, color = 'purple', description = 'The intentional, premeditated, and deliberate killing of another person.'},
        [23] = {title = 'Capital Murder', class = 'Capital Punishment', id = '403-02e', months = 9999, fine = 9999, color = 'black', description = 'A murder that qualifies for the death penalty, often involving specific circumstances like killing a police officer, committing the murder during another felony, or multiple victims.'},
        [24] = {title = 'Forgery', class = 'Felony', id = '404-01', months = 90, fine = 2000, color = 'red', description = 'The act of creating, altering, or imitating a document, signature, or other form of writing with the intent to deceive or defraud.'},
        [25] = {title = 'False Documentation', class = 'Misdemeanor', id = '404-02', months = 20, fine = 1000, color = 'orange', description = 'The creation or use of a document that is not genuine, with the intent to deceive or defraud.'},
        [26] = {title = 'Fraud', class = 'Felony', id = '404-03', months = 90, fine = 2000, color = 'red', description = 'The intentional deception or misrepresentation of information to secure unfair or unlawful gain.'},
        [27] = {title = 'Concealing Evidence', class = 'Misdemeanor', id = '404-04', months = 20, fine = 1000, color = 'orange', description = 'The act of hiding, altering, or destroying evidence with the intent to obstruct a legal investigation or proceeding.'},
        [28] = {title = 'Police Impersonation', class = 'Felony', id = '404-05', months = 90, fine = 6500, color = 'red', description = 'he act of pretending to be a law enforcement officer, usually to deceive or commit a crime.'},
        [29] = {title = 'False Identification', class = 'Misdemeanor', id = '404-06', months = 20, fine = 500, color = 'orange', description = ' The use of fake or stolen identification to misrepresent oneself, often to avoid detection or commit fraud.'},
        [30] = {title = 'Failure to Identify', class = 'Misdemeanor', id = '404-07', months = 20, fine = 1000, color = 'orange', description = 'The refusal to provide identification or false identification when required by law, typically during a lawful stop or arrest.'},
        [31] = {title = 'Resisting Arrest', class = 'Misdemeanor', id = '404-08', months = 20, fine = 1000, color = 'orange', description = 'The act of physically or verbally resisting or obstructing a law enforcement officer attempting to make a lawful arrest.'},
        [32] = {title = 'Evasion', class = 'Felony', id = '404-09', months = 90, fine = 500, color = 'red', description = 'The act of fleeing or attempting to avoid capture by law enforcement, often after committing a crime.'},
        [33] = {title = 'Money Laundering', class = 'Felony', id = '404-10', months = 150, fine = 2500, color = 'red', description = 'The process of concealing the origins of illegally obtained money, typically by means of transfers involving foreign banks or legitimate businesses.'},
        [34] = {title = 'Gang Related Violence', class = 'Felony', id = '404-11', months = 120, fine = 2500, color = 'red', description = 'Acts of violence committed as part of or in furtherance of gang activities.'},
        [35] = {title = 'Solicitation', class = 'Misdemeanor', id = '404-12', months = 20, fine = 250, color = 'orange', description = 'The act of requesting, encouraging, or demanding someone to engage in illegal activities, such as prostitution or committing a crime.'},
        [36] = {title = 'Prostitution', class = 'Misdemeanor', id = '404-13', months = 20, fine = 5000, color = 'orange', description = 'The act of engaging in sexual activities in exchange for money or other forms of compensation.'},
        [37] = {title = 'Kidnapping', class = 'Felony', id = '404-14', months = 120, fine = 750, color = 'red', description = 'The unlawful taking and holding of a person against their will, often for ransom or other illegal purposes.'},
        [38] = {title = 'Human Trafficking', class = 'Felony', id = '404-15', months = 500, fine = 10000, color = 'red', description = 'The illegal trade of humans for the purposes of forced labor.'},
        [39] = {title = 'Neglect', class = 'Misdemeanor', id = '404-16', months = 20, fine = 2500, color = 'orange', description = 'The failure to provide necessary care, supervision, or protection to a child or dependent, leading to harm or risk of harm.'},
        [40] = {title = 'Indecent Exposure', class = 'Misdemeanor', id = '404-17', months = 20, fine = 1000, color = 'orange', description = 'The act of deliberately exposing ones genitals in public or in the presence of others, in a manner deemed offensive or inappropriate, with the intent to shock, offend, or sexually arouse, violating community standards of decency.'},
        [41] = {title = 'Accessory to a Felony', class = 'Felony', id = '404-18', months = 150, fine = 0, color = 'red', description = 'A person who assists in the commission of a felony before or after the fact, but does not actually commit the crime.'},
        [42] = {title = 'Obstruction of Justice', class = 'Misdemeanor', id = '404-19a', months = 10, fine = 1000, color = 'orange', description = 'The act of intentionally hindering, delaying, or interfering with the administration of justice, law enforcement officers, or legal proceedings.'},
        [43] = {title = 'Felony Obstruction of Justice', class = 'Felony', id = '404-19b', months = 60, fine = 5000, color = 'red', description = 'The act of interfering with the administration of justice, such as tampering with witnesses or destroying evidence, in a manner that constitutes a felony.'},
        [44] = {title = 'Aiding & Abetting', class = 'Felony', id = '404-20', months = 150, fine = 2000, color = 'red', description = 'The act of assisting, encouraging, or facilitating another person in committing a crime.'},
        [45] = {title = 'Larceny', class = 'Felony', id = '404-22', months = 90, fine = 3000, color = 'red', description = 'he unlawful taking of another persons property with the intent to permanently deprive them of it.'},
        [46] = {title = 'Grand Larceny', class = 'Felony', id = '404-23', months = 150, fine = 10000, color = 'red', description = 'A more serious form of larceny, usually involving property of significant value, typically above a certain monetary threshold. ( $500,000 ).'},
        [47] = {title = 'Hit & Run', class = 'Felony', id = '404-24', months = 75, fine = 2000, color = 'red', description = 'The act of causing a traffic accident and leaving the scene without identifying oneself or offering assistance to anyone injured.'},
        [48] = {title = 'Armed Robbery', class = 'Felony', id = '404-25a', months = 40, fine = 2000, color = 'red', description = 'The act of using a weapon or the threat of a weapon to unlawfully take property from another person.'},
        [49] = {title = 'Unarmed Robbery', class = 'Misdemeanor', id = '404-25b', months = 20, fine = 1000, color = 'orange', description = 'The act of unlawfully taking property from another person or place, without the threat of a weapon.'},
    },
    [5] = {
        [1] = {title = 'Littering', class = 'infraction', id = '501-01', months = 0, fine = 50, color = 'green', description = 'The illegal act of discarding waste, such as paper, plastic, or other debris, in public spaces or private property, rather than disposing of it properly in designated receptacles.'},
        [2] = {title = 'Fire-Ban Violation', class = 'infraction', id = '501-02', months = 0, fine = 200, color = 'green', description = 'The act of igniting a fire, such as a campfire or bonfire, during a period when a fire ban is in effect, usually due to dry conditions or high fire risk.'},
        [3] = {title = 'Burning Prohibited Materials', class = 'infraction', id = '501-03', months = 0, fine = 50, color = 'green', description = 'The illegal act of burning materials that are not allowed to be incinerated, such as tires, plastics, or hazardous waste, due to environmental and health regulations.'},
        [4] = {title = 'Vandalism of a Public Park', class = 'infraction', id = '501-04', months = 0, fine = 50, color = 'green', description = 'The willful destruction, defacement, or damage to property, facilities, or natural features within a public park.'},
        [5] = {title = 'Vandalism of a State Park', class = 'infraction', id = '501-05', months = 0, fine = 50, color = 'green', description = 'The intentional act of damaging or defacing property, structures, or natural resources within a state-managed park.'},
        [6] = {title = 'Hunting without a Valid Permit', class = 'infraction', id = '501-08', months = 0, fine = 50, color = 'green', description = 'Engaging in the act of hunting without having obtained the required legal authorization or permit for the specific type of game and location.'},
        [7] = {title = 'Fishing without a Valid Permit', class = 'infraction', id = '501-09', months = 0, fine = 50, color = 'green', description = 'The act of fishing in public or private waters without obtaining the necessary legal permit or license.'},
        [8] = {title = 'Illegal Dumping', class = 'infraction', id = '501-10', months = 0, fine = 50, color = 'green', description = 'The unlawful disposal of waste materials, such as trash, construction debris, or hazardous substances, in unauthorized locations like roadsides, parks, or waterways.'},
        [9] = {title = 'Possession of Endangered Species', class = 'infraction', id = '501-11', months = 0, fine = 50, color = 'green', description = 'The illegal act of owning, trading, or otherwise possessing species that are protected under endangered species laws due to their threatened status.'},
        [10] = {title = 'Animal Neglect', class = 'infraction', id = '501-13', months = 0, fine = 300, color = 'green', description = 'The failure to provide adequate care, shelter, food, water, or medical treatment to an animal, leading to harm or suffering.'},
        [11] = {title = 'Poaching', class = 'Misdemeanor', id = '501-06', months = 20, fine = 250, color = 'orange', description = 'The illegal hunting, capturing, or killing of wildlife, typically involving protected species or animals taken out of season or without a permit.'},
        [12] = {title = 'Animal Abuse', class = 'Misdemeanor', id = '501-12', months = 10, fine = 750, color = 'orange', description = 'The intentional infliction of harm, injury, or suffering upon an animal, including acts of physical violence, torture, or deprivation of basic needs.'},
    },
    [6] = {
        [1] = {title = 'Smuggling', class = 'Felony', id = '601-01', months = 150, fine = 0, color = 'red', description = 'The illegal transportation of goods, people, or substances across borders or into restricted areas, often to avoid taxes, import/export restrictions, or legal prosecution.'},
        [2] = {title = 'Illegal Docking', class = 'infraction', id = '601-02', months = 0, fine = 50, color = 'green', description = 'The unauthorized or illegal mooring of a watercraft at a dock, pier, or harbor, typically without permission or in violation of regulations.'},
        [3] = {title = 'Operation of Watercraft without Permit', class = 'infraction', id = '601-03', months = 0, fine = 50, color = 'green', description = 'The act of operating a boat or other watercraft without the required legal permit or license, which may be necessary for certain types of vessels or in specific waters.'},
    },
    [7] = {
        [1] = {title = 'Racketeering', class = 'Federal', id = '701-01', months = 0, fine = 15000, color = 'grey', description = 'Engaging in a pattern of illegal activity, such as extortion, fraud, or bribery, as part of an organized criminal enterprise.'},
        [2] = {title = 'Corporate Fraud', class = 'Federal', id = '701-02', months = 0, fine = 15000, color = 'grey', description = 'The act of deliberately deceiving stakeholders, investors, or regulators by a corporation, usually involving false financial reporting, insider trading, or misrepresentation of company assets.'},
        [3] = {title = 'Corporate Money Laundering', class = 'Federal', id = '701-03', months = 15000, fine = 0, color = 'grey', description = 'The illegal process by which a corporation conceals the origins of money obtained from criminal activities, typically by funneling it through legitimate business operations to make it appear lawful.'},
        [4] = {title = 'Corporate Human Trafficking', class = 'Federal', id = '701-04', months = 15000, fine = 0, color = 'grey', description = 'Involvement by a corporation in the illegal trade or exploitation of humans, often for forced labor.'},
        [5] = {title = 'Treason', class = 'Federal', id = '701-05', months = 0, fine = 15000, color = 'grey', description = 'The crime of betraying ones country, typically by attempting to overthrow the government, aiding enemies, or engaging in acts that seriously harm national security.'},
        [6] = {title = 'Domestic Terrorism', class = 'Federal', id = '701-06', months = 0, fine = 15000, color = 'grey', description = 'Acts of violence or intimidation carried out within a country by its own citizens or residents, with the intent to instill fear, coerce, or influence government policies or actions.'},
        [7] = {title = 'Racketeer Influenced and Corrupt Organizations Act (RICO)', class = 'Federal', id = '701-07', months = 0, fine = 15000, color = 'grey', description = 'A federal law designed to combat organized crime by allowing prosecution of individuals who participate in a criminal enterprise through a pattern of racketeering activity. This includes crimes such as fraud, extortion, money laundering, and other illegal activities conducted as part of an organized group. Under RICO, individuals can be held accountable not only for their own criminal actions but also for those committed by the organization they are part of, even if they did not directly commit the offenses.'},
        [8] = {title = 'Escape and Rescue', class = 'Federal', id = '701-08', months = 0, fine = 15000, color = 'grey', description = 'This federal offense occurs when an individual unlawfully escapes or attempts to escape from custody, detention, or imprisonment under lawful authority. The charge also encompasses the act of aiding, abetting, or facilitating the escape of another individual from such custody.'},
        [9] = {title = 'Government Corruption', class = 'Federal', id = '701-09', months = 0, fine = 15000, color = 'grey', description = 'Government Corruption refers to any act by a government official or employee that involves the abuse of their position for personal gain, or the illicit manipulation of their duties or responsibilities in a manner that benefits themselves or others in exchange for improper compensation.'},

    },
    [8] = {
        [1] = {title = 'Operating without a CDL Permit', class = 'Misdemeanor', id = '801-01', months = 10, fine = 2500, color = 'orange', description = 'Operating a Commercial Vehicle without a CDL Permit.'},
        [2] = {title = 'Unroadworthy Commercial Vehicle', class = 'infraction', id = '801-02', months = 0, fine = 300, color = 'green', description = 'Operating an Unroadworthy Commercial Vehicle.'},
        [3] = {title = 'Failure to Provide Medical Card', class = 'infraction', id = '801-03', months = 0, fine = 500, color = 'green', description = 'The offense of not having or failing to present a valid medical certification when required, typically for commercial drivers who must meet health standards to operate vehicles.'},
        [4] = {title = 'Improper Solid-Goods Transportation', class = 'infraction', id = '801-04', months = 0, fine = 5000, color = 'green', description = ' The illegal or unsafe transportation of solid goods, such as improper loading, securing, or handling, leading to potential hazards or regulatory violations.'},
        [5] = {title = 'Driving without CDL Present', class = 'infraction', id = '801-07', months = 0, fine = 500, color = 'green', description = 'The offense of operating a commercial vehicle without having the required Commercial Drivers License (CDL) in possession, which is mandatory for certain types of vehicles.'},
        [6] = {title = 'Unsafe Oversized Load', class = 'infraction', id = '801-13', months = 0, fine = 5000, color = 'green', description = 'The offense of not adhering to mandatory inspections for vehicles, equipment, or cargo, which are required to ensure safety and regulatory compliance.'},
        [7] = {title = 'Improper Hazmat Transportation', class = 'Misdemeanor', id = '801-05', months = 10, fine = 10000, color = 'orange', description = 'The violation of regulations concerning the transportation of hazardous materials, such as improper labeling, containment, or documentation, posing a risk to public safety.'},
        [8] = {title = 'Blocking Public Roadway', class = 'Misdemeanor', id = '801-11', months = 10, fine = 2500, color = 'orange', description = 'The illegal act of obstructing a public road, either intentionally or negligently, preventing the free flow of traffic.'},
        [9] = {title = 'Failure to Comply with Inspection', class = 'Misdemeanor', id = ' 801-12', months = 10, fine = 2500, color = 'orange', description = 'The offense of not adhering to mandatory inspections for vehicles, equipment, or cargo, which are required to ensure safety and regulatory compliance.'},
        [10] = {title = 'Possession of Stolen Commercial Vehicle', class = 'Felony', id = '801-14', months = 60, fine = 2000, color = 'red', description = 'The offense of not adhering to mandatory inspections for vehicles, equipment, or cargo, which are required to ensure safety and regulatory compliance.'},
    },

}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steel",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic green",
    [112] = "Metallic Frost green",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off green",
    [122] = "Util Off green",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte green",
    [132] = "Worn green",
    [133] = "Worn Olive Army Green",
    [134] = "Pure green",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "Hunter Green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
    [158] = "Unknown",
}

Config.ColorInformation = {
    [0] = "black",
    [1] = "black",
    [2] = "black",
    [3] = "darksilver",
    [4] = "silver",
    [5] = "bluesilver",
    [6] = "silver",
    [7] = "darksilver",
    [8] = "silver",
    [9] = "bluesilver",
    [10] = "darksilver",
    [11] = "darksilver",
    [12] = "matteblack",
    [13] = "gray",
    [14] = "lightgray",
    [15] = "black",
    [16] = "black",
    [17] = "darksilver",
    [18] = "silver",
    [19] = "utilgunmetal",
    [20] = "silver",
    [21] = "black",
    [22] = "black",
    [23] = "darksilver",
    [24] = "silver",
    [25] = "bluesilver",
    [26] = "darksilver",
    [27] = "red",
    [28] = "torinored",
    [29] = "formulared",
    [30] = "blazered",
    [31] = "gracefulred",
    [32] = "garnetred",
    [33] = "desertred",
    [34] = "cabernetred",
    [35] = "candyred",
    [36] = "orange",
    [37] = "gold",
    [38] = "orange",
    [39] = "red",
    [40] = "mattedarkred",
    [41] = "orange",
    [42] = "matteyellow",
    [43] = "red",
    [44] = "brightred",
    [45] = "garnetred",
    [46] = "red",
    [47] = "red",
    [48] = "darkred",
    [49] = "darkgreen",
    [50] = "racingreen",
    [51] = "seagreen",
    [52] = "olivegreen",
    [53] = "green",
    [54] = "gasolinebluegreen",
    [55] = "mattelimegreen",
    [56] = "darkgreen",
    [57] = "green",
    [58] = "darkgreen",
    [59] = "green",
    [60] = "seawash",
    [61] = "midnightblue",
    [62] = "darkblue",
    [63] = "saxonyblue",
    [64] = "blue",
    [65] = "blue",
    [66] = "blue",
    [67] = "diamondblue",
    [68] = "blue",
    [69] = "blue",
    [70] = "brightblue",
    [71] = "purpleblue",
    [72] = "blue",
    [73] = "ultrablue",
    [74] = "brightblue",
    [75] = "darkblue",
    [76] = "midnightblue",
    [77] = "blue",
    [78] = "blue",
    [79] = "lightningblue",
    [80] = "blue",
    [81] = "brightblue",
    [82] = "mattedarkblue",
    [83] = "matteblue",
    [84] = "matteblue",
    [85] = "darkblue",
    [86] = "blue",
    [87] = "lightningblue",
    [88] = "yellow",
    [89] = "yellow",
    [90] = "bronze",
    [91] = "yellow",
    [92] = "lime",
    [93] = "champagne",
    [94] = "beige",
    [95] = "darkivory",
    [96] = "brown",
    [97] = "brown",
    [98] = "lightbrown",
    [99] = "beige",
    [100] = "brown",
    [101] = "brown",
    [102] = "beechwood",
    [103] = "beechwood",
    [104] = "chocoorange",
    [105] = "yellow",
    [106] = "yellow",
    [107] = "cream",
    [108] = "brown",
    [109] = "brown",
    [110] = "brown",
    [111] = "green",
    [112] = "green",
    [113] = "beige",
    [114] = "brown",
    [115] = "brown",
    [116] = "beige",
    [117] = "steel",
    [118] = "blacksteel",
    [119] = "aluminium",
    [120] = "chrome",
    [121] = "worngreen",
    [122] = "offgreen",
    [123] = "orange",
    [124] = "lightorange",
    [125] = "green",
    [126] = "yellow",
    [127] = "blue",
    [128] = "green",
    [129] = "brown",
    [130] = "orange",
    [131] = "green",
    [132] = "green",
    [133] = "darkgreen",
    [134] = "green",
    [135] = "pink",
    [136] = "pink",
    [137] = "pink",
    [138] = "orange",
    [139] = "green",
    [140] = "blue",
    [141] = "blackblue",
    [142] = "blackpurple",
    [143] = "blackred",
    [144] = "darkgreen",
    [145] = "purple",
    [146] = "darkblue",
    [147] = "black",
    [148] = "purple",
    [149] = "darkpurple",
    [150] = "red",
    [151] = "darkgreen",
    [152] = "olivedrab",
    [153] = "brown",
    [154] = "tan",
    [155] = "green",
    [156] = "silver",
    [157] = "blue",
    [158] = "black",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end
