local QBCore = exports['qb-core']:GetCoreObject()

local showId = false

RegisterCommand('+showId', function()
    showId = true
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard"})

    Citizen.CreateThread(function()
        while showId do
            for _, targetId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(targetId)
                local targetCoords = GetPedBoneCoords(targetPed, 0x796E, 0.54, 0.0, 0.0)
                local distance = #(targetCoords - GetGameplayCamCoord())

                if distance < 20.0 then
                    SetTextColour(255, 255, 255, 255)
                    SetTextScale(0.8, 0.8)
                    SetTextOutline()
                    SetTextCentre(true)

                    SetDrawOrigin(targetCoords.x, targetCoords.y, targetCoords.z)
                    BeginTextCommandDisplayText('STRING')
                    AddTextComponentSubstringPlayerName(tostring(GetPlayerServerId(targetId)))
                    EndTextCommandDisplayText(0, 0)
                    ClearDrawOrigin()
                end
            end

            Citizen.Wait(0)
        end
    end)
end, false)
RegisterCommand('-showId', function()
    showId = false
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
end, false)
RegisterKeyMapping('+showId', 'Show ID', 'keyboard', Config.Key)
