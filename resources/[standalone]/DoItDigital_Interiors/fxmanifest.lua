resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
fx_version 'cerulean'
author 'KilluaZoldyck#0099'
description 'This script controls DoItDigital Interiors and Exteriors.'
version '0.6.0'
games { 'gta5' }

lua54 'on'

client_scripts {
    "client.lua"
}

server_scripts {
    "server.lua"
}

shared_scripts {
	"config.lua"
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'