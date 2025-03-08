local vehicle = GetVehiclePedIsIn(PlayerPedId())
local inVehicle = false
local closed = GetVehicleDoorAngleRatio(vehicle, 1) < 0.1

RegisterCommand("WarningLights", function()
    print("Command run")
    CreateThread(function()
        while inVehicle == false do
            Wait(20)
            print("false")
    
            if vehicle ~= 0 then -- In vehicle
                inVehicle = true
                print("In vehicle")
                if closed then 
                    print("door closed")
                    if IsVehicleExtraTurnedOn(vehicle, light) then -- Off
                        print("Extras off1 ")
                        SetVehicleExtra(vehicle, 1, 1)
                        SetVehicleExtra(vehicle, 2, 1)
                    elseif IsVehicleExtraTurnedOn(vehicle, light) == false then -- On
                        print("Extras on1 ")
                        SetVehicleExtra(vehicle, 1, 0)
                        SetVehicleExtra(vehicle, 2, 0)
                    end
                elseif not closed then 
                    print("door open")
                    if IsVehicleExtraTurnedOn(vehicle, light) then -- Off
                        print("Extras off2 ")
                        SetVehicleExtra(vehicle, 1, 1)
                        SetVehicleExtra(vehicle, 2, 1)
                    elseif IsVehicleExtraTurnedOn(vehicle, light) == false then -- On
                        print("Extras on2 ")
                        SetVehicleExtra(vehicle, 1, 0)
                        SetVehicleExtra(vehicle, 2, 0)
                    end
                end  
            end
        end
    end) 
end, false)