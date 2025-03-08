local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ks-staffmode:server:check', function()
    local src = source
    if not QBCore.Functions.HasPermission(src, Config.PermissionMinLevel) then
        exports['qb-core']:ExploitBan(src, "ks-staffmode")
    end
end)

RegisterNetEvent('ks-staffmode:server:effect', function(nearbyPlayers) -- 2
    local src = source
    for _, v in ipairs(nearbyPlayers) do
      TriggerClientEvent('ks-staffmode:syncEffect', v, src)
    end
end)

QBCore.Commands.Add('staffmode', 'Toggle Staff Mode', {}, false, function(source, args)
    local src = source
    local roleIDs = exports.Badger_Discord_API:GetDiscordRoles(src)
    local key = nil
    local rank = nil
    for k, v in pairs(Config.DiscordRoles) do
        for i=1, #roleIDs do
            if exports.Badger_Discord_API:CheckEqual(tonumber(v), tonumber(roleIDs[i])) then
                print("I have on of the roles i need :)")
                key = tonumber(k)
                rank = tonumber(v)
                print(rank)
            end
        end
    end
    TriggerClientEvent('ks-staffmode:client:toggle', source, rank, key)
end, Config.PermissionMinLevel)