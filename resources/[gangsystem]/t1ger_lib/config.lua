-- FOR SUPPORT: https://discord.gg/FdHkq5q 
------------------------------------------
Config = {}

Config.Debug = true -- boolean | true enables debug prints, setting to false disables debug prints

-- Framework Triggers:
Config.Triggers = { -- Triggers to update if you've changed them or if your anticheat requires it:
	['ESX'] = { -- update your triggers/event-names here if changed:
		resource = 'es_extended', -- esx resource name
		obj = 'esx:getSharedObject',
		load = 'esx:playerLoaded',
		job = 'esx:setJob'
	},
	['QB'] = { -- update your triggers/event-names here if changed:
		resource = 'qb-core', -- qb-core resource name
		obj = 'QBCore:GetObject',
		load = 'QBCore:Client:OnPlayerLoaded',
		job = 'QBCore:Client:OnJobUpdate',
		uObjCL = 'QBCore:Client:UpdateObject',
		uObjSV = 'QBCore:Server:UpdateObject',
		dutyToggle = 'QBCore:ToggleDuty',
	},
} -- Do not delete anything from here!!!

-- Specify which custom inventory system you are using!
Config.Inventory = 'ox-inventory' --[[
	'ox-inventory' - ox_inventory (free): https://github.com/overextended/ox_inventory
	'qb-inventory' - qb-inventory (free): https://docs.qbcore.org/qbcore-documentation/qbcore-resources/qb-inventory
	'mf-inventory' - modfreakz inventory (paid)
	'qs-inventory' - quasar inventory (paid)
	'core-inventory' - core inventory (paid)
	'custom' - custom inventory, your own implementation!!
]]

-- Specify which target system you are using!
Config.TargetSystem = 'qb-target' --[[
	'ox-target' - ox_target (free): https://github.com/overextended/ox_target
	'qb-target' - qb_target (free): https://github.com/qbcore-framework/qb-target
	'meta-target' - meta_target (free): https://github.com/meta-hub/meta_target
	'custom' - custom inventory, your own implementation!!
]]

Config.Garage = 'default' --[[ -- only support the below garage systems, please leave this at 'default' else.
	'default' - default esx_garage or default qb_garages
	't1ger-garage' - T1GER Garage: https://youtu.be/7qgiFW0Qi2Q
	'cd-garage' - Codesign Garage: https://docs.codesign.pro/paid-scripts/garage
	'renzu-garage' - Renzu Garage: https://github.com/renzuzu/renzu_garage
	'jg-advancedgarages' - JG Advanced Garages: https://docs.jgscripts.com/advanced-garages/
	'rcore-garage' - rCore Garage: https://documentation.rcore.cz/paid-resources/rcore_garage
	'okok-garage' - OkOk Garage: https://docs.okokscripts.io/scripts/okokgarage
	'codeM-garage' - CodeM mGarage: https://codem.gitbook.io/codem-documentation/m-series/mgarage
	'qs-advancedgarages' - Quasar Advanced Garages: https://docs.quasar-store.com/assets-and-guides/advanced-garages
	'custom' - custom inventory, your own implementation!!
]]

Config.SocietyAccount = 'esx_addonaccount' --[[ -- only support the below society systems.
	'esx_addonaccount' - https://github.com/esx-framework/esx_addonaccount
	'qb-banking' - https://docs.qbcore.org/qbcore-documentation/qbcore-resources/qb-banking
	'qb-management' - https://docs.qbcore.org/qbcore-documentation/qbcore-resources/qb-management
	'custom' - you need to modify functions yourself!!!
]]

Config.PoliceJobs = {['police'], ['lspd']} -- whitelisted police jobs to fetch online police count

Config.PoliceNotification = 'default' -- 'default' is builtIn police alerts, 'cd_' for codesign, 'custom' to use another (implement function inside TriggerPoliceNotification in t1ger_lib/utils.lua)

Config.AcePermissions = {'command'} -- (command is default gives admin access to all commands) add your ace permissions in here, used to check if player has perms/admin.

Config.UseFrameworkNotification = true -- Use default ESX/QB notification or use your own custom from Lib.Notification

Config.VehicleKeys = 'default' -- use 'default' or 't1ger-keys' or 'custom'.  default natives to check locked/unlocked or t1ger_keys exports or custom (your own).

Config.VehiclePrice = 'database' --[[ -- select one of the options below, then go to server/framework.lua and find the function CreateCoreVehicles
and update either database table and column if u are using a custom table/columns or if using lua file, then add your custom export to import vehicles table from that lua file.
If using default esx vehicles table or default qb/shared/vehicles.lua then no need to edit anything in the server files.

	'database' - set this if your vehicle prices are stored in a database table
	'lua' - set this if your vehicle prices are stored in a lua file, for example qb/shared/vehicles.lua
	'handling' - set this if you are GOAT and if your vehicle prices are stored in the vehicle's handling.meta file
]]

Config.VehicleMeta = {Props = { ['mileage'] = true, ['service'] = true, ['health'] = true }} -- do not touch!





Framework = GetResourceState(Config.Triggers['QB'].resource):find('started') and 'QB' or GetResourceState(Config.Triggers['ESX'].resource):find('started') and 'ESX'
Player_Vehicles_DB = {}

if not Framework then
	error('Unable to determine framework, resource was renamed.')
else
	print("Detected Framework: "..Framework)
	if Framework == 'ESX' then
		ESX = exports[Config.Triggers[Framework].resource]:getSharedObject()
		Player_Vehicles_DB = {table = 'owned_vehicles', owner = 'owner', stored = 'stored', props = 'vehicle', garage = 'parking'}
	elseif Framework == 'QB' then 
		QBCore = exports[Config.Triggers[Framework].resource]:GetCoreObject()
		Player_Vehicles_DB = {table = 'player_vehicles', owner = 'citizenid', stored = 'state', props = 'mods', garage = 'garage'}
	end

	if next(Player_Vehicles_DB) then
		if Config.Garage == 't1ger-garage' then
            Player_Vehicles_DB.stored = 'state'
            Player_Vehicles_DB.garage = 'garage'
		elseif Config.Garage == 'cd-garage' then
            Player_Vehicles_DB.stored = 'in_garage'
            Player_Vehicles_DB.garage = 'garage_id'
		elseif Config.Garage == 'renzu-garage' then
            Player_Vehicles_DB.stored = 'stored'
            Player_Vehicles_DB.garage = 'garage_id'
		elseif Config.Garage == 'jg-advancedgarages' then
            Player_Vehicles_DB.stored = 'in_garage'
            Player_Vehicles_DB.garage = 'garage_id'
		elseif Config.Garage == 'rcore-garage' then
            Player_Vehicles_DB.stored = 'stored'
            Player_Vehicles_DB.garage = 'stored_in_garage'
		elseif Config.Garage == 'codeM-garage' then
            Player_Vehicles_DB.stored = 'stored'
            Player_Vehicles_DB.garage = 'parking'
		elseif Config.Garage == 'qs-advancedgarages' then
            Player_Vehicles_DB.stored = 'stored'
            Player_Vehicles_DB.garage = 'garage'
        end
	end
end

function GetLib()
	return Core, Config, Framework
end

function GetUtils()
	return Lib
end

