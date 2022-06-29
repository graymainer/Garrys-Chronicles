--GUNMAN BOOTSTRAPPER

--initializes everything lua and gunman. Without this, npcs wont speak, a bunch of sounds wont play, and a bunch of scripted scenes will be broken.


hook.Add("InitPostEntity", "HK_INITPOSTENT", function() 



	if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then --checks if the map name begins with gc or gunman
		if (!IsValid(ents.FindByClass("gunman_mapMarker")[1])) then return end --if not, we look for any of our map markers. if one is found, we consider this a gc map anyway. otherwise, we cancel.
	end


	PrecacheSentenceFile("data/gunman/gunmanSentences.json") --precaches our sentences file. This is used by all the npcs in the project.


	include("gunman/gunmanSoundLib.lua") --a sound library for various systems and components of the project.

	include("gunman/gunmanPuzzleMan.lua") --the system behind the puzzle minigame in gunman_city2

	include("gunman/gunmanMapLoader.lua") --quick script to load any map passed to it through hammer. (could use a remake!)

	include("gunman/gunmanFiremode.lua") --prototype for integration of a customization system for dopey's sweps into our maps.

	include("gunman/gunmanAddonCompat.lua") --a script that will check if a specific addon is downloaded and mounted.

	include("gunman/gunmanZeroG.lua") --quick script to make any entity it is passed to it enter zero gravity physics state. mainly used on gunman_city3




	print("\n\n**All Garrys Chronicles systems bootstrapped!**\n\n") --let the user know we're done.

end)

