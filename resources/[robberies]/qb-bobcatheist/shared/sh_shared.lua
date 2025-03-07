Shared = {}

Shared.MinCops = 0

Shared.Doors = {
    [1] = { -- Thermite
        id = "bobcatfirst",
        hit = false,
        ptfx = vector3(914.645, -2120.91, 31.2),
        anim = vector4(914.75, -2121.93, 31.30, 90.0)
    },
    [2] = { -- Thermite
        id = "bobcatsecond",
        hit = false,
        ptfx = vector3(908.59, -2119.12, 31.2),
        anim = vector4(908.59, -2120.14, 31.30, 90.0)
    },
    [3] = { -- Card
        id = "bobcatthird",
        hit = false
    }
}

Shared.Doorlock3 = "bobcatthird"

Shared.Autolock = 3600


Shared.ThermiteSettings = {
    correctBlocks = 12, -- correctBlocks = Number of correct blocks the player needs to click
    incorrectBlocks = 3, -- incorrectBlocks = number of incorrect blocks after which the game will fail
    timetoShow = 5, -- timetoShow = time in secs for which the right blocks will be shown
    timetoLose = 24 -- timetoLose = maximum time after timetoshow expires for player to select the right blocks
}