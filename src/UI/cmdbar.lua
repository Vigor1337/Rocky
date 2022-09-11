local Rocky = script:FindFirstAncestor("Rocky")
local Bar = {}
local Commands = {}
local MOUSE = game:GetService("Players").LocalPlayer:GetMouse()

function Bar:Init()
    CMDBAR = game.CoreGui.Rocky["cmdbar_seth"].bar
    local GOING_IN = true
    CMDBAR.Changed:connect(function()
        if CMDBAR.Text ~= 'press ; to execute a command' and CMDBAR.Focused and not GOING_IN then
            if CMDBAR.Text ~= '' then
                if not CMDBAR.Text:find(' ') then
                    CMDBAR.commands.Visible = true
                    CMDBAR.commands:ClearAllChildren()
                    CMDBAR.commands.CanvasSize = UDim2.new(0, 0, 0, 0)
                    local Y_COMMANDS = 0
                    for i,v in pairs(Commands) do
                        if v.N:find(CMDBAR.Text) then
                            CMDBAR.commands:TweenSize(UDim2.new(1, 0, 1, -200), 'InOut', 'Quad', 0.2, true)
                            CMDBAR.commands.CanvasSize = CMDBAR.commands.CanvasSize + UDim2.new(0, 0, 0, 20)
                            local COMMANDS_C = CMDBAR.commands_ex:Clone()
                            COMMANDS_C.Position = UDim2.new(0, 0, 0, Y_COMMANDS)
                            COMMANDS_C.Visible = true
                            COMMANDS_C.Text = ' ' .. v.D
                            COMMANDS_C.Parent = CMDBAR.commands
                            Y_COMMANDS = Y_COMMANDS + 20
                        end
                    end
                end
            else
                CMDBAR.commands:TweenSize(UDim2.new(1, 0, 0, 0), 'InOut', 'Quad', 0.2, true)
                CMDBAR.commands:ClearAllChildren()
                CMDBAR.commands.CanvasSize = UDim2.new(0, 0, 0, 0)
            end
        end
    end)

    CMDBAR.FocusLost:connect(function()
        GOING_IN = true
        if CMDBAR.Text ~= '' then
            spawn(function()
                --ECOMMAND(CMDBAR.Text, LP)
            end)
        end
        CMDBAR.commands:ClearAllChildren()
        CMDBAR.commands.CanvasSize = UDim2.new(0, 0, 0, 0)
        CMDBAR.commands:TweenSize(UDim2.new(1, 0, 0, 0), 'InOut', 'Quad', 0.2, true)
        CMDBAR:TweenPosition(UDim2.new(0, -225, 1, -50), 'InOut', 'Quad', 0.5, true)
    end)
    
    MOUSE.KeyDown:connect(function(K)
        if K:byte() == 59 then
            GOING_IN = false
            CMDBAR:TweenPosition(UDim2.new(0, 0, 1, -50), 'InOut', 'Quad', 0.5, true)
            CMDBAR:CaptureFocus()
        end
    end)
end

return Bar
