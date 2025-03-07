-----------------------
----   Variables   ----
-----------------------
local QBCore = exports['qb-core']:GetCoreObject()
local scenes = {}

-----------------------
----   Threads     ----
-----------------------

CreateThread(function()
    UpdateAllScenes()
    while true do 
        DeleteExpiredScenes()
        Wait(Config.AuditInterval)
    end
end)

-----------------------
---- Server Events ----
-----------------------

QBCore.Functions.CreateCallback('qb-scenes:server:GetScenes', function(source, cb)
    cb(scenes)
end)


QBCore.Functions.CreateCallback("qb-scenes:server:isVip", function(source, cb, args)
    local src = source
    local roleIDs = exports.Badger_Discord_API:GetDiscordRoles(src)
    local retval = false
    for i=1, #roleIDs do
        for i2=1, #Config.VipDiscordRoleIds, 1 do
            if exports.Badger_Discord_API:CheckEqual(tonumber(Config.VipDiscordRoleIds[i2]), tonumber(roleIDs[i])) then
                retval = true
            end
        end
    end
    cb(retval)
end)

-----------------------
----   Functions   ----
-----------------------

function UpdateAllScenes()
    scenes = {}
    MySQL.Async.fetchAll('SELECT * FROM scenes', {}, function(result)
        if result[1] then
            for _, v in pairs(result) do
                local newCoords = json.decode(v.coords)
                scenes[#scenes+1] = {
                    id = v.id,
                    text = v.text,
                    color = v.color,
                    viewdistance = v.viewdistance,
                    expiration = v.expiration,
                    fontsize = v.fontsize,
                    fontstyle = v.fontstyle,
                    coords = vector3(newCoords.x, newCoords.y, newCoords.z),
                }
            end
        end
        TriggerClientEvent('qb-scenes:client:UpdateAllScenes', -1, scenes)
    end)
end

function DeleteExpiredScenes()
    MySQL.Async.execute('DELETE FROM scenes WHERE date_deletion < NOW()', {}, function(result)
        if result > 0 then
            print('Deleted '..result..' expired scenes from the database.')
            UpdateAllScenes()
        end
    end)
end

RegisterNetEvent('qb-scenes:server:DeleteScene', function(id)
    MySQL.Async.execute('DELETE FROM scenes WHERE id = ?', {id}, function(result)
        UpdateAllScenes()
    end)
end)

RegisterNetEvent('qb-scenes:server:CreateScene', function(sceneData)
    local src = source 

    MySQL.Async.insert('INSERT INTO scenes (creator, text, color, viewdistance, expiration, fontsize, fontstyle, coords, date_creation, date_deletion) VALUES (? ,?, ?, ?, ?, ?, ?, ?, NOW(), DATE_ADD(NOW(), INTERVAL ? HOUR))', {
        QBCore.Functions.GetPlayer(src).PlayerData.citizenid, 
        sceneData.text,
        sceneData.color,
        sceneData.viewdistance,
        sceneData.expiration,
        sceneData.fontsize,
        sceneData.fontstyle,
        json.encode(sceneData.coords),
        sceneData.expiration
    }, function(result)
        UpdateAllScenes()
    end)
end)