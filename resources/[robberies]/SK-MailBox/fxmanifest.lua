fx_version 'adamant'
game 'gta5'
author 'SK Developments'
description "Mailbox Robbery for ESX made by SK Developments"
lua54 'yes'

server_scripts {
	'server/*.lua'
}

client_scripts {
	'client/*.lua'
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}
