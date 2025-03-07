local QBCore = exports['qb-core']:GetCoreObject()
local props = {
	['prop_micro_01'] = {item = 'stolenmicro'},
	['prop_coffee_mac_02'] = {item = 'stolencoffee'},
}

local x,y,z
local started = false

local doorLocation = {
	{1510.51, 6326.125, 24.60},
	{2440.1853027344, 4068.1313476562, 38.064727783203},
	{1945.3436279297, 3848.1767578125, 32.162307739258},
	{1360.9454345703, 3603.8234863281, 34.956840515137},
}

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		local ubicacion = math.random(1, #doorLocation)
		local coord = doorLocation[ubicacion]
		num = math.random(111,999)
		x, y, z = coord[1], coord[2], coord[3]
		print('^2[SD House Robbery]:^7 '..x..' '..y..' '..z)
		started = true
	end
end)

--[[local function addRepForControlledTerritory(source, id, amount)
    if amount <= 0 then return end

    local territory,dbData = exports.ti_territories:getTerritory(id)

    if not territory or not dbData then return end

    local affiliation = exports.ti_territories:getPlayerAffiliation(source, id)

    if not affiliation then return end

    if affiliation ~= dbData.controller then return end

    exports.ti_territories:addReputationForAffiliation(id, affiliation, amount)

    return true
end--]]

--[[local function addRepForControlledTerritories(source, amount)
    if amount <= 0 then return end

    local territories = exports.ti_territories:getTerritories(source)
    local result = 0

    for id=1,#territories,1 do
        local added = addRepForControlledTerritory(source, id, amount)

        if added then
            result = result + 1
        end
    end

    if result == 0 then return end

    TriggerClientEvent('QBCore:Notify', source, "Added " .. amount .. " reputation to " .. result .. " controlled territories.")
end

local function addGangNotoriety(source, amount)
    if amount <= 0 then return end

    local gangId = exports['t1ger_gangsystem']:GetPlayerGangId(source)

    if not gangId then return end

    exports['t1ger_gangsystem']:PlusGangNotoriety(gangId, amount)

    TriggerClientEvent('QBCore:Notify', source, "Added " .. amount .. " notoriety to your gang.")
end--]]

CreateThread(function()
	while not started do
		Wait(10)
	end
	QBCore.Functions.CreateCallback('qb-houserobbery:pedSpawn', function(source, cb)
		cb(x,y,z)
	end)
end)

-- Functions
local function ResetHouseStateTimer(house)
    local num = math.random(3333333, 11111111)
    local time = tonumber(num)
    SetTimeout(time, function()
		Config.Houses[house].Opened = false
        Config.Houses[house].Robbed = false
        TriggerClientEvent('qb-houserobbery:client:cleanHouseStatus', -1, house, Config.Houses[house].Opened, Config.Houses[house].Robbed)
    end)
end

-- Callbacks

QBCore.Functions.CreateCallback('qb-houserobbery:server:getCops', function(source, cb)
	local amount = 0
    local players = QBCore.Functions.GetQBPlayers()
    for _, Player in pairs(players) do
        if (Player.PlayerData.job.type == 'leo' or Player.PlayerData.job.name == 'police') and Player.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)

QBCore.Functions.CreateCallback('qb-houserobbery:server:GetHouseConfig', function(_, cb)
    cb(Config.Houses)
end)

QBCore.Functions.CreateCallback('qb-houserobbery:server:RobbedHoused', function(_, cb, houseid)
	if Config.Houses[houseid].Robbed then
		cb(true)
	else
		cb(false)
	end
end)

QBCore.Functions.CreateCallback('qb-houserobbery:server:interiorRobbed', function(_, cb, houseid)
	for i = 1, #Config.Houses[houseid].Items do
		if Config.Houses[houseid].Items[i].robbed then
			cb(i)
		end
	end
end)

-- Events

RegisterNetEvent('qb-houserobbery:server:noiseLevel', function(houseId, level)
	Config.Houses[houseId].NoiseLevel = level
	if Config.Houses[houseId].NoiseLevel > 100 then
		Config.Houses[houseId].alarmTriggered = true
	end
	TriggerClientEvent('qb-houserobbery:client:noiseLevel', -1, houseId, level)
end)

RegisterNetEvent('qb-houserobbery:server:updateInterior', function(house, i, delete)
	Config.Houses[house].Items[i].robbed = true
	TriggerClientEvent('qb-houserobbery:client:updateInterior', -1, house, i, delete)
end)

RegisterNetEvent('qb-houserobbery:server:interiorItems', function(house, coords, items, objects)
	if Config.Houses[house].InteriorCoords == nil and not next(Config.Houses[house].Items) and not next(Config.Houses[house].InteriorObjects) then
		Config.Houses[house].InteriorCoords = coords
		Config.Houses[house].Items = items
		Config.Houses[house].InteriorObjects = objects
		TriggerClientEvent('qb-houserobbery:client:interiorItems', -1, house, coords, items, objects)
	end
end)

