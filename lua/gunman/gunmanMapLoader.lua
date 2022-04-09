--our own level loader since facepunch couldn't be bothered to fix info_landmark entities.
--put in whatever value you want in the hammer editor, will automatically be converted to a string.
function gunmanChangeMap(newMap)
	
	local newMapStr = tostring(newMap)
	if (newMapStr == nil or newMapStr == "" or newMapStr == " ") then print("GUNMAN: ~ERROR~ Map loader failed, couldn't get a string from value or value is invalid.") return end
	
	
	RunConsoleCommand("map", newMapStr)
end