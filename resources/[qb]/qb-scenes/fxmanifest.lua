
fx_version 'cerulean'
games { 'gta5' }

author 'ItsANoBrainer'
description 'qb-Core Scenes'
version '1.0.7'

ui_page 'html/index.html'

files {
	'html/*',
    'html/index.html',
	'html/app.js',
	'html/styles.css',
}

client_scripts {
    '/client/client.lua',
    '/client/utils.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
    '/server/server.lua',
}

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'/shared/config.lua',
}

lua54 'yes'
server_scripts { '@mysql-async/lib/MySQL.lua' }