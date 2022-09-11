local Rocky = script:FindFirstAncestor("Rocky")

local UI = {}

function UI:Init()
    local UI = Rocky.Rocky:Clone()
    UI["seth_main"].Enabled = false
    UI.Parent = game.CoreGui
    UI["cmdbar_seth"].bar:TweenPosition(UDim2.new(0, 0, 1, -50), 'InOut', 'Quad', 0.5, true)
end

return UI
