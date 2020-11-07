# Teardown Mini Nuke Mod

Unlock Teardown's maximum blast range limit and turn the rocket launcher into a mini nuke launcher.

![1](screenshots/1.gif)
![2](screenshots/2.gif)

## Usage

- Place `winmm.dll` in the game's directory
- Replace the game's `data/game.lua` with the file of the same name from this mod
- Replace your save file (`C:\Users\[USERNAME]\Documents\Teardown\savegame.xml`) with the file from this mod
- Launch the game, play Campaign and check your in-game computer for rocket launcher upgrades

![Tools](screenshots/tools.png)

## Notice

Please use the stable version of the game on Steam (not the experimental branch). Otherwise you may run into problems launching the game.

## For Other Modders

This project also serves as an explosion radius limit remover, allowing you to bypass the hardcoded limit and specify any explosion radius in your scripts.

`Explosion(t.pos, 20)`
