--gunman utility library. Contains a ton of useful functions for different tasks.


--checks if the string is valid by making sure it isn't nil and that it isn't just white space or spaces.
function isStrValid(str)
	if (istable(str)) then
		for i = 1, #str, 1 do
			if (str[i] == nil) then return false end
			str[i] = string.Replace(str[i], " ", "")
			if (str[i] == "") then return false end
		end
	else
		if (str == nil) then return false end
		str = string.Replace(str, " ", "")
		if (str == "") then return false end
	end
return true end

--simple wrapper function made specifically to check if the str is invalid.
function isStrInvalid(str)
	return !isStrValid(str) 
end

--if the string contains only numeric characters return true. False if a single alphabetic character is found.
function strIsNum(str, bIgnoreMinus)
	if (isStrInvalid(str)) then return false end
	if (bIgnoreMinus == nil) then bIgnoreMinus = false end
	
	str = string.Replace(str, ".", "") --support for floats
	if (bIgnoreMinus) then
		str = string.Replace(str, "-", "") --ignore minus if told to do so.
	end
	
	for i = 1, string.len(str), 1 do
		if (bIgnoreMinus) then
			if (str[i] < '0' or str[i] > '9') then return false end
		else
			if (str[i] < '0' or str[i] > '9') then return false end
		end
	end
	
	
	return true
end

--if the string contains only alphabetic characters it will return true. False if a single number is found.
function strIsAlpha(str)
	if (isStrInvalid(str)) then return false end


	for i = 1, string.len(str), 1 do
		if (str[i] >= '0' and str[i] <= '9') then return false end
	end
	
	return true
end

--if the string contains a mixture of both alphabetic and numeric characters, return true. Otherwise if it only contains numbers or only alphabetic characters, then return false.
function strIsAlphaNum(str)
	if (isStrInvalid(str)) then return false end

	if (strIsNum(str) or strIsAlpha(str)) then return false end
	
	return true
end

--same as isStrValid, but for numbers.
function isValValid(val)

	if (val == nil) then return false end

	if (!isnumber(val)) then return false end

return true end

--simple wrapper function made specifically to check if the val is invalid.
function isValInvalid(val)
	return !isValValid(val) 
end

--checks if the keyvalue it is fed is actually valid or not. It uses isStrValid to check. You can tell it that you only want numbers by passing true into the 3rd argument.
function isKeyValueValid(k, v, bOnlyNumber)
	if (bOnlyNumber == nil) then bOnlyNumber = false end

	if (isStrInvalid(name)) then name = "*Unknown gunman_item_spawner Entity*" end

	if (isStrInvalid(k) ) then print(" gunman_item_spawner recieved a bad key.") return false end
	if (isStrInvalid(v)) then print(" gunman_item_spawner recieved a bad value from key '" .. k .. "'.") return false end


	if (bOnlyNumber) then
		if (!strIsNum(v)) then print("gunman_item_spawner's number only key ('" .. k .. "') was given a value that did not contain only numerical values. ('" .. v .. "')") return end
	end
	

	return true
end

