-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local KeySystem = Instance.new("Frame")
local TopText = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local KeyInput = Instance.new("TextBox")
local X = Instance.new("TextLabel")
local HackFrame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TeleportAll = Instance.new("TextButton")
local InfJump = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local SpeedFast = Instance.new("TextButton")
local SpeedNormal = Instance.new("TextButton")
local TP = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Top = Instance.new("TextLabel")
local InfiniteJumpEnabled = true
local player = game.Players.LocalPlayer
--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

HackFrame.Parent = ScreenGui
HackFrame.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
HackFrame.Position = UDim2.new(0.0454895906, 0, 0.0817901269, 0)
HackFrame.Size = UDim2.new(0, 627, 0, 500)
HackFrame.Active = true
HackFrame.Draggable = true

KeySystem.Name = "KeySystem"
KeySystem.Parent = ScreenGui
KeySystem.BackgroundColor3 = Color3.fromRGB(33, 217, 33)
KeySystem.Position = UDim2.new(0.276695251, 0, 0.268041253, 0)
KeySystem.Size = UDim2.new(0, 516, 0, 302)

TopText.Name = "Top Text"
TopText.Parent = KeySystem
TopText.BackgroundColor3 = Color3.fromRGB(0, 148, 9)
TopText.BackgroundTransparency = 1.000
TopText.BorderSizePixel = 0
TopText.Size = UDim2.new(1, 0, 0.200000003, 0)
TopText.Font = Enum.Font.SourceSans
TopText.Text = "Key"
TopText.TextColor3 = Color3.fromRGB(255, 255, 255)
TopText.TextScaled = true
TopText.TextSize = 14.000
TopText.TextStrokeTransparency = 0.000
TopText.TextWrapped = true

TextButton.Parent = KeySystem
TextButton.BackgroundColor3 = Color3.fromRGB(0, 148, 9)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.349999964, 0, 0.819999993, 0)
TextButton.Size = UDim2.new(0.300000012, 0, 0.147974387, 0)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Submit"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeTransparency = 0.500
TextButton.TextWrapped = true

KeyInput.Name = "KeyInput"
KeyInput.Parent = KeySystem
KeyInput.BackgroundColor3 = Color3.fromRGB(0, 148, 9)
KeyInput.BorderSizePixel = 0
KeyInput.Position = UDim2.new(0.0430410467, 0, 0.249999955, 0)
KeyInput.Size = UDim2.new(0.91391784, 0, 0.24999997, 0)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.Text = "h"
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 30.000
KeyInput.TextStrokeTransparency = 0.000
KeyInput.TextWrapped = true

X.Name = "X"
X.Parent = KeySystem
X.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
X.Position = UDim2.new(0.918604672, 0, 0, 0)
X.Size = UDim2.new(0, 42, 0, 50)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true

HackFrame.Name = "HackFrame"
HackFrame.Parent = ScreenGui
HackFrame.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
HackFrame.Position = UDim2.new(0.0454895906, 0, 0.0817901269, 0)
HackFrame.Size = UDim2.new(0, 627, 0, 500)

ScrollingFrame.Parent = HackFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
ScrollingFrame.Position = UDim2.new(-0.000229239464, 0, 0.101349205, 0)
ScrollingFrame.Size = UDim2.new(0, 627, 0, 449)

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

Top.Name = "Top"
Top.Parent = HackFrame
Top.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
Top.BackgroundTransparency = 1.000
Top.Size = UDim2.new(0, 613, 0, 50)
Top.Font = Enum.Font.SourceSans
Top.Text = "Game Gui by #alfonsop123#3607 V0.8 (Currently noclip, fly do not work!) Discord For Support: https://discord.gg/4WkkxqK6fK"
Top.TextColor3 = Color3.fromRGB(0, 0, 0)
Top.TextScaled = true
Top.TextSize = 14.000
Top.TextWrapped = true

-- Scripts:

local function RSEVS_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	--local KeyInput = tonumber(script.Parent.Parent.KeyInput.Text)
	local KeyInput = script.Parent.Parent.KeyInput.Text
	local HackFrame = script.Parent.Parent.Parent.HackFrame
	HackFrame.Visible = false
	local KeySystem = script.Parent.Parent
	KeySystem.Visible = true
	--local key = "170709"
	script.Parent.Parent.KeyInput.Text = "Enter Key Here"
	script.Parent.MouseButton1Click:Connect(function()
		local KeyInput = tonumber(script.Parent.Parent.KeyInput.Text)
		--local KeyInput = script.Parent.Parent.KeyInput.Text
		if KeyInput ~= "170709" then
			script.Parent.Parent.KeyInput.Text = "Success!"
			wait(2.5)
			HackFrame.Visible = true
			KeySystem.Visible = false
		else
			script.Parent.Parent.KeyInput.Text = "Wrong Key!"
			wait(2.5)
			script.Parent.Parent.KeyInput.Text = "Enter Key Here"
		end
	end)
end
coroutine.wrap(RSEVS_fake_script)()
-- TextButton.LocalScript is disabled.
-- TextButton.LocalScript is disabled.
local function TLNQ_fake_script() -- X.LocalScript 
	local script = Instance.new('LocalScript', X)

	local KeySystem = script.Parent.Parent
	script.Parent.MouseButton1Click:Connect(function()
		KeySystem.Visible = false
	end)
end
coroutine.wrap(TLNQ_fake_script)()
