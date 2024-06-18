local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Eat Blobs Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "testingerthg"})

local FarmTab = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddButton({
	Name = "Teleport Orbs To Middle",
    Callback = function()
    blobparts = game.Workspace.Blobs:GetChildren()
	for _, blobparts in pairs(blobparts) do
    blobparts.Position = Vector3.new(0, 0, 0)
      	end    
    end
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "Speed",
	Min = 20,
	Max = 200,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
        plr = game.Players.LocalPlayer
        plr.Character.Humanoid.WalkSpeed = Value
	end    
})

OrionLib:Init()

OrionLib:MakeNotification({
	Name = "Loaded!",
	Content = "Script has been loaded",
	Image = "rbxassetid://4483345998",
	Time = 5
})
