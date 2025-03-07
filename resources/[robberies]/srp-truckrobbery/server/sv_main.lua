local QBCore = exports['qb-core']:GetCoreObject()

--[[ QBCore.Functions.CreateUseableItem(Config.TierFour, function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("qb-truckrobbery:client:UseBlackCard", src)
end) ]]

QBCore.Functions.CreateUseableItem("thermite", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) then
        TriggerClientEvent("thermite:UseThermite", source)
    end
end)

QBCore.Functions.CreateCallback('qb-truckrobbery:server:getCops', function(source, cb)
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)

--[[ RegisterServerEvent("qb-truckrobbery:server:removeItem", function() 
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.TierFour], "remove")  
    Player.Functions.RemoveItem(Config.TierFour, 1) 
end) ]]

RegisterServerEvent('qb-truckrobbery:server:callCops', function(type, bank, streetLabel, coords)
    local cameraId = nil
    local bankLabel = "Banktruck"
    local msg = "Money transport being hit"
    local alertData = {
        title = "Banktruck",
        coords = {x = coords.x, y = coords.y, z = coords.z},
        description = msg,
    }
    TriggerClientEvent("qb-truckrobbery:client:robberyCall", -1, type, bank, streetLabel, coords)
end)

RegisterServerEvent('qb-truckrobbery:server:UpdatePlates', function(plate)
    Config.RobbedPlates[plate] = true
    TriggerClientEvent('qb-truckrobbery:client:UpdatePlates', -1, plate)
end)

RegisterServerEvent('qb-truckrobbery:server:RemoveDoors', function(truck)
    TriggerClientEvent('qb-truckrobbery:client:RemoveDoors', -1, truck)
end)

RegisterServerEvent('qb-truckrobbery:server:ThermitePtfx', function(coords)
    TriggerClientEvent('qb-truckrobbery:client:ThermitePtfx', -1, coords)
end)

RegisterServerEvent('qb-truckrobbery:server:addItem', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local dirtyAmount = Config.DirtyMoney

    -- inked money bags
    -- local info = {
    --     worth = math.random(12000, 14000)
    -- }
    Player.Functions.AddItem("markedbills", dirtyAmount, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["markedbills"], "add") 
    TriggerEvent("qb-log:server:CreateLog", "truckrobbery", "Banktruck Rewards", "default", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*)"..' Received the following from the bank truck. **Loot**: '..dirtyAmount.. ' x '.. "dirty money")

    -- cash rolls
    -- local amount = math.random(4000,6000)
    -- Player.Functions.AddItem("cash_roll", amount)
    -- TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cash_roll"], "add")  
    -- TriggerEvent("qb-log:server:CreateLog", "truckrobbery", "Banktruck Rewards", "default", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*)"..' Received the following from the bank truck. **Loot**: '..amount.. ' x '.. "cash rolls")

    -- Tier Rewards
    local tierChance = math.random(1, 100)  -- Generates a random number between 1 and 100
    if tierChance < 51 then tier = 1 elseif tierChance >= 51 and tierChance < 91 then tier = 2 else tier = 3 end
    if tier == 1 then
        Player.Functions.AddItem(Config.TierOne, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.TierOne], "add") 
        TriggerEvent("qb-log:server:CreateLog", "truckrobbery", "Banktruck Rewards", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*)"..' Received the following from the bank truck. **Loot**: '.."1".. ' x '.. Config.TierOne)
    elseif tier == 2 then
        Player.Functions.AddItem(Config.TierTwo, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.TierTwo], "add") 
        TriggerEvent("qb-log:server:CreateLog", "truckrobbery", "Banktruck Rewards", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*)"..' Received the following from the bank truck. **Loot**: '.."1".. ' x '.. Config.TierTwo)
    elseif tier == 3 then
        Player.Functions.AddItem(Config.TierThree, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.TierThree], "add") 
        TriggerEvent("qb-log:server:CreateLog", "truckrobbery", "Banktruck Rewards", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*)"..' Received the following from the bank truck. **Loot**: '.."1".. ' x '.. Config.TierThree)
    end

end)

RegisterNetEvent('srp-truckrobbery:server:RemoveThermite', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem('thermite', 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['thermite'], 'remove', 1)
end)