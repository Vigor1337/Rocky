local Rocky = script:FindFirstAncestor("Rocky")
local ST = os.clock()
local UI = require(Rocky.UI.ui)
local CMDBar = require(Rocky.UI.cmdbar)
local Noti = require(Rocky.UI.notify)

local Main = {}

function Main:Init()
    UI:Init()
    CMDBar:Init()
    Noti:Notify('Hello, ' .. game:GetService("Players").LocalPlayer.Name, 255, 255, 255)
    Noti:Notify('Script loaded!', 50, 255, 50)
end

return Main
