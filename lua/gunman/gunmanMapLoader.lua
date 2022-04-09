--our own level loader since facepunch couldn't be bothered to fix info_landmark entities.
--put in whatever value you want in the hammer editor, will automatically be converted to a string.

-- file.CreateDir("gunman")

function gunmanChangeMap(newMap)
	
	local newMapStr = tostring(newMap)
	if (newMapStr == nil or newMapStr == "" or newMapStr == " ") then print("GUNMAN: ~ERROR~ Map loader failed, couldn't get a string from value or value is invalid.") return end
	
	
	-- local vectorData = file.Open("gunman/mlVectorData.JSON", "w", "DATA")
	
	-- if (vectorData != nil) then 
		
		-- local posX, posY, posZ = Entity(1):GetPos():Unpack()
		-- local angX, angY, angZ = Entity(1):GetAngles():Unpack()
		
		-- vectorData:WriteFloat(posX)
		-- vectorData:WriteFloat(posY)
		-- vectorData:WriteFloat(posZ)
		-- vectorData:WriteFloat(angX)
		-- vectorData:WriteFloat(angY)
		-- vectorData:WriteFloat(angZ)
		
		-- vectorData:Flush()
		-- vectorData:Close()
	
	-- else
		-- print("GUNMAN: :Warning: Maploader couldn't create vectorData.") 	
	-- end
	
	
	RunConsoleCommand("map", newMapStr)
	
end

-- hook.Add("PlayerInitialSpawn", "HK_MLSPAWNED", function(player, transition) 
	-- local oldVectorData = file.Open("gunman/mlVectorData.JSON", "r", "DATA")
	
	-- if (oldVectorData == nil) then
		-- hook.Remove("PlayerInitialSpawn", "HK_MLSPAWNED")
	-- return end
	
	
	-- local oldPosX = oldVectorData:ReadFloat()
	-- local oldPosY
	-- local oldPosZ
	
	-- local oldAngX
	-- local oldAngY
	-- local oldAngZ
	
	
	
-- end)