--gets a string and checks if it will be a valid vector.
function strIsValidVector(vec, ent, bAng)
	if(isStrInvalid(vec)) then return false end
	if (!isstring(vec)) then vec = tostring(vec) end
	if (bAng == nil) then bAng = false end
	
	local name
	if (ent == nil or ent == NULL) then 
		name = "*Unknown*"
	else
		name = ent
	end

	local typename
	
	if (bAng) then
		typename = "angle"
	else
		typename = "vector"
	end

	local vectorNums = string.Explode(" ", vec)
	if (#vectorNums != 3) then print(name, " was given a " .. typename .. " with an invalid number of axes.") return false end
	if (!strIsNum(table.concat(vectorNums), true)) then print(name, "was given a " .. typename .. " with letters.") return false end
		
	if (util.StringToType(vec, typename) == nil) then print(name, "string couldn't convert to a " .. typename .. ".") return false end
	
	return true

end

function strIsInvalidVector(vec, ent)
	return !strIsValidVector(vec, ent)
end

function strIsValidAngles(ang, ent)
	return strIsValidVector(ang, ent, true)
end

function strIsInvalidAngles(ang, ent)
	return !strIsValidAngles(ang, ent)
end

--checks if the string makes for a valid entity. or entities. can take in a classname and filter out entities by that name. Safe for use before entity initialization BUT NOT IF using search mode. Can search for the entity, or attempt to create it using the str as a classname.
function strIsValidEntity(str, bSearch, desiredClass)
	if (isStrInvalid(str)) then print("strIsValidEntity: Was not passed a valid str argument.") return false end
	if (bSearch == nil) then bSearch = false end
	if (bSearch) then
		if (istable(str)) then
			for strI = 1, #str, 1 do
				local foundEnts = ents.FindByName(str[strI])
				if (foundEnts == nil or table.IsEmpty(foundEnts) or foundEnts[1] == nil or foundEnts[1] == NULL) then print("strIsValidEntity: Could not find an entity. ('" .. str[strI] .. "')") return false end
				
				for i = 1, #foundEnts, 1 do
					if (foundEnts[i] == nil or foundEnts[i] == NULL) then print("strIsValidEntity: An entity was invalid. ('" .. str[strI] .. "')") return false end --would use isvalid, but its kind of jank.
					if (isStrValid(desiredClass)) then
						
						if (foundEnts[i]:GetClass() != desiredClass) then print("strIsValidEntity: An entity did not match the class filter. ('" .. str[strI] .. "')") return false end
					end
				end
			end
		else
			local foundEnts = ents.FindByName(str)
			
			if (foundEnts == nil or table.IsEmpty(foundEnts) or foundEnts[1] == nil or foundEnts[1] == NULL) then print("strIsValidEntity: Could not find the entity. ('" .. str .. "')") return false end

			
			for i = 1, #foundEnts, 1 do
				if (foundEnts[i] == nil or foundEnts[i] == NULL) then print("strIsValidEntity: The entity was invalid. ('" .. str .. "')") return false end --would use isvalid, but its kind of jank.
				if (isStrValid(desiredClass)) then
					if (foundEnts[i]:GetClass() != desiredClass) then print("strIsValidEntity: The entity did not match the class filter. ('" .. str .. "')") return false end
				end
			end
		end
	else
		if (istable(str)) then
			for i = 1, #str, 1 do
				local ent = ents.Create(str[i])
				if ( ent == NULL or ent == nil) then 
					print("strIsValidEntity: Could not create an entity ('" .. str[i] .. "')!") 
					return false
				else
					ent:Remove()
				end
			end
		else
			local ent = ents.Create(str)
			if ( ent == NULL or ent == nil) then 
				print("strIsValidEntity: Could not create an entity ('" .. str .. "')!") 
				return false
			else
				ent:Remove()
			end
		end
		
	end
	
	return true
end

function strIsInvalidEntity(str, bSearch, desiredClass)
	return !strIsValidEntity(str, bSearch, desiredClass)
end

--checks if the name is actually a key. Normalizes the input, so caps do not matter.
function isKey(key, name)
	--normalize.
	key = string.lower(key)
	name = string.lower(name)

	if (isStrInvalid(key) or isStrInvalid(name)) then return false end

	if(name == key) then return true end

return false end

--same as isKey(), but for inputs.
function isInput(input, name)
	return isKey(input, name) end

--fires an output event. This is what makes the outputs in our fgd have meaning and actually tick. without this, none of the entity's outputs will ever fire.
function ENT:fireEvent(input) --EXTREME WARNING!! if you pass data into the triggeroutput function (the 3rd argument) IT WILL DISCARD ANY DATA PASSED INTO IT THROUGH PARAMS IN HAMMER!

	if (IsValid(ACTIVATOR)) then
		self:TriggerOutput(input, ACTIVATOR)--trigger that output baby!
	else
		self:TriggerOutput(input, self)
	end
end