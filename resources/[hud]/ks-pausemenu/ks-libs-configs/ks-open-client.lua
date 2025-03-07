RegisterKeyMapping("ksTogglePauseMenu", "", "keyboard", "ESCAPE")
RegisterCommand('ksTogglePauseMenu', function ()
	if not IsPauseMenuActive() and not IsNuiFocused() then
		if (ksTogglePauseMenu==true) then
			ksShowPauseMenu()
		end
	end
end)

function ksShowPauseMenu()
    StartScreenEffect(ksEffect, 1, true)
    DisableIdleCamera(true)
	SetNuiFocus(true, true)
	SetNuiFocusKeepInput(false)
	ksGetData(ksConfig.Framework)
	SendNUIMessage({
		type = "ksTogglePauseMenu",
		toggle = true,
		players = GetNumberOfPlayers(),
	});
end

function ksClosePauseMenu()
    StopScreenEffect(ksEffect)
    DisableIdleCamera(false)
	SetNuiFocus(false, false)
	SetNuiFocusKeepInput(false)
	SendNUIMessage({
		type = "ksTogglePauseMenu",
		toggle = false,
	});
end

function ksCustomBtnFunction()
    ksClosePauseMenu()
    -- Do something custom...
end

function ksOpenInventoryFunction()
    ksClosePauseMenu()
    -- You can add the event or the command that open your inventory here
    if (ksConfig.Framework=='QBcore') then
		exports.ox_inventory:openInventory()
    end
end

function ksOpenPhoneFunction()
    ksClosePauseMenu()
    -- You can add the event or the command that open your phone here
    if (ksConfig.Framework=='QBcore') then
        ExecuteCommand('phone') -- Use this to open the phone if you have qb-phone
    end
end

RegisterNetEvent('ksDisablePauseMenu')
AddEventHandler('ksDisablePauseMenu', function()
	ksTogglePauseMenu = false
end)

RegisterNetEvent('ksEnablePauseMenu')
AddEventHandler('ksEnablePauseMenu', function()
	ksTogglePauseMenu = true
end)

RegisterNetEvent('ksHidePauseMenu')
AddEventHandler('kksHidePauseMenu', function()
	ksClosePauseMenu()
end)

RegisterNetEvent('ksShowPauseMenu')
AddEventHandler('kksShowPauseMenu', function()
	ksShowPauseMenu()
end)