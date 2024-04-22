RegisterCommand("fixcar", function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        SetVehicleFixed(vehicle)
        SetVehicleDeformationFixed(vehicle)
        SetVehicleUndriveable(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true)
        NotifySuccess("Auto zostało naprawione.")
    else
        NotifyError("Musisz być w pojeździe, aby go naprawić.")
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
        NotifySuccess("Auto zostało naprawione.")
    else
        NotifyError("Musisz być w pojeździe, aby go naprawić.")
    end
end)

function NotifySuccess(message)
    TriggerEvent('dopeNotify2:Alert', "FixCar", message, 5000, "success")
end

function NotifyError(message)
    TriggerEvent('dopeNotify2:Alert', "FixCar", message, 5000, "error")
end
