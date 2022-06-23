--loads the sentence file for gctgm.

--print("GCTGM: Loading gunman...")


if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then return end



PrecacheSentenceFile("data/gunman/gunmanSentences.json")


include("gunman/gunmanSoundLib.lua")

include("gunman/gunmanPuzzleMan.lua")

include("gunman/gunmanMapLoader.lua")

include("gunman/gunmanZeroG.lua")


--this checks for a certain addon for compatibility reasons. 
--If its true, it will set all logic_branches with a name beginning with "if_gcwpns_installed" to 1 (true). 
--this allows for map behavior to change based on if they have the addon installed and mounted or not.
hook.Add("InitPostEntity", "HK_INITPOSTENT", function() 

	local ifs = ents.FindByName("if_gcwpns_installed*")
	
	if (ifs == nil or table.IsEmpty(ifs)) then return end

	gcWpnCompatAddonID= "TODO-INSERT_ID_HERE" --this is the workshop id of the addon we need for weapon compatibility. Stored here for convenience.

	local bHasInstalled = false

	local addons = engine:GetAddons()

	if (addons != nil and !table.IsEmpty(addons)) then

		for i = 1, table.maxn(addons), 1 do
			if(addons[i].wsid == gcWpnCompatAddonID and addons[i].downloaded and addons[i].mounted) then --if the addon's id is equal to the compatible addon's id and is downloaded and mounted then we're good to go.
				bHasInstalled = true
				break
			end
		end
	end

	if (bHasInstalled) then
		for i = 1, table.maxn(ifs), 1 do
			
			ifs[i]:Fire("SetValue", "1") --let the maps know.
		end
	end
		
end)


