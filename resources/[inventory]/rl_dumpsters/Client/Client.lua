local QBCore = exports['qb-core']:GetCoreObject()
local SearchedDumpsters = {}
local Searching = false

-- Register the interaction with dumpsters using ox_target
exports.ox_target:addModel(rlConfig.Dumpsters, {
    {
        name = "rl_dumpsters:SearchDumpster",
        icon = "fa-solid fa-dumpster",
        label = "Search Dumpster",
        distance = 1.5,
        canInteract = function()
            return not Searching
        end,
        onSelect = function(Table)
            TriggerEvent("rl_dumpsters:Client:SearchDumpster", Table.entity)
        end
    }
})

-- Event to search a dumpster
RegisterNetEvent("rl_dumpsters:Client:SearchDumpster", function(Entity)
    if not Searching then
        if SearchedDumpsters[Entity] == nil then
            Searching = true
            Notify("You started searching the dumpster", "info")
            if lib.progressBar({
                duration = math.random(9000, 11000),
                label = "Searching Dumpster...",
                useWhileDead = false,
                canCancel = false,
                disable = {
                    car = true,
                    move = true,
                },
                anim = {
                    dict = "amb@prop_human_bum_bin@base",
                    clip = "base",
                },
            }) then 
                TriggerServerEvent("rl_dumpsters:Server:SearchedDumpsters", Entity)
                SearchedDumpsters[Entity] = Entity
                Searching = false
            end
        else
            Notify("This dumpster has already been searched", "error")
        end
    end
end)

-- Event to remove the timer for a dumpster
RegisterNetEvent("rl_dumpster:Client:RemoveTimer", function(Entity)
    if SearchedDumpsters[Entity] ~= nil then
        SearchedDumpsters[Entity] = nil
    end
end)

-- Notification function using ox_lib
function Notify(text, type)
    lib.notify({
        title = 'Notification',
        description = text,
        position = 'center-right',
        type = type, -- Use 'success', 'error', or 'info'
        duration = 2500
    })
end
