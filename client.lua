ESX = nil

local ped = PlayerPedId()

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)



Citizen.CreateThread(function()
    while true do
       local playerCoords = GetEntityCoords(PlayerPedId())
       local distance = GetDistanceBetweenCoords(playerCoords, v.x, v.y, v.z, true)
       local beds = GetClosestObjectOfType(pos.x, pos.y, pos.z, 1.0, Config.Beds[i], false, false, false)
			 if dist < 1.3 then
         ESX.ShowHelpNotification('Press'..INPUT_CONTEXT..'to lay down')
       elseif dist > 1.3 then
         Citizen.Wait(10)
          end
       end
    end
end)
