local Rocky = script:FindFirstAncestor("Rocky")
local Thread = require(Rocky.utils.Thread)
local Loading = require(Rocky.utils.maidv)
local LoadingMaid = Loading:GetMaid()

local Notifications = {}

function Notifications:Notify(M,R,G,B)
    spawn(function()
		repeat wait() until not NOTIFY_1
		local NOTIFY_SETH = game.CoreGui.Rocky2U.notify_seth:Clone()
		if NOTIFY_SETH then
			NOTIFY_SETH.notify[''].BackgroundColor3 = C3(R, G, B)
			NOTIFY_SETH.notify.text.Text = ' ' .. M
			repeat wait() until not NOTIFY_1
			NOTIFY_1 = true
			wait(0.5)
			NOTIFY_SETH.notify:TweenPosition(UDim2.new(0, 0, 0.6, 0), 'InOut', 'Quad', 0.4, false) wait(0.5)
			wait(0.5)
			repeat wait() until not NOTIFY_2
			NOTIFY_1 = false
			NOTIFY_SETH.notify:TweenPosition(UDim2.new(0, 0, 0.6, -40), 'InOut', 'Quad', 0.4, false) wait(0.5)
			wait(0.5)
			NOTIFY_2 = true
			wait(2.5)
			NOTIFY_SETH.notify:TweenPosition(UDim2.new(0, -225, 0.6, -40), 'InOut', 'Quad', 0.4, false) wait(0.5)
		end
		wait(1)
		NOTIFY_SETH:destroy()
		NOTIFY_2 = false
	end)
end

return Notifications
