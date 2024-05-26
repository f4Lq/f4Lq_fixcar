ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterCommand("fixcar", function(source)
    fixcar()
end, false)

function fixcar()

ESX.TriggerServerCallback('f4Lq_fixcar:getUsergroup', function(group)
    playergroup = group
    
    if playergroup == 'admin' or playergroup == 'superadmin' or playergroup == 'mod' or playergroup == '_dev' then
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        SetVehicleFixed(vehicle)
        SetVehicleDeformationFixed(vehicle)
        SetVehicleUndriveable(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true)
        NotifySuccess("Auto zostało <b><span style='color:green'>naprawione.</span></b>")
    else
        NotifyError("<b><span style='color:red'>Musisz być w pojeździe, aby go naprawić.</span></b>")
    end
end
end)
end


function NotifySuccess(message)
    TriggerEvent('f4LqNotify:Alert', "FIXCAR", message, 5000, "car")
end

function NotifyError(message)
    TriggerEvent('f4LqNotify:Alert', "FIXCAR", message, 5000, "car")
end
