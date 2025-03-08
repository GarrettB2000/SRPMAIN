Config = {}

Config.setupMenu = 'qb-menu' -- qb-menu / nh-context
Config.Debug = false -- Debug Mode
Config.Blip = false -- Blip on Map
Config.RentalPlateMark = "SRP" -- This is a Prefix for the Plate of the Vehicle

-- List of vehicles that can be rented
--@param name = The name of the vehicle, this will be displayed in the menu
--@param model = The model of the vehicle (https://wiki.rage.mp/index.php?title=Vehicles)
--@param price = The price of the vehicle
--@description = You can add as many vehicles as you want, just make sure you add a comma after the last bracket.
Config.vehicleList = {
    { name = "Sultan", model = "sultan", price = 50 },
}

-- Set the rental times and additonal fees
--@param value = The value of the rental time
--@param text = The text of the rental time, this will be displayed in the menu
--@param fees = The additional fees for the rental time
--@description = You can add as many rental times as you want, just make sure you add a comma after the last bracket.
Config.rentalTimes = {
    { value = 600, text = '600 Minutes', fees = 0 },
}

-- Set the locations for the rental stations
--@param label = The name of the rental station, this will be displayed on the map
--@param coords = The coords of the rental station
--@param model = The model of the ped (https://docs.fivem.net/docs/game-references/ped-models/)
--@param scenario = The scenario of the ped (https://pastebin.com/raw/6mrYTdQv)
--@description = You can add as many locations as you want, just make sure you add a comma after the last bracket. 
Config.Locations = {
    ["rentalstations"] = {
        [1] = { label = "Rental Stations", coords = vector4(-244.85, -993.03, 29.29, 248), model = `cs_carbuyer`, scenario = "WORLD_HUMAN_CLIPBOARD"},
    },
}

-- Set the locations for the vehicle spawn points
--@param workSpawn = The coords of the vehicle spawn point
--@param heading = The heading of the vehicle spawn point
Config.vehicleSpawn = {
    --- ALTA STREET
	[1] = { 
		workSpawn = {
			coords = vector3(-234.83, -991.53, 28.66),
			heading = 159.0,
		},
	},
}