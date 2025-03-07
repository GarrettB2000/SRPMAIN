fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Lionh34rt'
description 'Bankrobbery script for Gabz MLO'
version '2.0'



dependencies {
    'ox_lib',
    'srp-powerplant',
    'mka-lasers'
}

files {
    'locales/*.json'
}

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua',
    'shared/locales.lua',
    'bridge/compat.lua'
}

client_scripts {
    '@mka-lasers/client/client.lua',
    'bridge/**/client.lua',
    'utils/client.lua',
    'client/cl_extra.lua',
    'client/cl_main.lua',
    'client/cl_laptops.lua',
    'client/cl_fleeca.lua',
    'client/cl_maze.lua',
    'client/cl_paleto.lua',
    'client/cl_pacific.lua'
}

server_scripts {
    'bridge/**/server.lua',
    'utils/server.lua',
    'server/sv_extra.lua',
    'server/sv_main.lua',
    'server/sv_rewards.lua',
    'server/sv_laptops.lua',
    'server/sv_fleeca.lua',
    'server/sv_paleto.lua',
    'server/sv_pacific.lua'
}

escrow_ignore {
    '@ox_lib/init.lua',
    'shared/config.lua',
    'shared/locales.lua',
    'bridge/**/client.lua',
    'utils/client.lua',
    'client/cl_main.lua',
    'client/cl_laptops.lua',
    'client/cl_fleeca.lua',
    'client/cl_maze.lua',
    'client/cl_paleto.lua',
    'client/cl_pacific.lua',
    'bridge/**/server.lua',
    'utils/server.lua',
    'server/sv_main.lua',
    'server/sv_rewards.lua',
    'server/sv_laptops.lua',
    'server/sv_fleeca.lua',
    'server/sv_paleto.lua',
    'server/sv_pacific.lua'
}

dependency '/assetpacks'