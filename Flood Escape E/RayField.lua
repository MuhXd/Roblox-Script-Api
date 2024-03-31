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

