if Config.Framework ~= 'qb' then return end

QBCore = exports['qb-core']:GetCoreObject()

RegisterCallback = QBCore.Functions.CreateCallback
CreateUsableItem = QBCore.Functions.CreateUseableItem

function ShowNotification(src, text, notifyType)
    if notifyType == 'inform' then notifyType = 'primary' end
    TriggerClientEvent('QBCore:Notify', src, text, notifyType)
end

function GetPlayerFromId(playerId)
    return QBCore.Functions.GetPlayer(playerId)
end

function GetPlayerFromIdentifier(identifier)
    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function GetSource(player)
    return player.PlayerData.source
end

function GetIdentifier(player)
    return player.PlayerData.citizenid
end

function GetPlayers()
    return QBCore.Functions.GetQBPlayers()
end

function GetJob(player)
    return player.PlayerData.job
end

function GetJobName(player)
    return player.PlayerData.job.name
end

function GetGrade(player)
    return player.PlayerData.job.grade.level
end

function SetJob(player, job, grade)
    player.Functions.SetJob(job, grade)
end

function GetAccountMoney(player, account)
    return player.Functions.GetMoney(account)
end

function AddAccountMoney(player, account, amount)
    player.Functions.AddMoney(account, amount)
end

function RemoveAccountMoney(player, account, amount)
    player.Functions.RemoveMoney(account, amount)
end

function GetItemAmount(player, item)
    return player.Functions.GetItemByName(item)?.amount or 0
end

function AddItem(player, item, amount)
    player.Functions.AddItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', player.PlayerData.source, QBCore.Shared.Items[item], 'add')
end

function RemoveItem(player, item, amount)
    player.Functions.RemoveItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', player.PlayerData.source, QBCore.Shared.Items[item], 'remove')
end

CreateThread(function()
    repeat Wait(100) until QBCore

    frameworkLoaded = true
end)