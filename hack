-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Top = Instance.new("TextLabel")
local NoClip = Instance.new("TextButton")
local TP = Instance.new("TextButton")
local SpeedNormal = Instance.new("TextButton")
local SpeedFast = Instance.new("TextButton")
local InfJump = Instance.new("TextButton")
local InfiniteJumpEnabled = true
local player = game.Players.LocalPlayer

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
Frame.Position = UDim2.new(0.357803822, 0, 0.233024701, 0)
Frame.Size = UDim2.new(0, 488, 0, 346)
Frame.Active = true
Frame.Draggable = true

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Top.Position = UDim2.new(0, 0, -0.144508675, 0)
Top.Size = UDim2.new(0, 488, 0, 50)
Top.Font = Enum.Font.SourceSans
Top.Text = "Game Gui by #alfonsop123#3607"
Top.TextColor3 = Color3.fromRGB(0, 0, 0)
Top.TextScaled = true
Top.TextSize = 14.000
Top.TextWrapped = true

NoClip.Name = "No Clip"
NoClip.Parent = Frame
NoClip.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
NoClip.Position = UDim2.new(0, 0, 0.505780339, 0)
NoClip.Size = UDim2.new(0, 156, 0, 50)
NoClip.Font = Enum.Font.SourceSans
NoClip.Text = "No Clip"
NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
NoClip.TextScaled = true
NoClip.TextSize = 14.000
NoClip.TextWrapped = true


TP.Name = "TP"
TP.Parent = Frame
TP.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
TP.Position = UDim2.new(0.680327892, 0, 0.0606936403, 0)
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


SpeedNormal.Name = "SpeedNormal"
SpeedNormal.Parent = Frame
SpeedNormal.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
SpeedNormal.Position = UDim2.new(0, 0, 0.28612718, 0)
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

SpeedFast.Name = "SpeedFast"
SpeedFast.Parent = Frame
SpeedFast.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
SpeedFast.Position = UDim2.new(0.680327892, 0, 0.28612718, 0)
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


InfJump.Name = "InfJump"
InfJump.Parent = Frame
InfJump.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
InfJump.Position = UDim2.new(0, 0, 0.0606936514, 0)
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
