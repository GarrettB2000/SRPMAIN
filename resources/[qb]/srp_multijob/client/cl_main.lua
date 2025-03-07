local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    while not Core do Wait(500); end 
    while not Core.Player.Ready() do Wait(500); end
    TriggerServerEvent("Dirk:CheckPlayerJob")
end)

local last_used = 0 --GetGameTimer()

local function GetJobs()
    local p = promise.new()

    QBCore.Functions.TriggerCallback('srp_multijob:getJobs', function(jobs)
        local multijobs = {}
        local whitelistedjobs = {}
        local civjobs = {}
        local active = {}
        local getjobs = {}
        for job, grade in pairs(jobs) do
          if QBCore.Shared.Jobs[job] then 
            getjobs = {
              name = job,
              grade = grade,
              description = Config.Descriptions[job] or "No description available", -- Fallback for description
              icon = Config.FontAwesomeIcons[job] or "fa-question", -- Fallback for icons
              label = QBCore.Shared.Jobs[job].label or "Unknown Job", -- Fallback for label
              gradeLabel = QBCore.Shared.Jobs[job].grades[tostring(grade)] and QBCore.Shared.Jobs[job].grades[tostring(grade)].name or "Unknown Grade", -- Fallback for grade
              salary = QBCore.Shared.Jobs[job].grades[tostring(grade)] and QBCore.Shared.Jobs[job].grades[tostring(grade)].payment or 0, -- Fallback for salary
            }
            if Config.WhitelistJobs[job] then
                whitelistedjobs[#whitelistedjobs+1] = getjobs
            else
                civjobs[#civjobs+1] = getjobs
            end
          else
            print("Error: Job " .. tostring(job) .. " not found in QBCore.Shared.Jobs") -- Debugging information
          end
        end
        multijobs = {
            whitelist = whitelistedjobs,
            civilian = civjobs,
        }
        p:resolve(multijobs)
    end)
    return Citizen.Await(p)
end

local function OpenUI()
    -- local timeSince = (GetGameTimer() - last_used)/1000
    -- local rounded = (5 - math.floor(timeSince + 0.5))
    -- if timeSince <= 5 then Core.UI.Notify(string.format("SPAM CONTROL : Please try again in %s seconds", rounded)) return false; end 
    -- last_used = GetGameTimer()
    local job = QBCore.Functions.GetPlayerData().job
    SetNuiFocus(true,true)
    SendNUIMessage({
        action = 'sendjobs',
        activeJob = job["name"], 
        onDuty = job["onduty"],
        jobs = GetJobs(),
        side = Config.Side,
    })
end

RegisterNUICallback('selectjob', function(data, cb)
    local timeSince = (GetGameTimer() - last_used)/1000
    local rounded = (5 - math.floor(timeSince + 0.5))
    if timeSince <= 5 then Core.UI.Notify(string.format("SPAM CONTROL : Please try again in %s seconds", rounded)) cb("spam") return false; end 
    last_used = GetGameTimer()
    Core.UI.Notify(string.format("You have set your job to %s with rank: %s", QBCore.Shared.Jobs[data["name"]].label, data['grade']))
    TriggerServerEvent("srp_multijob:changeJob", data["name"], data["grade"])
    local onDuty = false
    if data["name"] ~= "police" then onDuty = QBCore.Shared.Jobs[data["name"]].defaultDuty end
    cb({onDuty = onDuty})
end)

RegisterNUICallback('closemenu', function(data, cb)
    cb({})
    SetNuiFocus(false,false)
end)

RegisterNUICallback('removejob', function(data, cb)
    local timeSince = (GetGameTimer() - last_used)/1000
    local rounded = (5 - math.floor(timeSince + 0.5))
    if timeSince <= 5 then Core.UI.Notify(string.format("SPAM CONTROL : Please try again in %s seconds", rounded)) cb("spam") return false; end 
    last_used = GetGameTimer()
    TriggerServerEvent("srp_multijob:removeJob", data["name"], data["grade"])
    local jobs = GetJobs()
    jobs[data["name"]] = nil
    cb(jobs)
end)

RegisterNUICallback('toggleduty', function(data, cb)
    local timeSince = (GetGameTimer() - last_used)/1000
    local rounded = (5 - math.floor(timeSince + 0.5))
    if timeSince <= 5 then Core.UI.Notify(string.format("SPAM CONTROL : Please try again in %s seconds", rounded)) cb("spam") return false; end 
    last_used = GetGameTimer()
    cb({})
    local job = QBCore.Functions.GetPlayerData().job.name
    if Config.DenyDuty[job] then
        TriggerEvent("QBCore:Notify", 'Not allowed to use this station for clock-in.', 'error')
        return
    end
    
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    SendNUIMessage({
        action = 'updatejob',
        name = JobInfo["name"],
        label = JobInfo["label"],
        onDuty = JobInfo["onduty"],
        gradeLabel = JobInfo["grade"].name,
        grade = JobInfo["grade"].level,
        salary = JobInfo["payment"],
        isWhitelist = Config.WhitelistJobs[JobInfo["name"]] or false,
        description = Config.Descriptions[JobInfo["name"]] or "",
        icon = Config.FontAwesomeIcons[JobInfo["name"]] or "",
    })
end)

RegisterCommand("jobmenu", OpenUI)

RegisterKeyMapping('jobmenu', "Show Job Management", "keyboard", "J")

TriggerEvent('chat:removeSuggestion', '/jobmenu')
