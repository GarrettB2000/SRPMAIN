1-  in qb-ambulancejob --> client --> main.lua
    TriggerEvent('eth-deathscreen:revive') 

    Add this trigger to End of 

    RegisterNetEvent('hospital:client:Revive', function()) 

    this function

2-  in qb-ambulancejob --> client --> main.lua

    TriggerEvent('eth-deathscreen:revive')

    Add this trigger to Start of 

    RegisterNetEvent('hospital:client:RespawnAtHospital', function())

    this function

3-  in qb-ambulancejob --> client --> dead.lua

    TriggerEvent('eth-deathscreen:openUI', Config.DeathTime)

    add this trigger to under the "hospital:server:ambulanceAlert" trigger in the onDeath() function

    function OnDeath()
            TriggerServerEvent('hospital:server:ambulanceAlert', Lang:t('info.civ_died'))
            TriggerEvent('eth-deathscreen:openUI', Config.DeathTime)

4-  in qb-ambulancejob --> client --> dead.lua
    change DeathTimer() function with this
    
    function DeathTimer()
    hold = 5
    while isDead do
        Wait(1000)
        deathTime = deathTime - 1
        if deathTime <= 0 then
            if IsControlPressed(0, 38) and hold <= 0 and not isInHospitalBed then
                TriggerEvent('hospital:client:RespawnAtHospital')
                hold = 5
                break
            end
            if IsControlPressed(0, 38) then
                if hold - 1 >= 0 then
                    hold = hold - 1
                    TriggerEvent('eth-deathscreen:updateHold', hold)
                else
                    hold = 0
                end
                
            end
            if IsControlReleased(0, 38) then
                hold = 5
                TriggerEvent('eth-deathscreen:hold')
            end
        end
    end
end




5- in qb-ambulancejob --> client --> dead.lua

    change CreateThread(function()) with this

    CreateThread(function()
	while true do
        local sleep = 1000
		if isDead or InLaststand then
            sleep = 5
            local ped = PlayerPedId()
            -- DisableAllControlActions(0)
            -- EnableControlAction(0, 1, true)
			-- EnableControlAction(0, 2, true)
			-- EnableControlAction(0, 245, true)
            -- EnableControlAction(0, 38, true)
            -- EnableControlAction(0, 0, true)
            -- EnableControlAction(0, 322, true)
            -- EnableControlAction(0, 288, true)
            -- EnableControlAction(0, 213, true)
            -- EnableControlAction(0, 249, true)
            -- EnableControlAction(0, 46, true)
            -- EnableControlAction(0, 47, true)

            if isDead then
                -- if not isInHospitalBed then
                --     if deathTime > 0 then
                --         DrawTxt(0.93, 1.44, 1.0,1.0,0.6, Lang:t('info.respawn_txt', {deathtime = math.ceil(deathTime)}), 255, 255, 255, 255)
                --     else
                --         DrawTxt(0.865, 1.44, 1.0, 1.0, 0.6, Lang:t('info.respawn_revive', {holdtime = hold, cost = Config.BillCost}), 255, 255, 255, 255)
                --     end
                -- end

                if IsPedInAnyVehicle(ped, false) then
                    loadAnimDict("veh@low@front_ps@idle_duck")
                    if not IsEntityPlayingAnim(ped, "veh@low@front_ps@idle_duck", "sit", 3) then
                        TaskPlayAnim(ped, "veh@low@front_ps@idle_duck", "sit", 1.0, 1.0, -1, 1, 0, 0, 0, 0)
                    end
                else
                    if isInHospitalBed then
                        if not IsEntityPlayingAnim(ped, inBedDict, inBedAnim, 3) then
                            loadAnimDict(inBedDict)
                            TaskPlayAnim(ped, inBedDict, inBedAnim, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
                        end
                    else
                        if not IsEntityPlayingAnim(ped, deadAnimDict, deadAnim, 3) then
                            loadAnimDict(deadAnimDict)
                            TaskPlayAnim(ped, deadAnimDict, deadAnim, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
                        end
                    end
                end

                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
            elseif InLaststand then
                sleep = 5

                -- if LaststandTime > Laststand.MinimumRevive then
                --     DrawTxt(0.94, 1.44, 1.0, 1.0, 0.6, Lang:t('info.bleed_out', {time = math.ceil(LaststandTime)}), 255, 255, 255, 255)
                -- else
                --     DrawTxt(0.845, 1.44, 1.0, 1.0, 0.6, Lang:t('info.bleed_out_help', {time = math.ceil(LaststandTime)}), 255, 255, 255, 255)
                --     if not emsNotified then
                --         DrawTxt(0.91, 1.40, 1.0, 1.0, 0.6, Lang:t('info.request_help'), 255, 255, 255, 255)
                --     else
                --         DrawTxt(0.90, 1.40, 1.0, 1.0, 0.6, Lang:t('info.help_requested'), 255, 255, 255, 255)
                --     end

                --     if IsControlJustPressed(0, 47) and not emsNotified then
                --         TriggerServerEvent('hospital:server:ambulanceAlert', Lang:t('info.civ_down'))
                --         emsNotified = true
                --     end
                -- end

                if not isEscorted then
                    if IsPedInAnyVehicle(ped, false) then
                        loadAnimDict("veh@low@front_ps@idle_duck")
                        if not IsEntityPlayingAnim(ped, "veh@low@front_ps@idle_duck", "sit", 3) then
                            TaskPlayAnim(ped, "veh@low@front_ps@idle_duck", "sit", 1.0, 1.0, -1, 1, 0, 0, 0, 0)
                        end
                    else
                        loadAnimDict(lastStandDict)
                        if not IsEntityPlayingAnim(ped, lastStandDict, lastStandAnim, 3) then
                            TaskPlayAnim(ped, lastStandDict, lastStandAnim, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
                        end
                    end
                else
                    if IsPedInAnyVehicle(ped, false) then
                        loadAnimDict("veh@low@front_ps@idle_duck")
                        if IsEntityPlayingAnim(ped, "veh@low@front_ps@idle_duck", "sit", 3) then
                            StopAnimTask(ped, "veh@low@front_ps@idle_duck", "sit", 3)
                        end
                    else
                        loadAnimDict(lastStandDict)
                        if IsEntityPlayingAnim(ped, lastStandDict, lastStandAnim, 3) then
                            StopAnimTask(ped, lastStandDict, lastStandAnim, 3)
                        end
                    end
                end
            end
		end
        Wait(sleep)
	end
end)




