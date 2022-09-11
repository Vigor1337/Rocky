local Rocky = script:FindFirstAncestor("Rocky")
local ST = os.clock()
local UI = require(Rocky.UI.notify)

local Main = {}

local notify = function(Message)
    UI:Notify(Message)
end

function Main:Init()
    UI:Init()    
    notify("How!!")
end


return Main