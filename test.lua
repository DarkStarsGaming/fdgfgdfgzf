local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1006035777622380575/Akza35WShoBVxMK63RdVZNA92WqltJKCimx7M67A7Mu4yG9lzH3m7Z9K9H4mF8nN6c0t"
local data = {
   ["content"] = "Hello, <@972812238522040321> one of your accounts has disconnected from the server.",
   ["embeds"] = {
       {
           ["title"] = "**Account Disconnected**",
           ["description"] = "Username: \n> ** " .. game.Players.LocalPlayer.Name.. "**\n\nUser ID: \n> ** " .. game.Players.LocalPlayer.UserId.. "**\n\nExploit: \n> ** "..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
