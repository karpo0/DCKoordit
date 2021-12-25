RegisterCommand('coordis', function() -- Registers the command which you could change if you wanted to!
    TriggerEvent('fcl:coordis')
end)

RegisterNetEvent('fcl:coordis')
AddEventHandler('fcl:coordis', function()
    Citizen.CreateThread(function()                             
        while true do
                local nimieikai = GetPlayerName(PlayerId())
                local koordittossaja = GetEntityCoords(GetPlayerPed(-1))   
                local suunta = GetEntityHeading(GetPlayerPed(-1)) 
                TriggerServerEvent('fsv:coordis:laitappa', koordittossaja, suunta, nimieikai)
                break
           end
       end)
   end)                 
