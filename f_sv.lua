RegisterServerEvent('fsv:coordis:laitappa')
AddEventHandler('fsv:coordis:laitappa', function(koordittossaja, suunta, nimieikai)
laitappa(3093126, "".. nimieikai .. " Requestasi Coordinsa",  "Coordit : **" .. koordittossaja .. "**\nSuunta : **" .. suunta .. "**")
end)


function laitappa(color, title, message, footer)
    local hookki ="Webhook Tähän!"
    local embed = {
          {
              ["color"] = color,
              ["title"] = title,
              ["description"] = message,
              ["footer"] = {
              ["text"] = "Coordi Logit By Frosty",
              ['icon_url'] = 'https://cdn.discordapp.com/attachments/695291671734386820/921905638911643718/Esx_Scriptit_1.png',
              },
          }
      }

    PerformHttpRequest(hookki, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end

