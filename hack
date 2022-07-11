-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TeleportAll = Instance.new("TextButton")
local InfJump = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local SpeedFast = Instance.new("TextButton")
local SpeedNormal = Instance.new("TextButton")
local TP = Instance.new("TextButton")
local Top = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local InfiniteJumpEnabled = true
local player = game.Players.LocalPlayer

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
ScrollingFrame.Position = UDim2.new(0.303777963, 0, 0.152777776, 0)
ScrollingFrame.Size = UDim2.new(0, 627, 0, 449)
ScrollingFrame.Active = true
ScrollingFrame.Draggable = true

TeleportAll.Name = "TeleportAll"
TeleportAll.Parent = ScrollingFrame
TeleportAll.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
TeleportAll.Position = UDim2.new(0.680327892, 0, 0.211027235, 0)
TeleportAll.Size = UDim2.new(0, 156, 0, 50)
TeleportAll.Font = Enum.Font.SourceSans
TeleportAll.Text = "Teleport All"
TeleportAll.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportAll.TextScaled = true
TeleportAll.TextSize = 14.000
TeleportAll.TextWrapped = true
TeleportAll.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do
		v.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
	end
end)


InfJump.Name = "InfJump"
InfJump.Parent = ScrollingFrame
InfJump.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
InfJump.Position = UDim2.new(0, 0, 0.0807553828, 0)
InfJump.Size = UDim2.new(0, 156, 0, 50)
InfJump.Font = Enum.Font.SourceSans
InfJump.Text = "Inf Jump"
InfJump.TextColor3 = Color3.fromRGB(0, 0, 0)
InfJump.TextScaled = true
InfJump.TextSize = 14.000
InfJump.TextWrapped = true
InfJump.MouseButton1Down:connect(function()
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end)

NoClip.Name = "No Clip"
NoClip.Parent = ScrollingFrame
NoClip.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
NoClip.Position = UDim2.new(0, 0, 0.211027235, 0)
NoClip.Size = UDim2.new(0, 156, 0, 50)
NoClip.Font = Enum.Font.SourceSans
NoClip.Text = "No Clip"
NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
NoClip.TextScaled = true
NoClip.TextSize = 14.000
NoClip.TextWrapped = true

SpeedFast.Name = "SpeedFast"
SpeedFast.Parent = ScrollingFrame
SpeedFast.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
SpeedFast.Position = UDim2.new(0.680327892, 0, 0.148781508, 0)
SpeedFast.Size = UDim2.new(0, 156, 0, 50)
SpeedFast.Font = Enum.Font.SourceSans
SpeedFast.Text = "Speed: Fast"
SpeedFast.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedFast.TextScaled = true
SpeedFast.TextSize = 14.000
SpeedFast.TextWrapped = true
SpeedFast.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

SpeedNormal.Name = "SpeedNormal"
SpeedNormal.Parent = ScrollingFrame
SpeedNormal.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
SpeedNormal.Position = UDim2.new(0, 0, 0.153411135, 0)
SpeedNormal.Size = UDim2.new(0, 156, 0, 50)
SpeedNormal.Font = Enum.Font.SourceSans
SpeedNormal.Text = "Speed: Normal"
SpeedNormal.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedNormal.TextScaled = true
SpeedNormal.TextSize = 14.000
SpeedNormal.TextWrapped = true
SpeedNormal.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

TP.Name = "TP"
TP.Parent = ScrollingFrame
TP.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
TP.Position = UDim2.new(0.680327892, 0, 0.0807553679, 0)
TP.Size = UDim2.new(0, 156, 0, 50)
TP.Font = Enum.Font.SourceSans
TP.Text = "Click To Teleport"
TP.TextColor3 = Color3.fromRGB(0, 0, 0)
TP.TextScaled = true
TP.TextSize = 14.000
TP.TextWrapped = true
TP.MouseButton1Down:connect(function()
	mouse = game.Players.LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Click Teleport"
	tool.Activated:connect(function()
		local pos = mouse.Hit+Vector3.new(0,2.5,0)
		pos = CFrame.new(pos.X,pos.Y,pos.Z)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
	end)
	tool.Parent = game.Players.LocalPlayer.Backpack

end)

Top.Name = "Top"
Top.Parent = ScrollingFrame
Top.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
Top.Size = UDim2.new(0, 613, 0, 50)
Top.Font = Enum.Font.SourceSans
Top.Text = "Game Gui by #alfonsop123#3607 V0.5 (Currently noclip, fly do not work!)"
Top.TextColor3 = Color3.fromRGB(0, 0, 0)
Top.TextScaled = true
Top.TextSize = 14.000
Top.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = ScrollingFrame
Fly.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
Fly.Position = UDim2.new(0, 0, 0.275199831, 0)
Fly.Size = UDim2.new(0, 156, 0, 50)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(0, 0, 0)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true
