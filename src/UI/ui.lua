local Rocky = script:FindFirstAncestor("Rocky")

local UI = {}

function UI:Init()
    local UI = Rocky.Rocky:Clone()
    UI.Parent = game.CoreGui
end

return UI