local QBCore = exports['qb-core']:GetCoreObject()

local ShowId = function(source, item, nui)
    local src = source
    local isWepValid = false
    if nui == "weaponlicense" then
        local Player = QBCore.Functions.GetPlayer(src)
        local licenseWeapon = Player.PlayerData.metadata["licences"].weapon
        if licenseWeapon then
            isWepValid = true
        else
            isWepValid = false
        end
    else

    end

    local found = false
    local character = QBCore.Functions.GetPlayer(src)
    local PlayerPed = GetPlayerPed(src)
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local info = {
        ['name'] = item.metadata.firstname,
        ['lastname'] = item.metadata.lastname,
        ['gender'] = item.metadata.gender,
        ['dob'] = item.metadata.birthdate,
        ['nationality'] = item.metadata.nationality,
        ['type'] = item.metadata.type,
        ['image'] = item.metadata.image,
    }
    local target = nil
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local TargetPed = GetPlayerPed(v)
        local dist = #(PlayerCoords - GetEntityCoords(TargetPed))
        if dist < 1.5 and PlayerPed ~= TargetPed then
            target = v
            TriggerClientEvent("animations:client:EmoteCommandStart",src,"idcardd")
            TriggerClientEvent('QBCore:Notify', src, "You showed your "..nui)
            TriggerClientEvent('qb-idcard:client:open', v, info, nui)
            found = true
            break
        end
    end
    if not found then TriggerClientEvent('qb-idcard:client:open', src, info, nui) end
    if nui == 'policecard' then TriggerClientEvent('qb-idcard:client:policebadgeanim', src) end

    if nui == 'weaponlicense' and target ~= nil then
        CreateThread(function()
            Wait(1000)
            if isWepValid then
                TriggerClientEvent('QBCore:Notify', target, "This weapon license looks good!", "success")
            else
                TriggerClientEvent('QBCore:Notify', target, "This weapon license is expired.", "error")
            end
        end)
    end
end


RegisterCommand("gunlicense", function(source, args, rawCommand)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {
        ['firstname'] = Player.PlayerData.charinfo.firstname,
        ['lastname'] = Player.PlayerData.charinfo.lastname,
        ['gender'] = Player.PlayerData.charinfo.gender,
        ['birthdate'] = Player.PlayerData.charinfo.birthdate,
        ['nationality'] = Player.PlayerData.charinfo.nationality,
        ['type'] = "weaponlicense"
    }

    exports.ox_inventory:AddItem(src, 'weaponlicense', 1,info) 
end, true)

QBCore.Functions.CreateUseableItem("id_card", function(source,item)
    ShowId(source, item, 'idcard')
end)

QBCore.Functions.CreateUseableItem("driver_license", function(source,item)
    ShowId(source, item, 'driverlicense')
end)

QBCore.Functions.CreateUseableItem("weaponlicense", function(source,item)
    ShowId(source, item, 'weaponlicense')
end)

QBCore.Functions.CreateUseableItem("huntinglicense", function(source,item)
    ShowId(source, item, 'huntinglicense')
end)

QBCore.Functions.CreateUseableItem("lawyerpass", function(source,item)
    ShowId(source, item, 'lawyerpass')
end)

QBCore.Functions.CreateUseableItem("policecard", function(source,item)
    ShowId(source, item, 'policecard')
end)