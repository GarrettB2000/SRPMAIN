server_script "5.lua"
client_script "5.lua"



fx_version 'adamant'
games { 'gta5' }
lua54 'yes'

author 'Kaide Scripts'

files {
	'html/index.html',
}

shared_scripts {
	'config.lua',
	'@ox_lib/init.lua'
}

client_scripts {
	'client/*.lua',
}

server_scripts {
	'server/*.lua',
}
