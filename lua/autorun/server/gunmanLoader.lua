--loads the sentence file for gctgm.

--print("GCTGM: Loading gunman...")


if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then return end


PrecacheSentenceFile("data/gunman/gunmanSentences.json")


include("gunman/gunmanSoundLib.lua")

include("gunman/gunmanPuzzleMan.lua")

include("gunman/gunmanMapLoader.lua")

include("gunman/gunmanZeroG.lua")

