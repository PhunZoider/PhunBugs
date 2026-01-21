if isServer() then

    Events.EveryTenMinutes.Add(function()
        saveGame()
        print("========================================")
        print("PhunBugs: Congrats, you now have a map_sand.bin")
        print("========================================")
    end)

end
