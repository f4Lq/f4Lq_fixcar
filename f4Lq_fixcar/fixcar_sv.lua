ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('f4Lq_fixcar:getUsergroup', function(source, cb)
  local xPlayer = ESX.GetPlayerFromId(source)
  local group = xPlayer.getGroup()
  cb(group)
end)