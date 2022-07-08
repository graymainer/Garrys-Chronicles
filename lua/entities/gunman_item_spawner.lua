
ENT.Type = "point" --anim if we have a model. If it's point, we can't set our model.
ENT.DisableDuplicator = true



--you can put your global vars here



--your flags

SF_RESPAWN = 1
SF_DELETE_ON_LIMIT = 2
SF_FORCEHL2 = 4
SF_NOBEAMS = 8
SF_NOFX = 16

--

--your variables.

--core stuff
ENT.us = nil
ENT.bInit = false
ENT.bEnabled = true
ENT.item = "gc_medkit" --the item we are to spawn. This is the default item.

--spawning effects
ENT.fxBeam = nil --a reference to a beam entity.
ENT.fxSprite = "gctextures/gc_spnglw.vmt"
ENT.fxSound = "gcsfx/ammo_respawn.wav"

--item spawning logic
ENT.bSpawning = false --are we currently spawning an entity?
ENT.spawnLifespan = 0 --How many items can we spawn before we disable ourselves?
ENT.spawnQuantity = 1 --how many are spawned at once.
ENT.spawnDelay = 1.0 --how long after being told to spawn does the item spawn?
ENT.spawnMaxConcurrent = 1 --limit for how many items we can have spawned at once.
ENT.spawnedItems = {} --what items do we currently have spawned?


--item respawning logic	
ENT.respawnDelay = 5.0 --how long after we've been told to respawn do we respawn? spawnDelay applies here as well.
ENT.respawnDistance = 0.0 --disabled by default.
--



--your helper functions. These are ported from the garrys chronicles project. these bad boys make life easier.


--checks if the string is valid by making sure it isn't nil and that it isn't just white space or spaces.
function isStrValid(str)
	if (str == nil) then return false end
	str = string.Replace(str, " ", "")
	if (str == "") then return false end
return true end

--simple wrapper function made specifically to check if the str is invalid.
function isStrInvalid(str)
	return !isStrValid(str) 
end

--if the string contains only numeric characters return true. False if a single alphabetic character is found.
function strIsNum(str)
	if (isStrInvalid(str)) then return false end


	for i = 1, string.len(str), 1 do
		if (str[i] < '0' or str[i] > '9') then return false end
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

--checks if the keyvalue it is fed is actually valid or not. It uses isstrvalid to check. You can tell it that you only want numbers by passing true into the 3rd argument.
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
	print("\n\n========" .. self:GetClass() .. " - " .. name .. " Info========n\n")
	print("\n\n")
	
	--basic stuff.
	print("Name:", "", "", self:GetName())
	print("Flags:", "", "", self:GetSpawnFlags())
	print("Initialised?", "", self.bInit)
	print("Enabled?", "", self.bEnabled)
	
	--implementation
	print("Item to Spawn:", "", self.item)
	print("Beam Entity:", "", self.fxBeam)
	print("Sprite:", "", "", self.fxSprite)
	print("Sound:", "", "", self.fxSound)
	print("Spawn Quantity:", "", self.spawnQuantity)
	print("Spawn Delay:", "", self.spawnDelay)
	print("Respawn Delay:", "", self.respawnDelay)
	
	print("\n\n")
	PrintTable(self.spawnedItems)
	print("\n\n")
	
	
	if (self.spawnMaxConcurrent <= 0) then
		print("Max Concurrent Items:", "No Limit.")
	else
		print("Max Concurrent Items:", self.spawnMaxConcurrent)
	end
	
	if (self.spawnLifespan <= 0) then
		print("Spawner Lifespan:", "Infinite.")
	else
		print("Spawner Lifespan:", self.spawnLifespan)
	end
	
	if (self.respawnDistance <= 0.0) then
		print("Respawn Distance:", "Using default respawn behavior.")
	else
		print("Respawn Distance:", self.respawnDistance)
	end
		
	
	
	--footer
	print("\n\n")
	print("\n\n========Info END========n\n")
	print("\n\n")
end

--


--(IN ORDER OF EXECUTION!)

