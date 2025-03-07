if Config.Framework ~= 'esx' then return end

ESX = exports["es_extended"]:getSharedObject()

TriggerCallback = ESX.TriggerServerCallback

function ShowNotification(text)
    ESX.ShowNotification(text)
end

function GetIdentifier()
    return ESX.PlayerData.identifier
end

function GetCharName(identifier)
    local p = promise.new()
    TriggerCallback('tk_cctv:getCharName', function(name)
        p:resolve(name)
    end, identifier)
    return Citizen.Await(p)
end

function GetJob()
    return ESX.PlayerData.job.name
end

function GetGrade()
    return ESX.PlayerData.job.grade
end

function GetGradeLabel()
    return ESX.PlayerData.job.grade_label
end

function GetItemLabel(item)
    local p = promise.new()
    TriggerCallback('tk_cctv:getItemLabel', function(label)
        p:resolve(label)
    end, item)
    return Citizen.Await(p)
end

function GetCameraName()
    local p = promise.new()
    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'camera_name', {
        title = _U('camera_name'),
    }, function (data, menu)
        p:resolve(data.value)
        menu.close()
    end, function (data, menu)
        p:resolve(nil)
        menu.close()
    end)
    return Citizen.Await(p)
end

RegisterNetEvent('esx:playerLoaded', function(playerData)
    ESX.PlayerData = playerData
end)

RegisterNetEvent('esx:setJob', function(job)
    Wait(500)
    ESX.PlayerData.job = job
end)

CreateThread(function()
    repeat Wait(2000) until ESX and ESX.PlayerData and ESX.PlayerData.job

    frameworkLoaded = true
end)