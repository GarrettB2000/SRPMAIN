if Config.Framework ~= 'esx' then return end

ESX = exports["es_extended"]:getSharedObject()

RegisterCallback = ESX.RegisterServerCallback
CreateUsableItem = ESX.RegisterUsableItem

function ShowNotification(src, text, notifyType)
    TriggerClientEvent('esx:showNotification', src, text)
end

function GetPlayerFromId(playerId)
    return ESX.GetPlayerFromId(playerId)
end

function GetPlayerFromIdentifier(identifier)
    return ESX.GetPlayerFromIdentifier(identifier)
end

function GetSource(xPlayer)
    return xPlayer.source
end

function GetIdentifier(xPlayer)
    return xPlayer.identifier
end

function GetPlayers()
    return ESX.GetPlayers()
end

function GetCharName(identifier)
    local xTarget = GetPlayerFromIdentifier(identifier)
    if xTarget then return xTarget.getName() end

	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users where identifier = ?', {identifier})
    local name = ('%s %s'):format(result?[1]?.firstname, result?[1]?.lastname)

    return name
end

function GetJob(xPlayer)
    return xPlayer.job
end

function GetJobName(xPlayer)
    return xPlayer.job.name
end

function GetGrade(xPlayer)
    return xPlayer.job.grade
end

function SetJob(xPlayer, job, grade)
    xPlayer.setJob(job, grade)
end

function GetAccountMoney(xPlayer, account)
    return xPlayer.getAccount(account).money
end

function AddAccountMoney(xPlayer, account, amount)
    xPlayer.addAccountMoney(account, amount)
end

function RemoveAccountMoney(xPlayer, account, amount)
    xPlayer.removeAccountMoney(account, amount)
end

function GetItemAmount(xPlayer, item)
    return xPlayer.getInventoryItem(item)?.count or 0
end

function AddItem(xPlayer, item, amount)
    xPlayer.addInventoryItem(item, amount)
end

function RemoveItem(xPlayer, item, amount)
    xPlayer.removeInventoryItem(item, amount)
end

RegisterCallback('tk_cctv:getCharName', function(src, cb, identifier)
	cb(GetCharName(identifier))
end)

RegisterCallback('tk_cctv:getItemLabel', function(src, cb, item)
	cb(ESX.GetItemLabel(item) or item)
end)

CreateThread(function()
    repeat Wait(100) until ESX

    frameworkLoaded = true
end)