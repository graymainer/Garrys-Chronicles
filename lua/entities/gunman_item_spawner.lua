
ENT.Type = "point" --anim if we have a model. If it's point, we can't set our model.
ENT.DisableDuplicator = true



--you can put your global vars here



--your flags

SF_RESPAWN = 1
SF_FORCEHL2 = 2
SF_NOBEAMS = 4
SF_NOGLOW = 8
SF_NOSPARKS = 16
SF_NOLITES = 32
SF_NOSHADOWS = 64
SF_NOSPAWNSPARKS = 128
SF_NOFX = 256
SF_FROZEN = 512
SF_NOGRAVITY = 1024
SF_NOSURFALIGN = 2048

--

--your variables.

--core stuff
ENT.bInit = false
ENT.bEnabled = true
ENT.item = "gc_medkit" --the item we are to spawn. This is the default item.

--spawning effects
ENT.fxBeam = nil --a reference to a beam entity.
ENT.fxLite = nil --a reference to an env_projectedtexture entity.
ENT.fxLiteAngles = Angle(-90, 0, 0) --the angles to spawn the light at.
ENT.fxSprite = "gctextures/gc_spnglw.vmt"
ENT.fxSound = "gcsfx/ammo_respawn.wav"

--item spawning logic
ENT.bSpawning = false --are we currently spawning an entity?
ENT.spawnOffset = Vector(0, 0, 1) --the offset to spawn the item at. different from spawnPos, in that this will add to whatever the trace determines as the actual position to spawn the item at.
ENT.spawnAngles = Angle(0, 0, 0) --the angles that the item should have initially.
ENT.spawnLifespan = 0 --How many items can we spawn before we disable ourselves?
ENT.nSpawnedItems = 0 --How many items have we spawned? for spawnLifespan.
ENT.spawnDelay = 1.0 --how long after being told to spawn does the item spawn?
ENT.spawnedItem = nil --the last item we spawned.
ENT.spawnPosOverride = nil --the name of an entity whose position we'll use instead of our own to spawn items at.
ENT.spawnPos = nil --the position we'll spawn items at. This wont be used as the EXACT position at which items are spawned at. This will be the pos that the trace that finds a suitable surface will start at. So spawnOffset is not applicable here.
ENT.spawnSurfaceTraceDir = Vector(0,0,-10000) --direction for the automatic surface alignment trace

--item respawning logic
ENT.bRespawning = false --are we currently respawning an entity?
ENT.respawnDelay = 3.0 --how long after we've been told to respawn do we respawn? spawnDelay applies here as well.
ENT.respawnDistance = 0.0 --disabled by default.
ENT.bRespawnDistance = false --used to determine if this feature is enabled or not. Made to help simplify the check done in ent:think.

--

--[[
	TODO::
	battle test.
--]]


--your helper functions. These are ported from the garrys chronicles project. these bad boys make life easier.


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

