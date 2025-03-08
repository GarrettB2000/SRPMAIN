local QBCore = exports['qb-core']:GetCoreObject()


local cooldowns = {}

RegisterCommand('dice', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end

	local cooldown = 3 -- the cooldown time in seconds

    if cooldowns[source] and (os.time() - cooldowns[source]) < cooldown then
        local remainingTime = cooldown - (os.time() - cooldowns[source])
		TriggerClientEvent('chat:addMessage', source, {args = {"^1Error: ", "You must wait " .. remainingTime .. " seconds before using this command again."}})
        return
    end

	local dices, c = tonumber(args[1]), 1
	if dices then
		if dices > 3 then
			TriggerClientEvent('notification', source, 'You can choose a number between 1 and 3 only', 2)
			return
		end
		local dice = {}
		while c <= dices do
			table.insert( dice, { dicenum = math.random(1, 6)})
			c = c + 1
		end
		TriggerClientEvent('bb-dices:ToggleDiceAnim', source)
		Citizen.Wait(2000)
		TriggerClientEvent('bb-dices:ToggleDisplay', -1, source, dice, "dices")
	end

    cooldowns[source] = os.time()
end, false)


local cooldowns = {}

RegisterCommand('rps', function(source, args, rawCommand)
    if source == 0 or source == "Console" then return end

    local cooldown = 5 -- the cooldown time in seconds

    if cooldowns[source] and (os.time() - cooldowns[source]) < cooldown then
        local remainingTime = cooldown - (os.time() - cooldowns[source])
		TriggerClientEvent('chat:addMessage', source, {args = {"^1Error: ", "You must wait " .. remainingTime .. " seconds before using this command again."}})
        return
    end

    TriggerClientEvent('bb-dices:ToggleDiceAnim', source)
    Citizen.Wait(2000)
    local anim = tonumber(args[1])
    if not anim then
        TriggerClientEvent('bb-dices:ToggleDisplay', -1, source, math.random(1, 3), "rps")
    elseif anim == 1 then
        TriggerClientEvent('bb-dices:ToggleDisplay', -1, source, 1, "rps")
    elseif anim == 2 then
        TriggerClientEvent('bb-dices:ToggleDisplay', -1, source, 3, "rps")
    elseif anim == 3 then
        TriggerClientEvent('bb-dices:ToggleDisplay', -1, source, 2, "rps")
    end

    cooldowns[source] = os.time()
end, false)
