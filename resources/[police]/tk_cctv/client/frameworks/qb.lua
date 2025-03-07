if Config.Framework ~= 'qb' then return end

QBCore = exports['qb-core']:GetCoreObject()

TriggerCallback = QBCore.Functions.TriggerCallback

function ShowNotification(text, notifyType)
    if notifyType == 'inform' then notifyType = 'primary' end
    QBCore.Functions.Notify(text, notifyType)
end

function GetIdentifier()
    return QBCore.PlayerData.citizenid
end

function GetCharName()
    return ('%s %s'):format(QBCore?.PlayerData?.charinfo?.firstname, QBCore?.PlayerData?.charinfo?.lastname)
end

function GetJob()
    return QBCore.PlayerData.job.name
end

function GetGrade()
    return QBCore.PlayerData.job.grade.level
end

function GetGradeLabel()
    return QBCore.PlayerData.grade.name
end

function GetItemLabel(item)
    return QBCore.Shared.Items?[string.lower(item)]?.label or item
end

function GetCameraName()
    local input = exports['qb-input']:ShowInput({
        header = _U('camera_name'),
        inputs = {
            {
                text = _U('camera_name'),
                name = 'name',
                type = 'text',
                isRequired = true,
            },
        }
    })

    return input?.name
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        QBCore.PlayerData = PlayerData
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(Job)
    QBCore.PlayerData.job = Job
end)

CreateThread(function()
    repeat Wait(2000) until QBCore and QBCore.PlayerData and QBCore.PlayerData.job

    frameworkLoaded = true
end)