EXTERNAL_EVENTS_NAMES = {
    ["esx:getSharedObject"] = nil, -- This is nil because it will be found automatically, change it to your one ONLY in the case it can't be found
}

-- Ped models that WON'T be used for NPC mugging
BLACKLISTED_PEDS_MODELS = {
    --[[
        Some examples:
        
        [ GetHashKey("a_m_o_tramp_01") ] = true,
        [ GetHashKey("csb_rashcosvki") ] = true,
        [ GetHashKey("csb_stripper_02") ] = true,
    ]]
}

INTERACTION_POINTS_REFRESH = 1000

-- Seconds the blip of police alert will remain in the map
BLIP_TIME_AFTER_POLICE_ALERT = 40

-- Seconds each time the gas will damage the player
GAS_INTERVAL_SECONDS = 1

-- Used to investigate on an issue, keep false if you don't know what this is
DEBUG_OUTPUT_HEIST_STEPS = false

--[[
    Default progressbar color (must be a hex code). Examples:
    "#0fffef" - Light blue
    "#ff0f0f" - Red
    "#0f0fff" - Blue
]]
DEFAULT_PROGRESSBAR_COLOR = "#ff0f0f"

RegisterNetEvent("robberies_creator:framework:ready", function() 
    -- Disables the default script progress bar (otherwise there would be 2 progress bars)
    exports["robberies_creator"]:disableScriptEvent("robberies_creator:internalProgressBar")
end)

-- Example to replace the script progress bar with qb-progressbar
RegisterNetEvent("robberies_creator:internalProgressBar", function(time, text)
    -- The event to activate qb-progressbar
    QBCore.Functions.Progressbar("robberies_creator_progress", text, time, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        -- Called when the progress bar finishes
        -- You can add additional actions here if needed
    end, function()
        -- Called if the progress bar is canceled
        -- You can add additional actions here if needed
    end)
end)