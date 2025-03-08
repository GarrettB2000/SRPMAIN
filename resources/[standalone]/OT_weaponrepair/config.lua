Config = {}

Config.useOTSkills = false -- requires our skills system, you can find here: https://forum.cfx.re/t/paid-ot-skills/4917372
Config.xpreward = 5

Config.requireditem = 'metalscrap'
Config.requireditemamount = 250
Config.repairtime = 5000
Config.repairItem = 'weaponrepairkit'

Config.require = {
    ['weapon_pistol'] = {
        requireditem = 'metalscrap',
        requireditemamount = 250,
        repairtime = 30000
    },
}

Config.locations = {
    {
        coords = vector3(-177.73, 6157.99, 30.21),
        heading = 280,
        spawnprop = true, -- spawns the workbench at the location 
        free = false -- allows weapons to be repaired for free at the location
    }
}