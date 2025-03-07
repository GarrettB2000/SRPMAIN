local QBCore = exports['qb-core']:GetCoreObject()

local hostageDone = false
local looted = false

local ItemTable = {
    'weapon_uzi',
    'weapon_mac10',
    'weapon_de',
    'blueprint',
}



RegisterNetEvent('qb-bobcatheist:server:RemoveThermite', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem('thermite', 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['thermite'], 'remove', 1)
end)

RegisterNetEvent('qb-bobcatheist:server:RemoveCard', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem('sec_c', 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sec_c'], 'remove', 1)
end)

RegisterNetEvent('qb-bobcatheist:server:ThermitePtfx', function(coords, index)
    Shared.Doors[index].hit = true
    TriggerClientEvent('qb-bobcatheist:client:ThermitePtfx', -1, coords, index)
end)

RegisterNetEvent('qb-bobcatheist:server:hostage', function()
    if hostageDone then return end
    hostageDone = true
    TriggerClientEvent('qb-bobcatheist:client:hostage', -1)
end)

RegisterServerEvent('qb-bobcatheist:server:LootCrate', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not looted then
        looted = true
        for i=1, math.random(6, 10), 1 do
            local randItem = ItemTable[math.random(#ItemTable)]
            Player.Functions.AddItem(randItem, 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add', 3)
            TriggerEvent('qb-log:server:CreateLog', 'bobcat', 'Bobcat log', 'red', '**'..Player.PlayerData.name..'** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **1x '..randItem..'**')
            Wait(500)
        end

        Player.Functions.AddItem('weapon_stickybomb', 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['c4_package'], 'add', 1)
        TriggerEvent('qb-log:server:CreateLog', 'bobcat', 'Bobcat log', 'red', '**'..Player.PlayerData.name..'** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **2x c4**')
    else
        TriggerClientEvent('QBCore:Notify', src, 'The weapon crate is empty..', 'error', 2500)
    end
end)

QBCore.Functions.CreateCallback('qb-bobcatheist:server:GetConfig', function(source, cb)
    cb(Shared, hostageDone)
end)

QBCore.Functions.CreateCallback('qb-bobcatheist:server:getCops', function(source, cb)
    local amount = 0
    local players = QBCore.Functions.GetQBPlayers()
    for _, Player in pairs(players) do
        if Player.PlayerData.job.name == 'police' and Player.PlayerData.job.onduty then -- Player.PlayerData.job.type == 'leo' and Player.PlayerData.job.onduty
            amount += 1
        end
    end
    cb(amount)
end)

QBCore.Functions.CreateCallback('qb-bobcatheist:server:spawnguards', function(source, cb)
    if Shared.Doors[3].hit then return end
    -- Set Hit
    Shared.Doors[3].hit = true
    TriggerClientEvent('qb-bobcatheist:client:SetCard', -1)

    local netIds = {}
    local netId
    local playerPed = GetPlayerPed(source)
    ------------
    local bobcatped1 = CreatePed(30, 1456041926, 907.5, -2113.94, 31.23, 147.6, true, false)
    GiveWeaponToPed(bobcatped1, `WEAPON_PUMPSHOTGUN`, 250, false, true)
    SetPedArmour(bobcatped1, 100)
    TaskCombatPed(bobcatped1, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped1) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped1)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped2 = CreatePed(30, 1456041926, 897.71, -2128.39, 31.23, 354.41, true, false)
    GiveWeaponToPed(bobcatped2, `WEAPON_SPECIALCARBINE`, 250, false, true)
    SetPedArmour(bobcatped2, 100)
    TaskCombatPed(bobcatped2, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped2) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped2)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped3 = CreatePed(30, 1456041926, 897.16, -2133.82, 31.23, 355.39, true, false)
    GiveWeaponToPed(bobcatped3, `WEAPON_COMBATMG`, 250, false, true)
    SetPedArmour(bobcatped3, 100)
    TaskCombatPed(bobcatped3, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped3) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped3)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped4 = CreatePed(30, 1456041926, 891.68, -2134.02, 31.23, 263.66, true, false)
    GiveWeaponToPed(bobcatped4, `WEAPON_COMBATMG`, 250, false, true)
    SetPedArmour(bobcatped4, 100)
    TaskCombatPed(bobcatped4, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped4) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped4)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped5 = CreatePed(30, 1456041926, 885.78, -2133.35, 31.23, 263.8, true, false)
    GiveWeaponToPed(bobcatped5, `WEAPON_BULLPUPRIFLE`, 250, false, true)
    SetPedArmour(bobcatped5, 100)
    TaskCombatPed(bobcatped5, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped5) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped5)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped6 = CreatePed(30, 1456041926, 879.66, -2132.74, 31.23, 266.28, true, false)
    GiveWeaponToPed(bobcatped6, `WEAPON_STUNGUN`, 250, false, true)
    SetPedArmour(bobcatped6, 100)
    TaskCombatPed(bobcatped6, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped6) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped6)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped7 = CreatePed(30, 1456041926, 879.79, -2126.32, 31.23, 175.71, true, false)
    GiveWeaponToPed(bobcatped7, `WEAPON_CARBINERIFLE`, 250, false, true)
    SetPedArmour(bobcatped7, 100)
    TaskCombatPed(bobcatped7, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped7) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped7)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped8 = CreatePed(30, 1456041926, 880.59, -2121.38, 31.23, 176.99, true, false)
    GiveWeaponToPed(bobcatped8, `WEAPON_PUMPSHOTGUN`, 250, false, true)
    SetPedArmour(bobcatped8, 100)
    TaskCombatPed(bobcatped8, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped8) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped8)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped9 = CreatePed(30, 1456041926, 888.58, -2124.72, 31.23, 171.05, true, false)
    GiveWeaponToPed(bobcatped9, `WEAPON_PUMPSHOTGUN`, 250, false, true)
    SetPedArmour(bobcatped9, 100)
    TaskCombatPed(bobcatped9, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped8) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped8)
    netIds[#netIds+1] = netId
    ------------
    local bobcatped10 = CreatePed(30, 1456041926, vector4(911.77, -2114.19, 31.23, 193.46), true, false)
    GiveWeaponToPed(bobcatped10, `WEAPON_PUMPSHOTGUN`, 250, false, true)
    SetPedArmour(bobcatped10, 100)
    TaskCombatPed(bobcatped10, playerPed, 0, 16)
    while not DoesEntityExist(bobcatped10) do Wait(10) end
    netId = NetworkGetNetworkIdFromEntity(bobcatped10)
    netIds[#netIds+1] = netId
    ------------
    cb(netIds)
end)

QBCore.Functions.CreateUseableItem('sec_c', function(source, item)
    TriggerClientEvent('qb-bobcatheist:client:UseCard', source)
end)

QBCore.Functions.CreateUseableItem('thermite', function(source, item)
    TriggerClientEvent('thermite:UseThermite', source)
end)


RegisterNetEvent('vrp-bobcat:server:OpenDoor', function(door)
    local BobcatBottom = exports.ox_doorlock:getDoorFromName(door)
    TriggerClientEvent('ox_doorlock:setState', -1, BobcatBottom.id, 0, source)
    SetTimeout(Shared.AutoLock * 1000, function() -- add auto lock in config after
        TriggerClientEvent('ox_doorlock:setState', -1, BobcatBottom.id, 1)
        TriggerEvent('ox_doorlock:stateChanged', nil, BobcatBottom.id, 1)
    end)
end)