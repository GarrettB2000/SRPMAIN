Hey! Thanks for purchasing my script. Remember:
   - You are not allowed to resell or release my scripts

Requirements:
   - es_extended / qb-core

Installing the script:
   1. Download the file and extract "tk_cctv" into your resources folder
   2. Add "start tk_cctv" into your server.cfg file
   3. Edit config.lua to your liking
   4. Restart your server

Items (for ox_inventory):
   ["cctv_faulty"] = {
		label = "Faulty CCTV Camera",
		weight = 100,
		stack = true,
		close = true,
	},

	["cctv_default"] = {
		label = "Default CCTV Camera",
		weight = 100,
		stack = true,
		close = true,
	},

	["cctv_advanced"] = {
		label = "Advanced CCTV Camera",
		weight = 100,
		stack = true,
		close = true,
	},

	["cctv_tablet"] = {
		label = "CCTV Tablet",
		weight = 100,
		stack = true,
		close = true,
	},

Items (for qs-inventory: qs-inventory\shared\items):
    ['cctv_faulty'] = {
        ['name'] = 'cctv_faulty',
        ['label'] = 'Faulty CCTV Camera',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'cctv_faulty.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '...'
    },

    ['cctv_default'] = {
        ['name'] = 'cctv_default',
        ['label'] = 'Default CCTV Camera',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'cctv_default.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '...'
    },

    ['cctv_advanced'] = {
        ['name'] = 'cctv_advanced',
        ['label'] = 'Advanced CCTV Camera',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'cctv_advanced.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '...'
    },

    ['cctv_tablet'] = {
        ['name'] = 'cctv_tablet',
        ['label'] = 'CCTV Tablet',
        ['weight'] = 100,
        ['type'] = 'item',
        ['image'] = 'cctv_tablet.png',
        ['unique'] = false,
        ['useable'] = true,
        ['shouldClose'] = true,
        ['combinable'] = nil,
        ['description'] = '...'
    },

Items (for qb-core: qb-core\shared\items):
	['cctv_faulty'] = {['name'] = 'cctv_faulty', ['label'] = 'Faulty CCTV Camera', ['weight'] = 100, ['type'] = 'item', ['image'] = 'cctv_faulty.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ''},
	['cctv_default'] = {['name'] = 'cctv_default', ['label'] = 'Default CCTV Camera', ['weight'] = 100, ['type'] = 'item', ['image'] = 'cctv_default.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ''},
	['cctv_advanced'] = {['name'] = 'cctv_advanced', ['label'] = 'Advanced CCTV Camera', ['weight'] = 100, ['type'] = 'item', ['image'] = 'cctv_advanced.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ''},
	['cctv_tablet'] = {['name'] = 'cctv_tablet', ['label'] = 'CCTV Tablet', ['weight'] = 100, ['type'] = 'item', ['image'] = 'cctv_tablet.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ''},


More questions?
   - Join our Discord and open a ticket: https://discord.gg/YndnF9tkqu