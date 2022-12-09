--GUNMAN BOOTSTRAPPER

--initializes everything lua and gunman. Without this, npcs wont speak, a bunch of sounds wont play, and a bunch of scripted scenes will be broken.

hook.Add("PostGamemodeLoaded", "HK_ADDONCOMPAT", function() 
	--this is much earlier than InitPostEntity. Entities do not have their data by this point as they haven't been initialised. 
	--These modules need to or should be ran before entities are initialised. They do not require entity data or they will instead run code first that doesn't require it. 
	--our entity gunman_item_spawner requires bGunmanSWEPS. But if gunmanAddonCompat is ran in InitPostEntity, by the time gunman_item_spawner 
	--is initialised it will already have checked and will return false always.

	include("gunman/gunmanAddonCompat.lua") --a script that will check if a specific addon is downloaded and mounted. telling maps requires map entity data, which is why we do so later on in InitPostEntity.
	PrecacheSentenceFile("data/gunman/gunmanSentences.json") --precaches our sentences file. This is used by all the npcs in the project.
	include("gunman/gunmanScenes.lua") --our vcd (scenes) library.
	include("gunman/gunmanSoundLib.lua") --a sound library for various systems and components of the project.
	--include("gunman/gunmanZeroG.lua") --quick script to make any entity it is passed to it enter zero gravity physics state. mainly used on gunman_city3 --REPLACED

end)

hook.Add("InitPostEntity", "HK_INITPOSTENT", function() 
	--these modules or specific functions require that entity data be present 
	--and do not need to be ran before any other of our entites are initialised, so they're ran here.


	if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then --checks if the map name begins with gc or gunman
		if (!IsValid(ents.FindByClass("gunman_map_marker")[1])) then return end --if not, we look for any of our map markers. if one is found, we consider this a gc map anyway. otherwise, we cancel.
	end
	
	tellMapCompat() --tell the map if we have gunman sweps or not. This is done here so we dont try to find map entities by name before they're init.

	if (game.GetMap() == "gunman_city2") then
		include("gunman/gunmanPuzzleMan.lua") --the system behind the puzzle minigame in gunman_city2
	end

	include("gunman/gunmanMapLoader.lua") --quick script to load any map passed to it through hammer. (could use a remake!)

	include("gunman/gunmanFiremode.lua") --prototype for integration of a customization system for dopey's sweps into our maps.
	
	include("gunman/gunmanOffset.lua") --small script to offset a hammer entity by 5 in the positive z axis.

	--Woah! now this is gettin serious!
	if (game.GetMap() == "gunman_city4") then
		include("gunman/gunmanSerious.lua")
	end


	print("\n\n**All Garrys Chronicles systems bootstrapped!**\n\n") --let the user know we're done.

end)