--nice debug function that will print out to you all the data related to the entity.
function ENT:printInfo()

	local name = self:GetName()

	if (isStrInvalid(name)) then
		name = tostring(self)
	end
	--header
	print("\n\n========" .. self:GetClass() .. " - " .. name .. " Info========\n\n")
	
	--basic stuff.
	print("Name:", "", "", "", self:GetName())
	print("Flags:", "", "", "", self:GetSpawnFlags())
	print("Initialised?", "", "", self.bInit)
	print("Enabled?", "", "", self.bEnabled)
	
	--implementation
	print("Item to Spawn:", "", "", self.item)
	print("Light Angles:", "", "", self.fxLiteAngles)
	print("Sprite:", "", "", "", self.fxSprite)
	print("Sound:", "", "", "", self.fxSound)
	print("Spawn Delay:", "", "", self.spawnDelay)
	print("Respawn Delay:", "", "", self.respawnDelay)
	print("Spawn Position:", "", "", self.spawnPos)
	print("Spawn Angles:", "", "", self.spawnAngles)
	print("Surface Trace Direction:", self.spawnSurfaceTraceDir)
	
	if (self.fxLite != nil and self.fxLite != NULL) then
		print("Light Effects Overwritten?", "Yes, using: " .. tostring(self.fxLite))
	else
		print("Light Effects Overwritten?", "No, using default.")
	end
	
	if (self.fxBeam != nil and self.fxBeam != NULL) then
		print("Beam Effects Overwritten?", "Yes, using: " .. tostring(self.fxLite))
	else
		print("Beam Effects Overwritten?", "No, using default.")
	end
	
	if (self.spawnPosOverride != nil) then
		print("Spawn Position Overwritten?", "Yes, using: " .. tostring(self.spawnPosOverride) .. " at " .. tostring(self.spawnPos))
	else
		print("Spawn Position Overwritten?", "No, using default.")
	end
	
	if (self.spawnLifespan <= 0) then
		print("Spawner Lifespan:", "", "Infinite.")
	else
		print("Spawner Lifespan:", "", self.spawnLifespan)
	end
	
	if (self.bSpawning) then
		print("Spawning?", "", "", "Yes.")
	else
		print("Spawning?", "", "", "No.")
	end
	
	if (self.respawnDistance <= 0.0) then
		print("Respawn Distance:", "", "Using default respawn behavior.")
	else
		print("Respawn Distance:", "", self.respawnDistance)
	end
	
	if (self.bRespawnDistance) then
		if (IsValid(self.spawnedItem)) then
			print("Item Distance:", "", "", (self.spawnedItem:GetPos() - self.spawnPos):LengthSqr() / 20)
		else
			print("Item Distance:", "", "", "Item not spawned.")
		end
	else
		print("Item Distance:", "", "", "Disabled.")
	end
	
	if (self.bRespawning) then
		print("Respawning?", "", "", "Yes.")
	else
		print("Respawning?", "", "", "No.")
	end
	
	print("\n========Flags========\n")

	
	if (self:HasSpawnFlags(SF_RESPAWN)) then
		print("Can Respawn Items?", "", "", "Yes.")
	else
		print("Can Respawn Items?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_FORCEHL2)) then
		print("Forcing HL2 Items?", "", "", "Yes.")
	else
		print("Forcing HL2 Items?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOBEAMS)) then
		print("No Beam Effects?", "", "", "Yes.")
	else
		print("No Beam Effects?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOLITES)) then
		print("No Lighting Effects?", "", "", "Yes.")
	else
		print("No Lighting Effects?", "", "", "No.")
	end
	
	if (!self:HasSpawnFlags(SF_NOSHADOWS)) then
		print("Does Lighting Cast Shadows?", "", "Yes.")
	else
		print("Does Lighting Cast Shadows??", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOGLOW)) then
		print("No Glow Effects?", "", "", "Yes.")
	else
		print("No Glow Effects?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOSPARKS)) then
		print("No Spark Effects?", "", "", "Yes.")
	else
		print("No Spark Effects?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOSPAWNSPARKS)) then
		print("No Sparks on Spawn?", "", "", "Yes.")
	else
		print("No Sparks on Spawn?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOFX)) then
		print("No Effects?", "", "", "", "Yes.")
	else
		print("No Effects?", "", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_FROZEN)) then
		print("Spawn Items Frozen?", "", "", "Yes.")
	else
		print("Spawn Items Frozen?", "", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOGRAVITY)) then
		print("Spawn Items in Zero Gravity?", "", "Yes.")
	else
		print("Spawn Items in Zero Gravity?", "", "No.")
	end
	
	if (self:HasSpawnFlags(SF_NOSURFALIGN)) then
		print("No Automatic Surface Alignment?", "", "Yes.")
	else
		print("No Automatic Surface Alignment?", "", "No.")
	end
	
	--footer
	print("\n")
	print("\n\n========Info END========\n\n")
	print("\n\n")
end

--


--(IN ORDER OF EXECUTION!)

--here is where we read in all the keyvalues passed in to our entity. our specific object of this entity class.
function ENT:KeyValue( k, v )

	if (isKey("spawnitem", k)) then
		if (isStrInvalid(v)) then return end
		if (strIsNum(v)) then
			local itemIndex = util.StringToType(v, "int")
			
			if (itemIndex < 0 or itemIndex > 7) then print(self, "had key with an item index that was out of range. Ignoring.")return end
			self:getItem(itemIndex)
		else --Its not a number, so assume we've put in a classname.
			if (strIsInvalidEntity(v, false)) then print(self, "Entity class does not exist or couldn't create an entity. Ignoring.") return end
			self.item = v
		end
		
	elseif (isKey("fxBeam", k)) then
		if (isStrInvalid(v)) then return end
		self.fxBeam = v
		
	elseif (isKey("fxLite", k)) then
		if (isStrInvalid(v)) then return end
		self.fxLite = v
	
	elseif (isKey("fxSprite", k)) then
		if (isStrInvalid(v)) then return end
		self.fxSprite = v
		
	elseif (isKey("fxSound", k)) then
		if (isStrInvalid(v)) then return end
		self.fxSound = v
		
	elseif (isKey("StartDisabled", k)) then
		if (isStrInvalid(v)) then return end
		if (v == "1") then
			self.bEnabled = false
			
		else
			self.bEnabled = true
		end
		
	elseif (isKey("spawnOffset", k)) then
		if (isStrInvalid(v)) then return end
		
		if (strIsInvalidVector(v, self)) then print(self, "was given a bad vector for spawn offset. Ignoring.") return end
		
		self.spawnOffset = util.StringToType(v, "vector")
		
	elseif (isKey("spawnAngles", k)) then
		if (isStrInvalid(v)) then return end
		
		if (strIsInvalidAngles(v, self)) then print(self, "was given bad spawn angles. Ignoring.") return end
		
		self.spawnAngles = util.StringToType(v, "angle")
		
	elseif (isKey("fxLiteAngles", k)) then
		if (isStrInvalid(v)) then return end
		
		if (strIsInvalidAngles(v, self)) then print(self, "was given bad light effect angles. Ignoring.") return end
		
		self.fxLiteAngles = util.StringToType(v, "angle")
		
	elseif (isKey("spawnSurfaceTraceDirection", k)) then
		if (isStrInvalid(v)) then return end
		
		if (strIsInvalidVector(v, self)) then print(self, "was given a bad surface trace direction. Ignoring.") return end
		
		self.spawnSurfaceTraceDir = util.StringToType(v, "vector")
		
	elseif (isKey("spawnLifespan", k)) then
		if (isStrInvalid(v)) then return end
		if (!strIsNum(v)) then return end
		local val = util.StringToType(v, "int")
				
		if (val == nil or val < 0) then print(self, "was given a bad spawn limit. Ignoring.") return end
		
		self.spawnLifespan = val

	elseif (isKey("spawnDelay", k)) then
		if (isStrInvalid(v)) then return end
		if (!strIsNum(v)) then return end
		local val = util.StringToType(v, "float")
				
		if (val == nil) then print(self, "was given a bad spawn delay. Ignoring.") return end
		if (val < 0.1) then 
			print(self, "was given a spawn delay below the minimum. Clamping.")
			val = 0.1
		end
		
		self.spawnDelay = val

	elseif (isKey("respawnDelay", k)) then
		if (isStrInvalid(v)) then return end
		if (!strIsNum(v)) then return end
		local val = util.StringToType(v, "float")
				
		if (val == nil) then print(self, "was given a bad respawn delay. Ignoring.") return end
		if (val < 0.1) then 
			print(self, "was given a respawn delay below the minimum. Clamping.")
			val = 0.1
		end
		
		self.respawnDelay = val
		
	elseif (isKey("spawnPositionOverride", k)) then
		if (isStrInvalid(v)) then return end
		if (strIsInvalidEntity(v, true)) then print(self, "was given a bad position override entity. Ignoring.") return end
		self.spawnPosOverride = v
	
	elseif (isKey("respawnDistance", k)) then
		if (isStrInvalid(v)) then return end
		if (!strIsNum(v)) then return end
		local val = util.StringToType(v, "float")
		
		if (val == nil or val < 0) then print(self, "was given a bad respawn distance. Ignoring.") return end
		
		if (val < 5.0) then
			val = 0.0
		else
			self.bRespawnDistance = true
		end
		
		
		self.respawnDistance = val
	end

	--scans for outputs we made using this entity and stores them so we can trigger them later.
	if ( string.Left( k, 2 ) == "on" ) then --looks for keyvalues that begin with "on"
		self:StoreOutput( k, v )
	end

end

--gets one of our default item types from index. Chooses either vanilla hl2 items or gunman items depending on addon availability.
function ENT:getItem(index)
	if (index == nil or !isnumber(index)) then print(self, "attempted to get an item from an invalid index.") return end

	if (index == 1) then
		if (bGunmanSWEPS and !self:HasSpawnFlags(SF_FORCEHL2)) then
			self.item = "gc_medkit"
		else
			self.item = "item_healthkit"
		end
	elseif (index == 2) then
		if (bGunmanSWEPS and !self:HasSpawnFlags(SF_FORCEHL2)) then
			self.item = "gc_armor"
		else
			self.item = "item_battery"
		end
	elseif (index == 3) then
		if (bGunmanSWEPS and !self:HasSpawnFlags(SF_FORCEHL2)) then
			self.item = "gunman_item_ammo_pistol"
		else
			self.item = "item_ammo_pistol"
		end
	elseif (index == 4) then --dont have a gunman equivalent
		self.item = "item_ammo_crossbow"
	elseif (index == 5) then
		if (bGunmanSWEPS and !self:HasSpawnFlags(SF_FORCEHL2)) then
			self.item = "gunman_item_ammo_mechagun"
		else
			self.item = "item_ammo_smg1"
		end
	elseif (index == 6) then
		if (bGunmanSWEPS and !self:HasSpawnFlags(SF_FORCEHL2)) then
			self.item = "gunman_item_ammo_shotgun"
		else
			self.item = "item_box_buckshot"
		end
	elseif (index == 7) then
		if (bGunmanSWEPS and !self:HasSpawnFlags(SF_FORCEHL2)) then
			self.item = "gc_ammo_dmlrocket"
		else
			self.item = "weapon_frag"
		end
	else
		print(self:GetName() .. " tried to spawn an unknown item from a bad index. Ignoring.")
	end
end

--we start main execution here.
function ENT:Initialize()

	if (isStrInvalid(self:GetName())) then --we cant be unnamed because certain functions (namely the fx) require a name reference to ourselves.
		self:SetName("itemSpawner" .. tostring(#ents.FindByName("itemSpawner*")))
	end
	
	--verify some values we couldn't verify at ent:keyvalue
	if (self.fxBeam != nil) then
		if (strIsInvalidEntity(self.fxBeam, true, "env_beam")) then print(self:GetName(), "was given a bad beam entity. Resetting.") self.fxBeam = nil end
	end
	
	if (self.fxLite != nil) then
		if (strIsInvalidEntity(self.fxLite, true, "env_projectedtexture")) then 
			print(self:GetName(), "was given a bad light entity. Resetting.") 
			self.fxLite = nil
		else
			ents.FindByName(self.fxLite)[1]:Fire("TurnOff") --nasty hack, but a nice qol feature since env_projectedtexture ents ignore the enabled flag.
		end
	end
	
	--overrides the spawn position with the override entity given IF the override isn't nil.
	if (self.spawnPosOverride != nil) then
		local override = ents.FindByName(self.spawnPosOverride)[1]
		if (IsValid(override)) then
			self.spawnPos = override:GetPos()
		else
			self.spawnPos = self:GetPos()
		end
	else
		self.spawnPos = self:GetPos()
	end
	
	--auto spawns items if we're enabled at initialization.
	if (self.bEnabled) then
		self.bSpawning = true --sort of a hack to stop spawns from occuring before we auto spawn.
		timer.Simple(self.respawnDelay, function()
			if (self == nil or self == NULL or !IsValid(self)) then return end
			if (IsValid(self.spawnedItem)) then self.bSpawning = false return end
			self.bSpawning = false
			self:spawn()
		end)
	end
	
	
	
	self.bInit = true --we're init baby!
end

--set up our ACTIVATOR and CALLER globals.
function ENT:SetupGlobals( activator, caller )

	ACTIVATOR = activator
	CALLER = caller

	if ( IsValid( activator ) && activator:IsPlayer() ) then
		TRIGGER_PLAYER = activator
	end

end


--the heart and soul of this entity. This baby reads in hammer i/o input and translates it into LUA calls. This will allow you to use the inputs in the fgd in hammer to actually use this entity in the map with hammer's scripting.
function ENT:AcceptInput( name, activator, caller, data )
	if (CLIENT) then self:KillGlobals() return false end --mostly becuase we use getname in our error printouts.
	if (isStrInvalid(name)) then print(self:GetName() .. " was shot a bad input!") return end --you never know.
	if (strIsNum(name)) then print(self:GetName() .. " was fired an invalid input. Input name contained numbers.") self:KillGlobals() return false end

	self:SetupGlobals(activator, caller)




	--for every input we have in the fgd, we make an if statement for it. then we return true if we found our input, false if we didn't or something failed. (dont ask me why, im honestly not sure, just do it.)
	--caps dont matter
	if (isInput("spawn", name)) then
		if (isStrInvalid(data)) then self:spawn() self:KillGlobals() return end
		
		if (strIsNum(data)) then --assume its a default item type index number
			local i = util.StringToType(data, "int")
			if (isValInvalid(i) or i < 1 or i > 7) then print(self:GetName() .. "'s " .. name .. " input was given an invalid type index.") self:KillGlobals() return end
		
			self:getItem(i)
		else--assume its a classname
			if (strIsInvalidEntity(data, false)) then print(self:GetName() .. "'s " .. name .. " input was given a nonexistent classname.") self:KillGlobals() return end
			self:spawn(data) --override our item and try to spawn the one given instead.
		end

		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	if (isInput("setItem", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		
		if (strIsNum(data)) then
			local i = util.StringToType(data, "int")
			if (isValInvalid(i) or i < 1 or i > 7) then print(self:GetName() .. "'s " .. name .. " input was given an invalid type index.") self:KillGlobals() return end
		
			self:getItem(i)
		else
			if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input wasn't given a valid parameter value.") self:KillGlobals() return end
			if (strIsInvalidEntity(data, false)) then print(self:GetName() .. "'s " .. name .. " input was given a nonexistent class name.") self:KillGlobals() return end
			
			self.item = data
		end
		
		self:deleteOldItem()
		self:respawn()
		self:fireEvent("onItemChanged")
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	if (isInput("setBeamEntity", name)) then
		
		if (isStrInvalid(data) or data == "nil" or data == "null") then self.fxBeam = nil self:KillGlobals() return end
		
		if (strIsInvalidEntity(data, true, "env_beam")) then print(self:GetName() .. "'s " .. name .. " found no valid entity.") self:KillGlobals() return end
		
		self.fxBeam = data
		self:KillGlobals()
	return true end
	
	if (isInput("setLightEntity", name)) then
		if (isStrInvalid(data) or data == "nil" or data == "null") then self.fxLite = nil self:KillGlobals() return end		
		
		if (strIsInvalidEntity(data, true, "env_projectedtexture")) then print(self:GetName() .. "'s " .. name .. " found no valid entity.") self:KillGlobals() return end
		
		self.fxLite = data
		self:KillGlobals()
	return true end
	
	if (isInput("setSpawnSprite", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		
		self.fxSprite = data
		self:KillGlobals()
	return true end
	
	if (isInput("setSpawnSound", name)) then
		if (isStrInvalid(data) or data == "nil" or data == "null") then self.fxSound = nil self:KillGlobals() return end		
		
		
		self.fxSound = data
		self:KillGlobals()
	return true end
	
	if (isInput("setSpawnLifespan", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input tried to set our lifespan to a value with non numeric characters.") self:KillGlobals() return end
		
		local val = util.StringToType(data, "int")
		
		if (val < 0) then print(self:GetName() .. "'s " .. name .. " input tried to set our lifespan to a negative value.") self:KillGlobals() return end
		
		self.spawnLifespan = val
		self:KillGlobals()
	return true end
	
	if (isInput("setSpawnOffset", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		
		if (strIsInvalidVector(data)) then print(self:GetName() .. "'s " .. name .. " input had an invalid vector.") self:KillGlobals() return end
		
		
		self.spawnOffset = util.StringToType(data, "vector")
		self:KillGlobals()
	return true end
	
	if (isInput("setSpawnAngles", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		
		if (strIsInvalidAngles(data)) then print(self:GetName() .. "'s " .. name .. " input had an invalid angle.") self:KillGlobals() return end
		
		
		self.spawnAngles = util.StringToType(data, "angle")
		self:KillGlobals()
	return true end
	
	if (isInput("setSurfaceTraceDirection", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		
		if (strIsInvalidVector(data)) then print(self:GetName() .. "'s " .. name .. " input had an invalid vector.") self:KillGlobals() return end
		
		self.spawnSurfaceTraceDir = util.StringToType(data, "vector")
		self:KillGlobals()
	return true end
	
	if (isInput("setSpawnDelay", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input tried to set our spawn delay to a value with non numeric characters.") self:KillGlobals() return end
		
		local val = util.StringToType(data, "float")
		
		if (val < 0.1) then print(self:GetName() .. "'s " .. name .. " input tried to set our spawn delay below the minimum limit.") self:KillGlobals() return end
		
		self.spawnDelay = val
		self:KillGlobals()
	return true end
	
	if (isInput("setRespawnDelay", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input tried to set our respawn delay to a value with non numeric characters.") self:KillGlobals() return end
		
		local val = util.StringToType(data, "float")
		
		if (val < 0.1) then print(self:GetName() .. "'s " .. name .. " input tried to set our respawn delay below the minimum limit.") self:KillGlobals() return end
		
		self.respawnDelay = val
		self:KillGlobals()
	return true end
	
	if (isInput("setRespawnDistance", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input requires valid parameter data and was given none.") self:KillGlobals() return end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input tried to set our respawn distance to a value with non numeric characters.") self:KillGlobals() return end
		
		local val = util.StringToType(data, "float")
		
		if (val < 0.0) then print(self:GetName() .. "'s " .. name .. " input tried to set our respawn distance to a negative value.") self:KillGlobals() return end
		
		if (val >= 5.0) then
			self.bRespawnDistance = true
		else
			val = 0.0
			self.bRespawnDistance = false
		end

		
		self.respawnDistance = val
		self:KillGlobals()
	return true end
	
	if (isInput("Toggle", name)) then
		if (self.bEnabled) then
			self.bEnabled = false 
			self:fireEvent("onDisabled")
		else
			self.bEnabled = true 
			self:fireEvent("onEnabled")
		end

		self:KillGlobals()
	return true end

	if (isInput("Enable", name)) then
		if (self.bEnabled) then self:KillGlobals() return false end
		self.bEnabled = true
		self:fireEvent("onEnabled")

		self:KillGlobals()
	return true end

	if (isInput("Disable", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		self.bEnabled = false
		self:fireEvent("onDisabled")

		self:KillGlobals()
	return true end
	
	if (isInput("respawn", name)) then		
		self:deleteOldItem()
		self:respawn()
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	if (isInput("printInfo", name)) then		
		self:printInfo()
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end

	
	
	
	print(self:GetName() .. " was shot an unknown input! ('" .. name .. "')") -- by this point, if execution has reached us, we have no earthly idea what this input is.
	self:KillGlobals()
	return false

end


--delete them. should be done after the input execution ends.
function ENT:KillGlobals()

	ACTIVATOR = nil
	CALLER = nil
	TRIGGER_PLAYER = nil

end

function ENT:Think()
	if (!self.bEnabled) then return end
	
	if (self.bRespawnDistance) then
		if (IsValid(self.spawnedItem)) then
			if (self.spawnedItem:GetVelocity():LengthSqr() > 0) then
				if ((self.spawnedItem:GetPos() - self.spawnPos):LengthSqr() / 20 >= self.respawnDistance) then
					self:deleteOldItem()
					self:respawn()
				end
			end
		end
	end
end

--

function ENT:playFXSpawning(item)
	if (!self.bEnabled) then return end
	if (self:HasSpawnFlags(SF_NOFX)) then return end
	if (isStrInvalid(self.fxSound)) then return end
	

	item:EmitSound(self.fxSound)
	
	if (!self:HasSpawnFlags(SF_NOGLOW) and isStrValid(self.fxSprite)) then
	--if (false) then
		local spr = ents.Create("env_sprite")
		
		
		spr:SetKeyValue("spawnflags", bit.bor(1, 2)) --start on, play once
		spr:SetKeyValue("model", self.fxSprite)
		spr:SetKeyValue("scale", "0.5")
		spr:SetKeyValue("framerate", "1")
		spr:SetKeyValue("rendercolor", "146 255 47")
		spr:SetKeyValue("rendermode", 9)
		spr:SetKeyValue("renderfx", 1)
		spr:SetKeyValue("GlowProxySize", "10.0")
		spr:SetPos(self.spawnPos)
		spr:Spawn()
		
		timer.Simple(self.spawnDelay, function() 
			if (spr == nil or spr == NULL or !IsValid(spr)) then return end
			spr:Remove()
		end)
		
	end
	
	if (!self:HasSpawnFlags(SF_NOBEAMS)) then
		if (self.fxBeam != nil) then
			local beams = ents.FindByName(self.fxBeam)
			if (beams == nil or table.IsEmpty(beams) or beams[1] == nil or beams[1] == NULL or !IsValid(beams[1])) then return end
			
			for i = 1, #beams, 1 do
				beams[i]:SetKeyValue("lightningstart", beams[i]:GetName())
				beams[i]:SetPos(self.spawnPos)
				beams[i]:Fire("TurnOn")
			end
			
			timer.Simple(self.spawnDelay, function() 
				if (beams == nil or table.IsEmpty(beams) or beams[1] == nil or beams[1] == NULL or !IsValid(beams[1])) then return end
				for i = 1, #beams, 1 do
					beams[i]:Fire("TurnOff")
				end
			end)
		else
			local beams = {}
			
			for i = 1, 4, 1 do --4 is how many beams we want
				beams[i] = ents.Create("env_beam")
				if (!IsValid(beams[i])) then return end
				
				beams[i]:SetName(self:GetName() .. "_spawnerfx_beams" .. tostring(i - 1))
				beams[i]:SetKeyValue("spawnflags", bit.bor(4)) --random strike
				beams[i]:SetKeyValue("boltwidth", 0.65)
				beams[i]:SetKeyValue("life", 0.2)
				beams[i]:SetKeyValue("noiseamplitude", 15)
				beams[i]:SetKeyValue("radius", 40)
				beams[i]:SetKeyValue("renderamt", 255)
				beams[i]:SetKeyValue("rendercolor", "0 255 0")
				beams[i]:SetKeyValue("striketime", 0)
				beams[i]:SetKeyValue("texture", "sprites/laserbeam.spr")
				beams[i]:SetKeyValue("texturescroll", 12)
				beams[i]:SetKeyValue("lightningstart", beams[i]:GetName())
				beams[i]:SetPos(self.spawnPos)
				beams[i]:Spawn()
				
				
				beams[i]:Fire("TurnOn")
				
			end
			
			timer.Simple(self.spawnDelay, function() 
				if (beams == nil or table.IsEmpty(beams) or beams[1] == nil or beams[1] == NULL or !IsValid(beams[1])) then return end
				for i = 1, #beams, 1 do
					beams[i]:Fire("TurnOff")
					beams[i]:Fire("Kill")
				end
			end)
		end
	end
	
	if (!self:HasSpawnFlags(SF_NOLITES)) then
		if (self.fxLite != nil) then
			local lite = ents.FindByName(self.fxLite)[1]
			if (lite == NULL) then print(self:GetName() .. " tried to create an env_projectedtexture and couldn't.") return end
		
			--positioning, name, and angles.
			lite:SetPos(self.spawnPos - Vector(0, 0, 5))
			lite:SetAngles(self.fxLiteAngles)
			
			lite:Fire("TurnOn")
			
			timer.Simple(self.spawnDelay, function()
				if (self == nil or self == NULL or lite == nil or lite == NULL) then return end
				lite:Fire("TurnOff")
			end)
		else
			local lite = ents.Create("env_projectedtexture")
			if (lite == NULL) then print(self:GetName() .. " tried to create an env_projectedtexture and couldn't.") return end
			
	
			--positioning, name, and angles.
			lite:SetName(self:GetName() .. "_spawnfx_lite")
			lite:SetPos(self.spawnPos - Vector(0, 0, 10))
			lite:SetAngles(self.fxLiteAngles)
			
			
			--everything else.
			
			if (self:HasSpawnFlags(SF_NOSHADOWS)) then
				lite:SetKeyValue("enableshadows", 0)
			else
				lite:SetKeyValue("enableshadows", 1)
			end
			
			lite:SetKeyValue("targetname", self:GetName() .. "_spawnfx_lite")
			lite:SetKeyValue("lightcolor", "0 255 0 400")
			lite:SetKeyValue("style", 8)
			--lite:SetKeyValue("pattern", "dfgsdfadfa") --doesn't function
			lite:SetKeyValue("lightfov", 175)
			
			lite:Spawn() --create that bad boy!
			
			timer.Simple(self.spawnDelay, function()
				if (self == nil or self == NULL or lite == nil or lite == NULL) then return end
				lite:Remove() 
			end)
			
		end
	end
	
end

function ENT:playFXSpawned(item)
	if (!self.bEnabled) then return end
	if (self:HasSpawnFlags(SF_NOFX)) then return end
	if (isStrInvalid(self.fxSound)) then return end
	
	local itemPos
	
	if (item == nil or item == NULL) then
		itemPos = self.spawnPos
	else
		itemPos = item:GetPos()
	end
	
	if (!self:HasSpawnFlags(SF_NOSPARKS) and !self:HasSpawnFlags(SF_NOSPAWNSPARKS)) then
		local sparker = ents.Create("env_spark")
		if (!IsValid(sparker) or !IsValid(self)) then return end

		sparker:SetKeyValue("Magnitude", "2")
		sparker:SetKeyValue("TrailLength", "1")
		sparker:SetKeyValue("spawnflags", bit.bor(256)) --256: silent
		sparker:SetPos(itemPos)
		sparker:Spawn()

		sparker:Fire("SparkOnce")
		
		--clean up fx
		sparker:Fire("Kill") --needs to be this way instead of remove(). This way allows us to call sparkonce and the equivalent of remove all on the same frame.
	end
end

function ENT:respawn()
	if (!self.bEnabled) then return end
	if (!self.bInit) then return end
	if (self.bRespawning or self.bSpawning) then return end
	if (!self:HasSpawnFlags(SF_RESPAWN)) then return end
	self.bRespawning = true
	
	timer.Simple(self.respawnDelay, function() 
		if (self == nil or self == NULL or !IsValid(self)) then return end
		self:spawn(nil, true)
		self.bRespawning = false
		self:fireEvent("onRespawn")
	end)
end

function ENT:deleteOldItem()
	if (!self.bEnabled or (self.spawnedItem == nil or self.spawnedItem == NULL or !IsValid(self.spawnedItem))) then return end
	
	if (!self:HasSpawnFlags(SF_NOFX) and !self:HasSpawnFlags(SF_NOSPARKS)) then
		local sparker = ents.Create("env_spark")
		if (!IsValid(sparker)) then return end

		sparker:SetKeyValue("Magnitude", "1")
		sparker:SetKeyValue("TrailLength", "1")
		sparker:SetPos(self.spawnedItem:GetPos())
		sparker:SetKeyValue("spawnflags", bit.bor(256)) --256: silent
		sparker:Spawn()
		sparker:Fire("SparkOnce")

		--clean up fx
		sparker:Fire("Kill")
	end

	self.spawnedItem.bRemovedBySpawner = true --tells callonremove that we deleted it and dont want anything to do with it anymore.
	self.spawnedItem:Remove()
	self.spawnedItem = nil
	
	self:fireEvent("onItemDeleted")
	
end

function ENT:createItem(ent)
	if (self == nil or self == NULL or !IsValid(self)) then return end
	if (!self.bInit) then return end
	
	ent:Spawn() --spawn the entity in. Not to be confused with our spawn function, Spawn capitalized is source engine's spawn method.

	ent:SetAngles(self.spawnAngles)
	
	ent.bRemovedBySpawner = false
	
	if (IsValid(self.spawnedItem)) then
		self:deleteOldItem()
	end
	
	self.spawnedItem = ent
	
	self.bSpawning = false
	
	if (self:HasSpawnFlags(SF_FROZEN)) then
		for i = 0, ent:GetPhysicsObjectCount() - 1 do
			local phys = ent:GetPhysicsObjectNum(i)
			if !IsValid(phys) then break end
			phys:EnableMotion(false)
		end
	elseif (self:HasSpawnFlags(SF_NOGRAVITY)) then
		makeZeroG(ent)
	end
	
	
	
	
	ent:CallOnRemove("ItemGot", function(ent) 
		if (ent.bRemovedBySpawner) then return end
		self:fireEvent("onItemGot")
		self:respawn()
		
	end)
	
	if (self.spawnLifespan > 0 and self.nSpawnedItems < self.spawnLifespan) then
		self.nSpawnedItems = self.nSpawnedItems + 1
		if (self.nSpawnedItems >= self.spawnLifespan) then
			self:fireEvent("onLifespanEnd")
		end
	end
	
	self:playFXSpawned(ent)
	
	self:fireEvent("onSpawn")
end

function ENT:spawn(classname, bSkipSpawnCheck)
	if (CLIENT) then return end
	if (!self.bEnabled) then return end
	if (!self.bInit) then return end
	if (self.spawnLifespan > 0 and self.nSpawnedItems >= self.spawnLifespan) then return end
	if (bSkipSpawnCheck == nil) then
		bSkipSpawnCheck = false
	end
	if (!bSkipSpawnCheck) then
		if (self.bSpawning or self.bRespawning) then return end
	end
	
	local item = self.item
	if (isStrValid(classname)) then
		item = classname
	end


	local ent = ents.Create(item)
	
	if (!IsValid(ent)) then print(self:GetName() .. " failed to create an entity. ('" .. tostring(classname) .. "')") return end

	self.bSpawning = true
	
	self:fireEvent("onSpawnBegin")
	
	--we do this here because fx needs an accurate pos.
	if (!self:HasSpawnFlags(SF_NOSURFALIGN)) then
		local traceRes = util.QuickTrace(self.spawnPos, self.spawnSurfaceTraceDir, function() return false end)

		ent:SetPos(traceRes.HitPos + self.spawnOffset)
	else
		ent:SetPos(self:GetPos() + self.spawnOffset)
	end

	self:playFXSpawning(ent)
	
	timer.Simple(self.spawnDelay, function() 
		if (self == nil or self == NULL or !IsValid(self)) then return end
		if (!IsValid(ent)) then return end
		if (!self.bSpawning) then return end
		
		self:createItem(ent)
	end)
end


