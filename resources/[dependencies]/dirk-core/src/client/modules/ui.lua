



Core.UI = {
  AwaitingOptionResponse = false,
  ShowHelpNotification = function(msg)
    AddTextEntry(GetCurrentResourceName(), msg)

    if thisFrame then
      DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
    else
      if beep == nil then beep = true end
      BeginTextCommandDisplayHelp(GetCurrentResourceName())
      EndTextCommandDisplayHelp(0, false, false, duration or -1)
    end
  end,

  DrawText3D = function(x,y,z,scl_factor,text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov * scl_factor
    if onScreen then
        SetTextScale(0.0, scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
  end,

  Notify = function(msg, type, time)
    if Config.Framework == "es_extended" then
      ESX.ShowNotification(msg)
    elseif Config.Framework == "qb-core" then
      QBCore.Functions.Notify(msg)
    elseif Config.Framework == "vrp" then 
      TriggerEvent('Notify',"success",msg,5000)
    end
  end,

  OpenLink = function(link)
    SendNUIMessage({
      type        = "openLink",
      link        = link,
    })
  end,
  
  CopyToClipboard = function(val)
    SendNUIMessage({
      type        = "copy",
      value        = val,
    })
  end,

  SelectMenu = function(data)
    Core.UI.AwaitingOptionResponse = "Waiting"
    SetNuiFocus(true,true)
    SendNUIMessage({
      type = "openSelectMenu",
      title = data.title or "Select Menu",
      icon = data.icon or "fas fa-info-circle",
      items = data.items,
      multi = data.multi or false,
      canCancel = data.canCancel or false,
    })
    while Core.UI.AwaitingOptionResponse == "Waiting" do Wait(250); end
    return Core.UI.AwaitingOptionResponse
  end,

  ScreenToWorld = function(iter)
    local entityType,entitySubType
    local camRot = GetGameplayCamRot(0)
    local camPos = GetGameplayCamCoord()
    local posX = 0.5
    local posY = 0.5
    local cursor = vector2(posX, posY)
    local cam3DPos, forwardDir = Core.UI.ScreenRelToWorld(camPos, camRot, cursor)
    local direction = camPos + forwardDir * 50.0
    local rayHandle = StartShapeTestRay(cam3DPos.x,cam3DPos.y,cam3DPos.z, direction.x,direction.y,direction.z, (iter and -1 or 30), 0, 0)
    local _, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)
    if entityHit <= 0 and not iter then
      return Core.UI.ScreenToWorld(true)
    end
    return hit, endCoords, entityHit
  end,

  CursorToWorld = function(iter)
    local entityType,entitySubType
    local camRot = GetGameplayCamRot(0)
    local camPos = GetGameplayCamCoord()
    local posX = GetControlNormal(0, 239)
    local posY = GetControlNormal(0, 240)
    local cursor = vector2(posX, posY)
    local cam3DPos, forwardDir = Core.UI.ScreenRelToWorld(camPos, camRot, cursor)
    local direction = camPos + forwardDir * 50.0
    local rayHandle = StartShapeTestRay(cam3DPos.x,cam3DPos.y,cam3DPos.z, direction.x,direction.y,direction.z, (iter and -1 or 30), 0, 0)
    local _, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)
    if entityHit <= 0 and not iter then
      return Core.UI.CursorToWorld(true)
    end
    return hit, endCoords, entityHit
  end,

  ScreenRelToWorld = function(camPos, camRot, cursor)
    local camForward = Core.UI.RotationToDirection(camRot)
    local rotUp = vector3(camRot.x + 1.0, camRot.y, camRot.z)
    local rotDown = vector3(camRot.x - 1.0, camRot.y, camRot.z)
    local rotLeft = vector3(camRot.x, camRot.y, camRot.z - 1.0)
    local rotRight = vector3(camRot.x, camRot.y, camRot.z + 1.0)
    local camRight = Core.UI.RotationToDirection(rotRight) - Core.UI.RotationToDirection(rotLeft)
    local camUp = Core.UI.RotationToDirection(rotUp) - Core.UI.RotationToDirection(rotDown)
    local rollRad = -(camRot.y * math.pi / 180.0)
    local camRightRoll = camRight * math.cos(rollRad) - camUp * math.sin(rollRad)
    local camUpRoll = camRight * math.sin(rollRad) + camUp * math.cos(rollRad)
    local point3DZero = camPos + camForward * 1.0
    local point3D = point3DZero + camRightRoll + camUpRoll
    local point2D = Core.UI.World3DToScreen2D(point3D)
    local point2DZero = Core.UI.World3DToScreen2D(point3DZero)
    local scaleX = (cursor.x - point2DZero.x) / (point2D.x - point2DZero.x)
    local scaleY = (cursor.y - point2DZero.y) / (point2D.y - point2DZero.y)
    local point3Dret = point3DZero + camRightRoll * scaleX + camUpRoll * scaleY
    local forwardDir = camForward + camRightRoll * scaleX + camUpRoll * scaleY
    return point3Dret, forwardDir
  end,

  RotationToDirection = function(rotation)
    local x = rotation.x * math.pi / 180.0
    local z = rotation.z * math.pi / 180.0
    local num = math.abs(math.cos(x))
    return vector3((-math.sin(z) * num), (math.cos(z) * num), math.sin(x))
  end,

  World3DToScreen2D = function(pos)
    local _, sX, sY = GetScreenCoordFromWorldCoord(pos.x, pos.y, pos.z)
    return vector2(sX, sY)
  end,

  -- Keycode UI
  Keycode     = function(code, params)
    KeyCodeResponse = nil
    SetNuiFocus(true,true)
    SendNUIMessage({
      type = "openKeyPad",
      code = code,
      params = params or {},
    })
    while KeyCodeResponse == nil do Wait(250); end
    return KeyCodeResponse
  end,

  ProgressBar = function(s, cb)
    if Config.ProgressBar == "ox_lib" then
      local bar = lib.progressBar({
        duration = s.time,
        label = s.label,
        useWhileDead = false,
        canCancel = s.canCancel,
        disable = {
          move = false,
          car = s.disableControl,
          combat = s.disableControl,
        },
      })
      if cb then cb(bar); end
    elseif Config.ProgressBar == "progressbar" then
      local finished = false
      QBCore.Functions.Progressbar('Changeme', s.label, s.time, false, s.canCancel, {
        disableMovement = false,
        disableCarMovement = s.disableControl,
        disableMouse = false,
        disableCombat = s.disableControl,
          }, {}, {}, {}, function() 
          finished = true
          if cb then cb(true); end
          end, function()
          finished = true
          if cb then cb(false); end
      end)
      while not finished do Wait(0); end 
    elseif Config.ProgressBar == "rprogress" then 
      local finished = false 
      exports['rprogress']:Custom({
        Async           = true,
        Duration        = s.time,
        Label           = s.label,
        canCancel       = s.canCancel,
        DisableControls = s.disableControl,
        onComplete = function(cancelled)
          if cancelled then cb(false); else cb(true); end
          finished = true
        end,
      })
      while not finished do Wait(0); end 
    end
  end,
  
  SimpleNotification = function(data)
    SendNUIMessage({
      type = "DisplayNotification",
      data = {
        ID      = data.ID or string.format("%s:%s", GetCurrentResourceName(), GetGameTimer()),
        Title   = data.Title or "Notification",
        Message = data.Message or "No Message",
        Icon    = data.Icon or "fas fa-info-circle",
        Time    = data.Time or 5,
        NoTimer = data.NoTimer or false,
        Position = Config.NotifyPos or "topCenter"
      },
    })
  end,

  DeleteSimpleNotification = function(id)
    SendNUIMessage({
      type = "RemoveNotification",
      ID = id,
    })
  end,

  Current   = {},
  AdvancedHelpNotif = function(name, items)
    local now = GetGameTimer()
    if not Core.UI.Current[name] then 
      Core.UI.Current[name] = now; 
      SetNuiFocusKeepInput(true)
      SendNuiMessage(json.encode({
        type    = "show",
        name    = name,
        message = items,
      }))
    else
      Core.UI.Current[name] = now; 
    end
  end,

  Hide = function(name)
    SendNuiMessage(json.encode({
      type = "hide",
      name = name,
    }))
    SetNuiFocusKeepInput(false)
  end,

  PositionEntity = function(_type, entity)
    local model = GetHashKey(entity)
    -- if not IsModelInCdimage(model) then Core.UI.Notify("Tried to use an invalid model in entity placer") return false; end
    local startTime = GetGameTimer()
    while not HasModelLoaded(model) do
      RequestModel(model)
      local now = GetGameTimer()
      if now - startTime > 15000 then
        Core.UI.Notify("Failed to load model in entity placer")
        return false
      end 
      Wait(0) 
    end

    if _type == 'object' then 
      thisObject = CreateObject(model, 0,0,0,true,true,false)
    elseif _type == 'vehicle' then
      thisObject = CreateVehicle(model, 0,0,0,0,true,true,false)
    elseif _type == 'ped' then
      thisObject = CreatePed(4, model, 0,0,0,0,true,true,false)
      SetEntityInvincible(thisObject, true)
      SetBlockingOfNonTemporaryEvents(thisObject, true)
    end

    SetEntityAlpha(thisObject, 150, false)
    SetEntityCollision(thisObject, false, false)

    while true do 
      
      local ply = PlayerPedId()
      local plyCoords = GetEntityCoords(ply)
      local hit, testCoords, entityHit = Core.UI.ScreenToWorld(true)
      local rotation = GetEntityRotation(thisObject).z
      if (testCoords ~= vector3(0,0,0) and entityHit ~= ply and (#(plyCoords - testCoords) <= 10.0)) then
        endCoords = testCoords 
        SetEntityVisible(thisObject, true)
        DrawSphere(endCoords.x,endCoords.y,endCoords.z, 0.1, 0,255,0, 0.7)
        SetEntityCoords(thisObject, endCoords.x,endCoords.y,endCoords.z + 0.05)
      else
        SetEntityVisible(thisObject, false)
      end
        Core.UI.AdvancedHelpNotif("entityPlacer", {
          {
            label = "Place Object", 
            key   = "g"
          },
          {
            label = "Rotate Right",
            key   = "➡️"
          },
          {
            label = "Rotate Left",
            key   = "⬅️"
          },
          {
            label = "Cancel Placement",
            key   = "q"
          }
        })
      

        

      DisableControlAction(0,47)
      DisableControlAction(0,74)
      DisableControlAction(0,105)
      DisableControlAction(0,172)
      DisableControlAction(0,173)
      DisableControlAction(0,85)
      

      if IsDisabledControlJustPressed(0, 47) then 
        local objectCoords = GetEntityCoords(thisObject)
        
        local objectRotation = GetEntityRotation(thisObject)
        local heading        = GetEntityHeading(thisObject)
        
        DeleteEntity(thisObject)
        return {
          coords = objectCoords,
          rotation = objectRotation,
          heading   = heading, 
        }
      elseif IsDisabledControlPressed(0, 175) then
        rotation = rotation + 0.5
        SetEntityRotation(thisObject, 0.0,0.0,rotation, 0, true)
      elseif IsDisabledControlPressed(0, 174) then
        rotation = rotation - 0.5
        SetEntityRotation(thisObject, 0.0,0.0,rotation, 0, true)
      elseif IsDisabledControlJustPressed(0, 85) then
        DeleteEntity(thisObject)
        return false
      end
      Wait(0)
    end
  end,


}

Citizen.CreateThread(function()
  while true do
    local wait_time = 50
      for k,v in pairs(Core.UI.Current) do 
        if k then wait_time = 0; end
        if (GetGameTimer() - v) >= 300 then
          Core.UI.Current[k] = nil
          Core.UI.Hide(k)
        end
      end
    Wait(wait_time)
  end
end)

RegisterNetEvent(string.format("%s:Notify", GetCurrentResourceName()), function(msg, type, time)
  Core.UI.Notify(msg, type, time)
end)

RegisterNetEvent("Dirk-Core:UI:SimpleNotify", function(data)
  Core.UI.SimpleNotification(data)
end)

RegisterNetEvent("Dirk-Core:UI:RemoveSimpleNotify", function(id)
  Core.UI.DeleteSimpleNotification(id)
end)

RegisterNUICallback("keyCodeResponse", function(data,cb)
  KeyCodeResponse = data.correct
  SetNuiFocus(false,false)
end)

RegisterCommand("Dirk-Core:EntityPlacer", function(source,args)
  if not args[1] then Core.UI.Notify("No entity type specified") return false; end
  if args[1] ~= "object" and args[1] ~= "vehicle" and args[1] ~= "ped" then Core.UI.Notify("Invalid entity type specified") return false; end
  if not args[2] then Core.UI.Notify("No entity specified") return false; end
  local ret = Core.UI.PositionEntity(args[1], args[2])
  local vec = string.format("vector4(%s, %s, %s, %s)", ret.coords.x,ret.coords.y,ret.coords.z,ret.heading)
  Core.UI.CopyToClipboard(vec)
end, false)

TriggerEvent('chat:addSuggestion', '/Dirk-Core:EntityPlacer', 'Place an entity in the world and get the position back', {
  { name="type", help="The type of entity to place (object, vehicle, ped)" },
  { name="entity", help="The model to place" },
})

RegisterNUICallback("selectMenuReturn", function(data,cb)
  Core.UI.AwaitingOptionResponse = data
  SetNuiFocus(false,false)
end)

RegisterNUICallback("closeSelectMenu", function(data,cb)
  Core.UI.AwaitingOptionResponse = false
  SetNuiFocus(false,false)
end)

-- RegisterCommand("selectMenu", function(source,args)
--   local result = Core.UI.SelectMenu({
--     title = "Test Menu",
--     icon = "fas fa-info-circle",
--     multi = true, 
--     canCancel = true,
--     items = {
--       {label =  "Super Rare", icon =  "fas fa-exclamation-triangle", value =  "test", selected = true}
--     }
--   })
-- end)