--here is where we read in all the keyvalues passed in to our entity. our specific object of this entity class.
function ENT:KeyValue( k, v )
	if (true) then return end


	if (isKey("spawnitem", k)) then
		if (isStrInvalid(v)) then return end
		if (isStrNum(v)) then
			local val = util.StringToType(v, "int")
			
			if (val == 1) then
				if (bGunmanSWEPS) then
					self.item = "gc_medkit"
				else
					self.item = "item_healthkit"
				end
			elseif (val == 2) then
				if (bGunmanSWEPS) then
					self.item = "gc_armor"
				else
					self.item = "item_battery"
				end
			elseif (val == 3) then
				if (bGunmanSWEPS) then
					self.item = "gunman_item_ammo_pistol"
				else
					self.item = "item_ammo_pistol"
				end
			elseif (val == 4) then
				self.item = "item_ammo_crossbow"
			elseif (val == 5) then
				if (bGunmanSWEPS) then
					self.item = "gunman_item_ammo_mechagun"
				else
					self.item = "item_ammo_smg1"
				end
			elseif (val == 6) then
				if (bGunmanSWEPS) then
					self.item = "gunman_item_ammo_shotgun"
				else
					self.item = "item_box_buckshot"
				end
			elseif (val == 7) then
				if (bGunmanSWEPS) then
					self.item = "gc_ammo_dmlrocket"
				else
					self.item = "weapon_frag"
				end
			else
				print(self, "tried to spawn an unknown item type from number. Ignoring.")
			end
		else --assume we've put in a classname.
			local testent = ents.Create(v) --try to create the entity from the class its trying to give us.

			if (testent == NULL) then --we couldn't, so clearly its not a valid class. Leave at default.
				print(self, "was given an unknown item to spawn. Ignoring.")
				return 
			end
			
			self.item = v
		end
		
	elseif (isKey("fxBeam", k)) then
		if (isStrInvalid(v)) then return end
		local beamEnt = ents.FindByName(v)[1]
		if (beamEnt == nil or beamEnt == NULL) then print(self, "was given a bad reference to a beam entity. Ignoring.") return end
		self.fxBeam = beamEnt
	
	elseif (isKey("fxSprite", k)) then
		if (isStrInvalid(v)) then print(self, "was given a non-existant vmt. Ignoring.") return end
		self.fxSprite = v
		
	elseif (isKey("fxSound", k)) then
		if (isStrInvalid(v)) then print(self, "was given a non-existant wav. Ignoring.") return end
		self.fxSound = v
		
	elseif (isKey("StartDisabled", k)) then
		if (isStrInvalid(v)) then return end
		
		if (v == "1") then
			self.bEnabled = true
		else
			self.bEnabled = false
		end
	elseif (isKey("spawnLifespan", k)) then
		if (isStrInvalid(v)) then return end
		if (!isStrNum(v)) then return end
		local val = util.StringToType(v, "int")
				
		if (val == nil or val < 0) then print(self, "was given a bad spawn limit. Ignoring.") return end
		
		self.spawnLifespan = val
		
	elseif (isKey("spawnMaxConcurrent", k)) then
		if (isStrInvalid(v)) then return end
		if (!isStrNum(v)) then return end
		local val = util.StringToType(v, "int")
				
		if (val == nil or val < 0) then print(self, "was given a bad spawn limit. Ignoring.") return end
		
		self.spawnMaxConcurrent = val
		
	elseif (isKey("spawnquantity", k)) then
		if (isStrInvalid(v)) then return end
		if (!isStrNum(v)) then return end
		local val = util.StringToType(v, "int")
				
		if (val == nil or val < 0) then print(self, "was given a bad spawn quantity. Ignoring.") return end
		
		self.spawnQuantity = val
	elseif (isKey("spawnDelay", k)) then
		if (isStrInvalid(v)) then return end
		if (!isStrNum(v)) then return end
		local val = util.StringToType(v, "float")
				
		if (val == nil or val < 0.0) then print(self, "was given a bad spawn quantity. Ignoring.") return end
		
		self.spawnDelay = val
	elseif (isKey("respawnDelay", k)) then
		if (isStrInvalid(v)) then return end
		if (!isStrNum(v)) then return end
		local val = util.StringToType(v, "float")
				
		if (val == nil or val < 0) then print(self, "was given a bad spawn quantity. Ignoring.") return end
		
		self.respawnDelay = val
	elseif (isKey("respawnDistance", k)) then
		if (isStrInvalid(v)) then return end
		if (!isStrNum(v)) then return end
		local val = util.StringToType(v, "float")
				
		if (val == nil or val < 0) then print(self, "was given a bad spawn quantity. Ignoring.") return end
		
		self.respawnDistance = val
	end

	--scans for outputs we made using this entity and stores them so we can trigger them later.
	if ( string.Left( k, 2 ) == "on" ) then --looks for keyvalues that begin with "on"
		self:StoreOutput( k, v )
	end

