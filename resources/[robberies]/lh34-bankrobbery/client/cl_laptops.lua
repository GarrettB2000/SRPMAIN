local onEnterPoint = function(point)
    local pedModel = point.pedModel
    lib.requestModel(pedModel)
    local ped = CreatePed(0, pedModel, point.coords.x, point.coords.y, point.coords.z - 1.0, point.heading, false, false)

    SetModelAsNoLongerNeeded(pedModel)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    if Config.Target == 'ox_target' then
        exports['ox_target']:addLocalEntity(ped, {
            {
                label = Locales['laptop_target_label'],
                name = 'bankrobbery_laptop',
                icon = 'fas fa-hand-holding',
                distance = 1.5,
                serverEvent = 'bankrobbery:server:BuyLaptop',
                colour = point.colour
            },
        })
    elseif Config.Target == 'qb-target' then
        exports['qb-target']:AddTargetEntity(ped, {
            options = {
                {
                    type = 'server',
                    event = 'bankrobbery:server:BuyLaptop',
                    icon = 'fas fa-hand-holding',
                    label = Locales['laptop_target_label'],
                    colour = point.colour
                }
            },
            distance = 1.5,
        })
    end

    point.entity = ped
end

local onExitPoint = function(point)
	local entity = point.entity

	if not entity then return end

    if Config.Target == 'ox_target' then
        exports.ox_target:removeLocalEntity(entity)
    elseif Config.Target == 'qb-target' then
        exports['qb-target']:RemoveTargetEntity(entity, {
            Locales['laptop_target_label']
        })
    end

    SetEntityAsMissionEntity(entity, false, true)
    DeleteEntity(entity)

	point.entity = nil
end

for k, v in pairs(Config.Laptop) do
    local point = lib.points.new({
        coords = v.coords.xyz,
        distance = 60,
        onEnter = onEnterPoint,
        onExit = onExitPoint,
        colour = k,
        heading = v.coords.w,
        pedModel = v.pedModel,
    })        
end
