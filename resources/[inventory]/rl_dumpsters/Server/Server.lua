local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("rl_dumpsters:Server:SearchedDumpsters", function(Dumpster)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then
        return
    end
    StartTimer(src, Dumpster)
    local Item, Amount = RandomItem()
    if Item ~= nil and Amount ~= nil then
        if exports.ox_inventory:CanCarryItem(src, Item, Amount) then
            exports.ox_inventory:AddItem(src, Item, Amount)
            Notify(src, "You found: " .. Item .. " " .. Amount .. "x", "success")
        end
    else
        print("ERROR")
    end
end)

function Notify(src, text, type)
    TriggerClientEvent('QBCore:Notify', src, text, type, 2500)
end

function RandomItem()
    local chance, chanceVal = math.random(), 0
    for _, value in pairs(rlConfig.ItemTable) do
        chanceVal = chanceVal + value["Chance"]
        if chance <= chanceVal then
            local item, amount = value["ItemName"], math.random(value["Amount"][1], value["Amount"][2])
            return item, amount
        end
    end
    return nil
end

function StartTimer(src, Dumpster)
    CreateThread(function()
        Wait(rlConfig.WaitTimer * 60 * 1000)
        TriggerClientEvent("rl_dumpster:Client:RemoveTimer", src, Dumpster)
    end)
end
