function Notify(text, notifyType)
    if Config.NotificationType == 'mythic' then
        exports['mythic_notify']:DoHudText(notifyType, text)
    else
        ShowNotification(text, notifyType)
    end
end

function DisplayHelpText(text)
    AddTextEntry('cctv_help_text', text)
    DisplayHelpTextThisFrame('cctv_help_text', false)
end

function ShowTextUI(text)
    if Config.UseOxLib then
        lib.showTextUI(text, {position = 'right-center'})
    else
        exports['qb-core']:DrawText(text, 'left')
    end
end

function HideTextUI()
    if Config.UseOxLib then
        lib.hideTextUI()
    else
        exports['qb-core']:HideText()
    end
end

function OxGetCameraName()
    local name = lib.inputDialog(_U('camera_name'), {
        { type = "input", label = _U('camera_name') },
    })

    return name?[1]
end

function HackCameraMinigame()
    print('ERROR: No minigame set in tk_cctv/client/main_editable.lua, returning false')
    return true
end

function MotionDetectedAlert(cameraName)
    Notify(_U('motion_detected', cameraName), 'inform')
end

RegisterCommand('camtablet', function(src, args, raw)
   OpenUI()
end, false)