RegisterNetEvent('qb-houserobbery:server:cleanUp', function(house, coords, items, objects)
	Config.Houses[house].Opened = false
	Config.Houses[house].InteriorCoords = coords
	Config.Houses[house].Items = items
	Config.Houses[house].InteriorObjects = objects
	TriggerClientEvent('qb-houserobbery:client:interiorItems', -1, house, coords, items, objects)
end)

RegisterNetEvent('qb-houserobbery:server:enterHouse', function(house)
    local src = source
	Config.Houses[house].Opened = true
	TriggerClientEvent('qb-houserobbery:client:enterHouse', src)
	TriggerClientEvent('qb-houserobbery:client:updateOpenStatus', -1, house, Config.Houses[house].Opened)
end)

RegisterNetEvent('qb-houserobbery:server:robHouseStatus', function(house)
    local src = source
	if not house then return end
    if not Config.Houses[house].Robbed then
        ResetHouseStateTimer(house)
    end
	Config.Houses[house].Robbed = true
	TriggerClientEvent('qb-houserobbery:client:updateRobStatus', -1, house)
end)

RegisterNetEvent('qb-houserobbery:server:breakLockpick', function(itemName)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not (itemName == "lockpick" or itemName == "advancedlockpick") then return end
    if Player.Functions.RemoveItem(itemName, 1) then
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[itemName], "remove")
    end
end)

RegisterServerEvent('qb-houserobbery:item', function(itemReward)
	local src = source
	local player = QBCore.Functions.GetPlayer(src)
	if itemReward == 'random' then
		local lucky = math.random(1,#Config.ItemsReward)
		local items = Config.ItemsReward[lucky]
		for i = 1, #items do
			if items[i].type == 'item' then
 				player.Functions.AddItem(items[i].itemName, items[i].itemQty)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[items[i].itemName], "add", items[i].itemQty)
			elseif items[i].type == 'cash' then
				player.Functions.AddMoney("cash", items[i].itemQty)
				TriggerClientEvent('QBCore:Notify', src, Config.Lang['money_found']..items[i].itemQty, "success")
			end
		end
	elseif itemReward == 'safe' then
		math.randomseed(os.time())
		player.Functions.AddItem('stolensafe', 1, false, {
			id = math.random(111111, 999999)
		})
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stolensafe'], "add", 1)
--[[ 		local lucky = math.random(1,#Config.SafeRewards)
		local items = Config.SafeRewards[lucky]
		for i = 1, #items do
			if items[i].type == 'item' then
 				player.Functions.AddItem(items[i].itemName, items[i].itemQty)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[items[i].itemName], "add")
			elseif items[i].type == 'cash' then
 				player.Functions.AddMoney("cash", items[i].itemQty)
				TriggerClientEvent('QBCore:Notify', src, Config.Lang['money_found']..items[i].itemQty, "success")
			 end
		end ]]
	elseif itemReward == 'tv' then
 		player.Functions.AddItem('stolentv', 1)
		 addRepForControlledTerritories(src, Config.RepRewardonTV)
		 addGangNotoriety(src, Config.NotorietyRewardonTV)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stolentv'], "add", 1)
	elseif itemReward == 'telescope' then
 		player.Functions.AddItem('stolenscope', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stolenscope'], "add", 1)
	elseif itemReward == 'art' then
 		player.Functions.AddItem('stolenart', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stolenart'], "add", 1)
	elseif itemReward == 'laptop' then
		player.Functions.AddItem('stolenlaptop', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stolenlaptop'], "add", 1)
	else
 		local item = props[itemReward].item
		player.Functions.AddItem(item, 1)
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add", 1)
	end
end)

QBCore.Functions.CreateUseableItem("stolensafe", function(source, item)
	local src = source
  local Player = QBCore.Functions.GetPlayer(src)
	local stashId = item.metadata.id
	local stash = exports.ox_inventory:GetInventory('TreasureChest_' .. stashId, false)

	if not stash then
		exports.ox_inventory:RegisterStash('TreasureChest_' .. stashId, "Safe Box")

		math.randomseed(os.time())
		local randomReward = math.random(1, #Config.SafeRewards)

		for _, rewardItems in pairs(Config.SafeRewards[randomReward]) do
			for _, itemData in pairs(rewardItems) do
				exports.ox_inventory:AddItem('TreasureChest_' .. stashId, itemData.name, itemData.amount)
			end
		end
	end

	TriggerClientEvent("qb-houserobbery:attemptSafeBox", src, stashId)
end)