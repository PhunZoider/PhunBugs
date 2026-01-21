# PhunBugs

A Project Zomboid mod to demonstrate current bugs

## details

- Steam: https://steamcommunity.com/sharedfiles/filedetails/?id=3651321449
- workshopId:3651321449
- modId: phunbugs

## Skeletons cause a CTD

Happens in B42.13.1 and B42.13.2. It wasn't happening in B41

To reproduce:

- play in either SP/MP
- Start up a new game
- All zeds will be set to zed:setSkeleton(true)
- Aim a gun at one
- Crash to desktop

## saveGame() on server prevents changing settings in future

Happens in B42.13.1 and B42.13.2

To reproduce:

- Ensure the servers save folder does not contain map_sand.bin
- Start a server with this mod active
- Every 10 mins in game, the server will call saveGame()
- You will then find a map_sand.bin in your folder
- This file can prevent your SandboxVars.lua file from being read
