local QBCore = exports['qb-core']:GetCoreObject()

local JobData = {
    ['CitizenID'] = {
        police = 1, 
    }
}


getAllEmployees = function(jobName)
    local ret = {}
    for k,v in pairs(JobData) do 
        if v[jobName] then ret[k] = v[jobName]; end 
    end
    return ret
end

Citizen.CreateThread(function()
    while not Core do Wait(500); end 
    JobData = (Core.Files.Load("jobData.json") or {})
    DataReady = true

    while true do 
      Wait(60000)
      Core.Files.Save("jobData.json", JobData)
    end
end)

RegisterNetEvent("Dirk:CheckPlayerJob", function()
    while not DataReady do Wait(0) end
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    
    if ply then
        local id = ply.PlayerData.citizenid
        if not JobData[id] then
            local oldJobs = MySQL.query.await('SELECT * FROM multijobs WHERE citizenid = ? LIMIT 1', { id })
            if oldJobs and oldJobs[1] then
                JobData[id] = json.decode(oldJobs[1].jobdata)
            else
                JobData[id] = {}
            end
        end
    else
        print("Error: Player not found or invalid source.")
    end
end)

local function GetJobs(citizenid)
    if JobData[citizenid] then 
        return JobData[citizenid]
    else
        local Player = QBCore.Functions.GetPlayerByCitizenId(citizenid)
        local temp = {}
        local citizenid = Player.PlayerData.citizenid
        if not Config.IgnoredJobs[Player.PlayerData.job.name] then
            JobData[citizenid][Player.PlayerData.job.name] = Player.PlayerData.job.grade.level
        end
        return JobData[citizenid]
    end
    return {}
end
    
local function AddJob(citizenid, job, grade)
    local jobs = GetJobs(citizenid)
    for ignored in pairs(Config.IgnoredJobs) do
        if jobs[ignored] then
            jobs[ignored] = nil
        end
    end

    jobs[job] = grade
    JobData[citizenid] = jobs
end

local function RemoveJob(citizenid, job, rgrade)
    local jobs = GetJobs(citizenid)
    jobs[job] = nil
    local Player = QBCore.Functions.GetPlayerByCitizenId(citizenid)

    JobData[citizenid] = jobs

    local player = MySQL.query.await('SELECT * FROM players WHERE citizenid = ? LIMIT 1', { citizenid })
		if player[1] ~= nil then
			Employee = player[1]
			Employee.job = json.decode(Employee.job)
			local job1 = {}
			job1.name = "unemployed"
			job1.label = "Unemployed"
			job1.payment = QBCore.Shared.Jobs[job1.name].grades['0'].payment or 500
			job1.onduty = true
			job1.isboss = false
			job1.grade = {}
			job1.grade.name = nil
			job1.grade.level = 0
			MySQL.update('UPDATE players SET job = ? WHERE citizenid = ?', { json.encode(job1), citizenid })
        end
    -- Since we removed a job, put player as unemployed
    if Player and Player.PlayerData.job.name == job then
        Player.Functions.SetJob("unemployed", 0)
    end
end

QBCore.Commands.Add('removejob', 'Remove Multi Job (Admin Only)', { { name = 'id', help = 'ID of player' }, { name = 'job', help = 'Job Name' }, { name = 'grade', help = 'Job Grade' } }, false, function(source, args)
    local source = source
    if source ~= 0 then
        if args[1] then
            local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
            if Player then
                if args[2]and args[3] then
                    RemoveJob(Player.PlayerData.citizenid, args[2], args[3])
                else
                    TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
                end
            else
                TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
            end
        else
            TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
        end
    else
        TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
    end
end, 'admin')

QBCore.Commands.Add('addjob', 'Add Multi Job (Admin Only)', { { name = 'id', help = 'ID of player' }, { name = 'job', help = 'Job Name' }, { name = 'grade', help = 'Job Grade' } }, false, function(source, args)
    local source = source
    if source ~= 0 then
        if args[1] then
            local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
            if Player then
                if args[2]and args[3] then
                    AddJob(Player.PlayerData.citizenid, args[2], args[3])
                else
                    TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
                end
            else
                TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
            end
        else
            TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
        end
    else
        TriggerClientEvent("QBCore:Notify", source, "Wrong usage!")
    end
end, 'god')

