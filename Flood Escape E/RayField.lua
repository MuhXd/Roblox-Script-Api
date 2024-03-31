local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("discord library")

local serv = win:Server("Preview", "Flood Escape E")

local btns = serv:Channel("XP")
xp = 0

btns:Button("Give XP", function()
	local args = {
		[1] = 10, --points (no matter)
		[2] = xp --(xp stuff)
	}
	
	game:GetService("ReplicatedStorage").peressxp:FireServer(unpack(args))
end)

btns:Seperator()

local sldr = sldrs:Slider("Give XP!", 0, 10000, 0, function(t)
xp = t
end)

btns:Seperator()

sldrs:Button("Change to 0", function()
sldr:Change(0)
end)

<<<<<<< HEAD
=======
local Slider = Tab:CreateSlider({
	Name = "XP",
	Range = {0, 1000},
	Increment = 100,
	Suffix = "XP",
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
>>>>>>> 025ecd2861fcb9781f982d8243c81cad6fb2db25
