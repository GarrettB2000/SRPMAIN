--- Target

exports['qb-target']:AddBoxZone('bankrobbery_panel_maze', vec3(-1303.85, -815.63, 17.35), 0.24, 0.46, {
    name = 'bankrobbery_panel_maze',
    heading = 308,
    debugPoly = Config.Debug,
    minZ = 17.35,
    maxZ = 18.05
 }, {
    options = { 
        {
            type = 'client',
            event = 'bankrobbery:client:UseGreenLaptop',
            icon = 'fas fa-user-secret',
            label = Locales['panel_target_hack'],
            canInteract = function()
                return not Config.Banks['Maze'].hacked
            end,
            bank = 'Maze',
        },
        {
            type = 'server',
            event = 'bankrobbery:server:PDClose',
            icon = 'fas fa-door-closed',
            label = Locales['panel_target_pd'],
            canInteract = function()
                return Config.Banks['Maze'].hacked
            end,
            bank = 'Maze',
            job = 'police'
        }
    },
    distance = 1.5,
})