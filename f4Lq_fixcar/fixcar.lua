RegisterCommand("fixcar", function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        SetVehicleFixed(vehicle)
        SetVehicleDeformationFixed(vehicle)
        SetVehicleUndriveable(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true)
        NotifySuccess("The car has been <b><span style='color:green'>repaired.</span></b>")
    else
        NotifyError("<b><span style='color:red'>You must be in the vehicle to repair it.</span></b>")
    end
end, false)

TriggerEvent('es:addGroupCommand', 'fixcar', 'admin', function(source, args, user)
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        SetVehicleFixed(vehicle)
        SetVehicleDeformationFixed(vehicle)
        SetVehicleUndriveable(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true)
        NotifySuccess("The car has been <b><span style='color:green'>repaired.</span></b>")
    else
        NotifyError("<b><span style='color:red'>You must be in the vehicle to repair it.</span></b>")
    end
end)

function NotifySuccess(message)
    TriggerEvent('f4LqNotify:Alert', "FixCar", message, 5000, "success")
end

function NotifyError(message)
    TriggerEvent('f4LqNotify:Alert', "FixCar", message, 5000, "error")
end
