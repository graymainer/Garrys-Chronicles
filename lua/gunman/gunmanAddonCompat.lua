
bGunmanSWEPS = false
gunmanSWEPsID = "2815854365" --this is the workshop id of the addon we need for weapon compatibility. --TODO: REPLACE WITH ACTUAL ADDON'S ID

function tellMapCompat()
	if (!bGunmanSWEPS) then return end

	local ifs = ents.FindByName("if_gcwpns_installed*")
	
	if (ifs == nil or table.IsEmpty(ifs)) then return end


	for i = 1, table.maxn(ifs), 1 do
		
		ifs[i]:Fire("SetValue", "1") --let the maps know.
		print("Set " .. ifs[i]:GetName() .. " to true!")
	end

end

--every cleanup, tell the map whether we have the addon or not.
hook.Add("PostCleanupMap", "HK_CLEANUP", function() tellMapCompat() end)

--this checks for a certain addon for compatibility reasons. 
--If its true, it will set all logic_branches with a name beginning with "if_gcwpns_installed" to 1 (true). 
--this allows for map behavior to change based on if they have the addon installed and mounted or not.


local addons = engine:GetAddons()

if (addons != nil and !table.IsEmpty(addons)) then

	for i = 1, table.maxn(addons), 1 do
		if(addons[i].wsid == gunmanSWEPsID and addons[i].downloaded and addons[i].mounted) then --if the addon's id is equal to the compatibility addon's id and is downloaded and mounted then we're good to go.
			bGunmanSWEPS = true
			break
		end
	end
	--normally, we'd call tellMapCompat here, but we need to wait for the map's entities to spawn in properly. So we wait...
end