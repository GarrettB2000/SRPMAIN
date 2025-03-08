RegisterCommand(Config.commandName, function(source, args, rawCommand, user)
    -- Notify all players about mass DV warning with a custom sound
    TriggerClientEvent('ox_lib:notify', -1, {
        title = 'Mass DV',
        description = 'Please get into your vehicles! (30 seconds)',
        type = 'warning',
        duration = 5000, -- Display for 5 seconds
        position = 'center-right', -- Align to the middle-right edge
        sound = {
            bank = 'GTAO_FM_Events_Soundset',
            set = 'GTAO_FM_Events_Soundset',
            name = 'Lose_1st' -- Custom sound
        }
    })
    Wait(15000)
    TriggerClientEvent('ox_lib:notify', -1, {
        title = 'Mass DV',
        description = 'Please get into your vehicles! (15 seconds)',
        type = 'warning',
        duration = 5000, -- Display for 5 seconds
        position = 'center-right', -- Align to the middle-right edge
        sound = {
            bank = 'GTAO_FM_Events_Soundset',
            set = 'GTAO_FM_Events_Soundset',
            name = 'Lose_1st' -- Custom sound
        }
    })
    Wait(15000)
    TriggerClientEvent('ox_lib:notify', -1, {
        title = 'Mass DV',
        description = 'Mass DV complete!',
        type = 'success',
        duration = 5000, -- Display for 5 seconds
        position = 'center-right', -- Align to the middle-right edge
        sound = {
            bank = 'GTAO_FM_Events_Soundset',
            set = 'GTAO_FM_Events_Soundset',
            name = 'Lose_1st' -- Custom sound
        }
    })
    
    -- Delete all vehicles
    Wait(1)
    TriggerClientEvent("wld:delallveh", -1)
end, Config.restricCommand)
