local diceDisplaying = {}
local displayTime = 8000

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/dice', 'Roll Dices', {
        { name="dices", help="Amount of Dices - Max: 3"  },
    })
end)

Citizen.CreateThread(function() 
    TriggerEvent('chat:addSuggestion', '/rps', 'Play Rock Paper Scissors', {
        {name="throw", help="Choose a throw (1=Rock, 2=Paper, 3=Scissors)"},
    })
end)


Citizen.CreateThread(function()
    local strin = ""

    while true do
        local currentTime, html = GetGameTimer(), ""
    
        for k, v in pairs(diceDisplaying) do
            local player = GetPlayerFromServerId(k)
    
            if NetworkIsPlayerActive(player) then
                local sourcePed, targetPed = GetPlayerPed(player), PlayerPedId()
                local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)
                local pedCoords = GetPedBoneCoords(sourcePed, 0x2e28, 0.0, 0.0, 0.0)
    
                if player == source or #(sourceCoords - targetCoords) < 10 then
                    local onScreen, xxx, yyy = GetHudScreenPositionFromWorldPosition(pedCoords.x, pedCoords.y, pedCoords.z + 1.2)
    
                    if not onScreen then
                        if v.type == "dices" then
                            local numCount = #v.num
    
                            if numCount > 1 then
                                local padding = 150
    
                                if numCount == 3 then
                                    padding = 156
                                end
    
                                html = html .. "<span style=\"position: absolute; padding-left: " .. padding .. "px; left: ".. xxx * 72 .."%;top: ".. yyy * 100 .."%;\">"
    
                                for a, b in pairs(v.num) do
                                    html = html .. "<img width=\"75px\" height=\"75px\" src=\"dice_".. b.dicenum ..".png\">"
                                end
                            else
                                html = html .. "<span style=\"position: absolute; left: ".. xxx * 94 .."%;top: ".. yyy * 100 .."%;\">"
                                html = html .. "<img width=\"75px\" height=\"75px\" src=\"dice_".. v.num[1].dicenum ..".png\">"    
                            end
    
                            html = html .. "</img></span>"
                        elseif v.type == "rps" then
                            html = html .. "<span style=\"position: absolute; left: ".. xxx * 94 .."%;top: ".. yyy * 100 .."%;\">"
                            html = html .. "<img width=\"75px\" height=\"75px\" src=\"option_".. v.num ..".png\"></img></span>"
                        end
                    end
                end
            end
    
            if v.time <= currentTime then
                diceDisplaying[k] = nil
            end
        end
    
        if strin ~= html then
            SendNUIMessage({
                type = true,
                html = html
            })
    
            strin = html
        end
        
        Wait(waitTime) -- Use the waitTime variable instead of a fixed wait time of 0
    
        if #diceDisplaying > 0 then
            waitTime = 5 -- Lower the wait time to 5ms if there are still items in the diceDisplaying table
        else
            waitTime = 1000 -- Otherwise, set it back to the initial wait time of 1000ms
        end
    end
end)

RegisterNetEvent("bb-dices:ToggleDisplay")
AddEventHandler("bb-dices:ToggleDisplay", function(playerId, number, typ)
	diceDisplaying[tonumber(playerId)] = {num = number, time = GetGameTimer() + displayTime, type = typ}
end)

RegisterNetEvent("bb-dices:ToggleDiceAnim")
AddEventHandler("bb-dices:ToggleDiceAnim", function()
    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1500)
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 2.0, 'dice', 0.3)
    Citizen.Wait(1500)
    ClearPedTasks(GetPlayerPed(-1))
end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Citizen.Wait(5)
    end
end