RegisterNetEvent("srp_multijob:addJob", function(citizenid, job, grade)
    if citizenid then
        if Player then
            if job and grade then
                AddJob(citizenid, job, grade)
            end
        end
    end
end)

exports("GetJobs", GetJobs)
exports("AddJob", AddJob)
exports("RemoveJob", RemoveJob)

QBCore.Functions.CreateCallback("srp_multijob:getJobs",function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local jobs = GetJobs(Player.PlayerData.citizenid)
    cb(jobs)
end)

RegisterNetEvent("srp_multijob:changeJob",function(cjob, cgrade)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if cjob == "unemployed" and cgrade == 0 then
        Player.Functions.SetJob(cjob, cgrade)
        return
    end

    local jobs = GetJobs(Player.PlayerData.citizenid)
    for job, grade in pairs(jobs) do
        if cjob == job and cgrade == grade then
            Player.Functions.SetJob(job, grade)
        end
    end
end)

RegisterNetEvent("srp_multijob:removeJob",function(job, grade)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    RemoveJob(Player.PlayerData.citizenid, job, grade)
end)

-- QBCORE EVENTS

RegisterNetEvent("srp_multijob:server:FireEmployee", function(data)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.PlayerData.job.isboss then return end
    local Employee = QBCore.Functions.GetPlayerByCitizenId(data.target)
    if data.target ~= Player.PlayerData.citizenid then
        RemoveJob(data.target, data.job)
        if Employee then 
            TriggerClientEvent('QBCore:Notify', Employee.PlayerData.source, "You were fired from ".. QBCore.Shared.Jobs[data.job].label, "error", 3500)
        end 
    end
    TriggerClientEvent('QBCore:Notify', source, "You just fired ".. Employee.PlayerData.charinfo.firstname .." ".. Employee.PlayerData.charinfo.lastname, "error", 3500)
    TriggerClientEvent('qb-bossmenu:client:OpenMenu', source)
end)

RegisterNetEvent('QBCore:Server:OnJobUpdate', function(source, newJob)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local jobs = type(GetJobs(Player.PlayerData.citizenid)) == "table" and GetJobs(Player.PlayerData.citizenid) or {}
    local amount = 0
    local setjob = newJob

    for k, v in pairs(jobs) do
        amount = amount + 1
    end

    local roles = exports.Badger_Discord_API:GetDiscordRoles(source)
    local maxJobs = Config.MaxJobs

    for _, role in ipairs(roles) do
        if Config.MaxJobsByRole[role] then
            maxJobs = math.max(Config.MaxJobsByRole[role], maxJobs)
        end
    end

    if amount < maxJobs and not Config.IgnoredJobs[setjob.name] then
        local foundOldJob = jobs[setjob.name]
        if not foundOldJob or foundOldJob ~= setjob.grade.level then
            AddJob(Player.PlayerData.citizenid, setjob.name, setjob.grade.level)
        end
    end
end)


AddEventHandler("QBCore:Server:PlayerLoaded", function(player)
    local roles = exports.Badger_Discord_API:GetDiscordRoles(player.PlayerData.source)

    if type(roles) ~= "table" or #roles == 0 then return end

    local maxJobs = Config.MaxJobs

    for _, role in ipairs(roles) do
        if Config.MaxJobsByRole[role] then
            maxJobs = math.max(Config.MaxJobsByRole[role], maxJobs)
        end
    end

    -- Ensure that GetJobs returns a table
    local jobs = GetJobs(player.PlayerData.citizenid) or {}
    local keys = {}

    -- Only proceed if jobs is a valid table
    if type(jobs) == "table" then
        for key in pairs(jobs) do
            table.insert(keys, key)
        end

        if #keys <= maxJobs then return end

        table.sort(keys, function(a, b)
            return jobs[a] > jobs[b]
        end)

        for i = maxJobs + 1, #keys, 1 do
            RemoveJob(player.PlayerData.citizenid, keys[i])
        end
    end
end)
