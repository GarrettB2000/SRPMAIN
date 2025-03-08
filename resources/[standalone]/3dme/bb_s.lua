local QBCore = exports['qb-core']:GetCoreObject()
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Commands.Add("me", "", {}, false, function(source, args)
	local src = source
	args = table.concat(args, ' ')
	TriggerClientEvent('bb-3dme:client:triggerDisplay', -1, src, args, "me")
    TriggerEvent('DiscordBot:ToDiscord', 'medo', '/me ' .. args, src)
end)

QBCore.Commands.Add("do", "", {}, false, function(source, args)
	local src = source
	args = table.concat(args, ' ')
	TriggerClientEvent('bb-3dme:client:triggerDisplay', -1, src, args, "do")
	TriggerEvent('DiscordBot:ToDiscord', 'medo', '/do ' .. args, src)
end)

RegisterServerEvent('3dme:display')
AddEventHandler('3dme:display', function(text, key, mod)
    local src = source
    if QBCore.Functions.kickHacKer(src, key) then -- QBCore.Key
		if mod == nil then mod = "me" end
        TriggerClientEvent('bb-3dme:client:triggerDisplay', -1, src, text, mod)
		TriggerEvent('DiscordBot:ToDiscord', 'medo', '/'..mod..' ' .. text, src)
    end
end)

RegisterServerEvent('3dme:server:tgiann-doctor')
AddEventHandler('3dme:server:tgiann-doctor', function(text, coords, key)
	local src = source
	if QBCore.Functions.kickHacKer(src, key) then -- QBCore.Key
		TriggerClientEvent('3dme:client:tgiann-doctor', -1, text, coords)
	end
end)

 