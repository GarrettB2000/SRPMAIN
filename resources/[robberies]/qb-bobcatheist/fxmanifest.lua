fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Lionh34rt#7553'
description 'Bobcat Security heist for QBCore'
version '2.0'

dependencies {
    'ox_lib',
    'PolyZone',
	--'qb-target'
}

shared_scripts {
    'shared/sh_*.lua',
    '@ox_lib/init.lua',

}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
    'client/cl_*.lua',
}

server_scripts {
    'server/sv_*.lua',
}