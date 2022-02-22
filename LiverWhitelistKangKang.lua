local Old = game:GetService("RbxAnalyticsService"):GetClientId()
if game:GetService("RbxAnalyticsService"):GetClientId() ~= Old then
    while true do end
end

local key = _G.Key
if _G.Key == nil then
    game.Players.LocalPlayer:Kick("à¸„à¸¸à¸“à¹„à¸¡à¹ˆà¸¡à¸µà¸„à¸µà¸¢à¹Œ")
end

local check = "https://liverhub1478.000webhostapp.com/check.php?key=" .. key

if game:HttpGet(check) == "Whitelisted" then
    key = Old
    local checkop = "https://liverhub1478.000webhostapp.com/CheckHwid.php?key=" .. key
    if game:HttpGet(checkop) == "Whitelisted" then
        loadstring(game:HttpGet("https://liverhub1478.000webhostapp.com/script.lua"))()
    else
        setclipboard(Old)
        game.Players.LocalPlayer:Kick("à¹ˆà¸à¹‡à¸­à¸› Hwid à¸ªà¸³à¹€à¸£à¹‡à¸ˆ - à¸—à¸±à¸à¸«à¸²à¹à¸­à¸”à¸¡à¸´à¸™à¸”à¹ˆà¸§à¸™!")
    end
else
game.Players.LocalPlayer:Kick("à¸„à¸¸à¸“à¹„à¸¡à¹ˆà¸¡à¸µà¸„à¸µà¸¢à¹Œ")
end