end

--we start main execution here.
function ENT:Initialize()
	self.bInit = true
	self.us = self
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
	if (isStrInvalid(name)) then	print(self:GetName() .. " was shot a bad input!") return end --you never know.
	if (strIsNum(name)) then print(self:GetName() .. " was fired an invalid input. Input name contained numbers.") self:KillGlobals() return false end

	self:SetupGlobals(activator, caller)




	--for every input we have in the fgd, we make an if statement for it. then we return true if we found our input, false if we didn't or something failed. (dont ask me why, im honestly not sure, just do it.)
	--caps dont matter
	if (isInput("spawn", name)) then
		if (strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given only numerical data.") self:KillGlobals() return false end
		if (isStrValid(data)) then
			self:spawnItem(data) --override our item and spawn the one given instead.
		else
			self:spawnItem(nil) --spawn whatever we have set to spawn.
		end

		
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

--

function ENT:playFX()
	if (self:HasSpawnFlags(SF_NOFX)) then return end
	if (isStrInvalid(self.fxSound)) then return end

	self:EmitSound(self.fxSound)
	
	if (isStrValid(self.fxSprite)) then
		--local spr = 
	end
	
	if (self:HasSpawnFlags(SF_NOBEAMS)) then return end
	if (!IsValid(self.fxBeam)) then return end

end

function ENT:respawn()
	if (!self.bInit) then return end
	if (!self:HasSpawnFlags(SF_RESPAWN)) then return end
	
	
	if (self.respawnDelay > 0.0) then
		timer.Simple(self.respawnDelay, function() 
			if (self == nil or self == NULL or !IsValid(self)) then return end
			self:spawnItem()
		end)
	else
		self:spawnItem()
	end

	
end

--looks for the given entity in our spawner table. if found it will return true the index of the found entity. nil otherwise.
function ENT:lookupEntityInSpawnerTable(ent)
	if (table.IsEmpty(self.spawnedItems)) then return end

	local hasEnt = false
	local index = 0

	for i = 1, #self.spawnedItems, 1 do
		if (self.spawnedItems[i] == ent) then
			hasEnt = true
			index = i
			break
		end
	end


	if (hasItem) then return index end
	
	return nil
end

function ENT:spawnItem(classname)
	if (CLIENT) then return end
	if (!self.bInit) then return end
	print(self)
	if (self.bSpawning) then return end
	
	local item = self.item
	if (isStrValid(classname)) then
		item = classname
	end



	local newEnt = ents.Create(item)
	
	if (!IsValid(newEnt)) then print(self:GetName() .. " failed to create an entity. ('", classname, "')") return end

	self.bSpawning = true
		
	table.insert(self.spawnedItems, newEnt)

	self:fireEvent("onSpawnBegin")

	self:playFX()
	
	if (self.spawnDelay > 0) then
		timer.Simple(self.spawnDelay, function() 
			if (self == nil or self == NULL or !IsValid(self)) then return end
			if (!IsValid(newEnt)) then return end
			if (!self.bSpawning) then return end
			
			newEnt:Spawn()
	
			local traceRes = util.QuickTrace(self:GetPos(), Vector(0,0,-10000), function() return false end)
	
			newEnt:SetPos(traceRes.HitPos + Vector(0,0,1))
			self:fireEvent("onSpawn")
			
			newEnt:CallOnRemove("ItemGot", function() 
				self:fireEvent("onItemGot")
				self:respawn()
				
				if (#self.spawnedItems == 1) then
					table.remove(self.spawnedItems, 1)
				else
					table.remove(self.spawnedItems, self:lookupEntityInSpawnerTable(newEnt))
				end
				
			end)
			
			self.bSpawning = false
		end)
	else
		newEnt:Spawn()
		
		local traceRes = util.QuickTrace(self:GetPos(), Vector(0,0,-10000), function() return false end)
		
		newEnt:SetPos(traceRes.HitPos + Vector(0,0,1))
		
		self:fireEvent("onSpawn")
		
		self.bSpawning = false
	end
end


