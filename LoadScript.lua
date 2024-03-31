Mods = {

    [10003072233] = "https://github.com/MuhXd/Roblox-Script-Api/blob/main/Flood%20Escape%20E/RayField.lua?raw=true"
}



PlaceScript = Mods[game.PlaceId]

if PlaceScript then
loadstring(game:HttpGet(PlaceScript))();
end -- https://github.com/MuhXd/Roblox-Script-Api/blob/main/LoadScript.lua
