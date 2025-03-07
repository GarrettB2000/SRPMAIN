local cache = {}
local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()

    local locales = Config.Locales

    local function notify(text)
        lib.notify({title='', description = locales[text], position = 'topcenter'})
    end

    local function reOrderObjs()
        for k,v in pairs(cache.objs) do
            v.object = GetEntityModel(v.object)
        end
    end

    local eventA = AddEventHandler('ox_inventory:currentWeapon', function(currentWeapon)
        if currentWeapon == Config.Hammer.label and not cache.noti then
            notify('new_equip')
            RemoveEventHandler(eventA)
        end
    end)

    function robmailbox()

        local weapon = exports.ox_inventory:getCurrentWeapon()
        local hasWeapon = exports.ox_inventory:GetSlotIdWithItem(Config.Hammer.item)

        if not weapon and not hasWeapon or weapon and weapon.label ~= Config.Hammer.label then
            notify('noweapon')
            return 
        end

        cache.ped = PlayerPedId()
        cache.coords = GetEntityCoords(cache.ped)
        cache.objs = lib.getNearbyObjects(cache.coords, Config.Maxdistance)

        if not next(cache.objs) then
            return
        end

        reOrderObjs()

        local alreadyRobbed = lib.callback.await('mailboxRobbed', false, cache.objs)

        if alreadyRobbed then
            notify('robbed')
            return
        end

        if not weapon then
            exports.ox_inventory:useSlot(hasWeapon)
            weapon = exports.ox_inventory:getCurrentWeapon()
        end

        if weapon and weapon.metadata.durability <= 0 then
            notify('durability')
            return 
        end

        Wait(500)

        lib.requestAnimDict(Config.Animations.Breakin.dict)
        length = GetAnimDuration(Config.Animations.Breakin.dict, Config.Animations.Breakin.clip)

        cache.object = GetClosestObjectOfType(cache.coords, 1.5, cache.objs[1].object)
        if cache.object ~= 0 then
            TaskTurnPedToFaceEntity(cache.ped, cache.object, -1)
        end

        Wait(500)

        QBCore.Functions.Progressbar("rob_mailbox", locales['breaking'], math.random(5000, 7500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations.Breakin.dict,
            anim = Config.Animations.Breakin.clip,
        }, {}, {}, function() -- On success
            Wait(length)
            ClearPedTasks(cache.ped)

            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('mailbox', cache.objs)
                else
                    TriggerServerEvent('hammer')
                end
            end, 4, 20) -- 4 stages, 20 seconds duration
        end, function() -- On cancel
            ClearPedTasks(cache.ped)
            notify('cancelled')
        end)
    end

    exports.ox_target:addModel(Config.Mailboxes, {
        label = locales['initrob'],
        icon = 'fa-solid fa-hammer',
        distance = Config.Maxdistance,
        onSelect = robmailbox
    })

    RegisterNetEvent('openMail', function()
        lib.requestAnimDict(Config.Animations.MailOpen.dict)

        QBCore.Functions.Progressbar("open_mail", locales['mail'], math.random(1000, 1500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations.MailOpen.dict,
            anim = Config.Animations.MailOpen.clip,
        }, {
            model = Config.Animations.MailOpen.prop,
            bone = 28422,
            coords = {x = 0.04, y = 0.1, z = -0.025},
            rotation = {x = 90.0, y = 0.0, z = 180.0},
        }, {}, function() -- On success
            ClearPedTasks(cache.ped)
        end, function() -- On cancel
            ClearPedTasks(cache.ped)
            notify('cancelled')
        end)
    end)
end)
