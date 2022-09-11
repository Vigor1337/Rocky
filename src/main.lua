local Rocky = script:FindFirstAncestor("Rocky")
local ST = os.clock()
local UI = require(Rocky.UI.ui)
local Noti = require(Rocky.UI.notify)

local Main = {}

function Main:Init()
    UI:Init()
    Noti:Notify('Hello, ' .. game:GetService("Players").LocalPlayer.Name, 255, 255, 255)
    Noti:Notify('Script loaded!', 50, 255, 50)
end

return Main
