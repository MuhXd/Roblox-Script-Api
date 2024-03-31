Mods = {

    [1] = "https://github.com/MuhXd/Roblox-Script-Api/"
}



PlaceScript = Mods[game.PlaceId]

if PlaceScript then
loadstring(game:HttpGet(PlaceScript))();
end