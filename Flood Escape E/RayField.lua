local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Flood Escape E",
	LoadingTitle = "MuhXD hub",
	LoadingSubtitle = "by Viper",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "ViperHub",
		FileName = "Flood Escape E"
	},
	KeySystem = false, -- Set this to true to use their key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})
xpadd = 10
Rayfield:Notify("Title Example", "Content/Description Example", 4483362458) -- Notfication -- Title, Content, Image

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Section Example")

local Button = Tab:CreateButton({
	Name = "Give XP",
	Callback = function()
		local args = {
            [1] = 0, --points (no matter)
            [2] = xpadd --(xp stuff)
        }
        
        game:GetService("ReplicatedStorage").peressxp:FireServer(unpack(args))
	end,
})


local Slider = Tab:CreateSlider({
	Name = "XP",
	Range = {0, 1000},
	Increment = 100,
	Suffix = "XP: ",
	CurrentValue = 10,
	Flag = "XpSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		xpadd = Value
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

-- Extras

-- getgenv().SecureMode = true -- Only Set To True If Games Are Detecting/Crashing The UI

-- Rayfield:Destroy() -- Destroys UI

-- Rayfield:LoadConfiguration() -- Enables Configuration Saving

-- Section:Set("Section Example") -- Use To Update Section Text

-- Button:Set("Button Example") -- Use To Update Button Text

-- Toggle:Set(false) -- Use To Update Toggle

-- Slider:Set(10) -- Use To Update Slider Value

-- Label:Set("Label Example") -- Use To Update Label Text

-- Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"}) -- Use To Update Paragraph Text

-- Keybind:Set("RightCtrl") -- Keybind (string) -- Use To Update Keybind

-- Dropdown:Set("Option 2") -- The new option value -- Use To Update/Set New Dropdowns