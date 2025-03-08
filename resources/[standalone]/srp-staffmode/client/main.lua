local QBCore = exports['qb-core']:GetCoreObject()

IsInStaffMode = false

RegisterNetEvent('ks-staffmode:client:toggle', function(rank, key)
    print(type(rank))
    IsInStaffMode = not IsInStaffMode
    if IsInStaffMode then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify('You are now in staff mode!', "success", 3500) --More sounds here https://altv.stuyk.com/docs/articles/tables/frontend-sounds.html --cronus
            PlaySoundFrontend(-1, "SCREEN_FLASH", "CELEBRATION_SOUNDSET", 1)
            --PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
            PlaySoundFrontend(-1, "Pre_Screen_Stinger", "DLC_HEISTS_PREP_SCREEN_SOUNDS", 1)
            -- PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
        elseif Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert("Staff Mode", "You are now in staff mode!", 3500, "success")
        elseif Config.NotifyType == 'ox' then
            lib.notify({
                title = 'Staff Mode',
                description = 'You are now in staff mode!',
                type = 'success'
            })
        end
        SetEntityInvincible(PlayerPedId(), true)
    else
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify('You are no longer in staff mode!', "error", 3500) --More sounds here https://altv.stuyk.com/docs/articles/tables/frontend-sounds.html --cronus
            --PlaySoundFrontend(-1, "MP_WAVE_COMPLETE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
            --PlaySoundFrontend(-1, "Map_Roll_Down", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
            --PlaySoundFrontend(-1, "SCREEN_FLASH", "CELEBRATION_SOUNDSET", 1)
            PlaySoundFrontend(-1, "Pre_Screen_Stinger", "DLC_HEISTS_PREP_SCREEN_SOUNDS", 1)
            PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
        elseif Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert("Staff Mode", "You are no longer in staff mode!", 3500, "error")
        elseif Config.NotifyType == 'ox' then
            lib.notify({
                title = 'Staff Mode',
                description = 'You are no longer in staff mode!',
                type = 'error'
            })
        end
        SetEntityInvincible(PlayerPedId(), false)
    end
    ApplyOutfit(rank, key)
    TriggerServerEvent('ks-staffmode:server:check')
end)

-- only for qb-clothing
function ReloadSkin()
    local playerPed = PlayerPedId()
    local health = GetEntityHealth(playerPed)
    local model

    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local maxhealth = GetEntityMaxHealth(PlayerPedId())

    if gender == 1 then -- Gender is ONE for FEMALE
        model = GetHashKey("mp_f_freemode_01") -- Female Model
    else
        model = GetHashKey("mp_m_freemode_01") -- Male Model
    end

    RequestModel(model)

    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    Citizen.Wait(1000) -- Safety Delay

    TriggerServerEvent("qb-clothes:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
    TriggerServerEvent("qb-clothing:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES - Event 2

    SetPedMaxHealth(PlayerId(), maxhealth)
    Citizen.Wait(1000) -- Safety Delay
    SetEntityHealth(PlayerPedId(), health)
end

local PTFX_ASSET = 'ent_dst_elec_fire_sp'
local PTFX_DICT = 'core'
local LOOP_AMOUNT = 25
local PTFX_DURATION = 1000

local function createPlayerModePtfxLoop(tgtPedId)
    CreateThread(function()
        if tgtPedId <= 0 or tgtPedId == nil then return end
        RequestNamedPtfxAsset(PTFX_DICT)

        -- Wait until it's done loading.
        while not HasNamedPtfxAssetLoaded(PTFX_DICT) do
            Wait(0)
        end

        local particleTbl = {}

        for i=0, LOOP_AMOUNT do
            UseParticleFxAssetNextCall(PTFX_DICT)
            local partiResult = StartParticleFxLoopedOnEntity(PTFX_ASSET, tgtPedId, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, false, false, false)
            particleTbl[#particleTbl + 1] = partiResult
            Wait(0)
        end

        Wait(PTFX_DURATION)
        for _, parti in ipairs(particleTbl) do
            StopParticleFxLooped(parti, true)
        end
    end)
end

local function effect() -- 1
    -- get nearby players to receive the ptfx sync event
    local players = GetActivePlayers()
    local nearbyPlayers = {}
    for _, player in ipairs(players) do
        nearbyPlayers[#nearbyPlayers + 1] = GetPlayerServerId(player)
    end

    TriggerServerEvent('ks-staffmode:server:effect', nearbyPlayers)
end

RegisterNetEvent('ks-staffmode:effect', function(ptfx)
    if ptfx then 
        createPlayerModePtfxLoop(PlayerPedId())
    end
end)

RegisterNetEvent('ks-staffmode:syncEffect', function(tgtSrc) -- 3
    local tgtPlayer = GetPlayerFromServerId(tgtSrc)
    if tgtPlayer == -1 then return end
    createPlayerModePtfxLoop(GetPlayerPed(tgtPlayer))
end)

-- Do the outfit changes
function ApplyOutfit(rank, key)
    local tgtPedId = GetPlayerPed(GetPlayerFromServerId(source))
    if not IsInStaffMode then
        if Config.qbclothing then
            ReloadSkin()
        elseif Config.fivemappearance then
            TriggerEvent("fivem-appearance:client:reloadSkin", source)
        else
            return
        end
    end
    local PlayerData = QBCore.Functions.GetPlayerData()
    -- get gender
    local gender = "male"
    if PlayerData.charinfo.gender == 1 then
        gender = "female"
    end
    -- get current outfit
    local outfitData = Config.Outfits[gender][Config.DiscordRoles[key]]

    -- Animation
    RequestAnimDict("clothingshirt")
    while not HasAnimDictLoaded("clothingshirt") do Citizen.Wait(0) end

    local PlayerPed = PlayerPedId()
    TaskPlayAnim(PlayerPed, "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    -- apply outfitData
    if Config.Effects then
        if Config.SyncEffects then
            effect()
        else
            createPlayerModePtfxLoop(PlayerPedId())
        end
    end
    TriggerEvent('qb-clothing:client:loadOutfit', outfitData)
    Citizen.Wait(1000)
    ClearPedTasks(PlayerPed)
end