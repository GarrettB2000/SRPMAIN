fx_version 'cerulean'

game 'gta5'

author 'TuKeh_'

description 'CCTV Cameras'

version '1.1.2'

lua54 'yes'

ui_page 'web/build/index.html'

files {
    'web/build/index.html',
    'web/build/**/*',
}

shared_scripts {
    'shared/*.lua',
	'locales/*.lua',
	'config.lua',
}

client_scripts {
    'client/frameworks/*.lua',
    'client/main_editable.lua',
    'client/main.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
    'server/frameworks/*.lua',
    'server/main_editable.lua',
    'server/main.lua',
    '@ox_lib/init.lua',
}

escrow_ignore {
    'locales/*.lua',
    'config.lua',
    'client/frameworks/*.lua',
    'server/frameworks/*.lua',
    'client/main_editable.lua',
    'server/main_editable.lua',
}

exports {
    'openCameraTablet',
    'isInCameraView',
}
dependency '/assetpacks'