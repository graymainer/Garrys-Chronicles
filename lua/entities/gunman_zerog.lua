
include("gunman/gunmanUtil.lua") --includes our utility library.
include("gunman/gunmanZeroGCore.lua") --actually gives us the ability to put things into zero gravity.

--AddCSLuaFile() if its anim
ENT.Type = "point" --anim if we have a model. If it's point, we can't set our model.
ENT.DisableDuplicator = true






--you can put your global vars here



--your flags



--

--your variables.

--base
ENT.bInit = false
ENT.bEnabled = true
--

ENT.autoTarget = nil --the target entites to automatically put into zerog.

--



--nice debug function that will print out to you all the data related to the entity.
function ENT:printInfo()

	local name = self:GetName()

	if (isStrInvalid(name)) then
		name = tostring(self)
	end
	--header
	print("\n\n========" .. self:GetClass() .. " - " .. name .. " Info========\n\n")
	
	--basic stuff.
	print("Name:", "", "", self:GetName())
	print("Flags:", "", "", self:GetSpawnFlags())
	print("Initialised?", "", self.bInit)
	print("Enabled?", "", self.bEnabled)
	
	--implementation
	--print("Implement me:", "", self:GetPos())
	
	
	--footer
	print("\n")
	print("\n\n========Info END========\n\n")
	print("\n\n")
end

--



--(IN ORDER OF EXECUTION!)

--here is where we read in all the keyvalues passed in to our entity. our specific object of this entity class.
function ENT:KeyValue( k, v )

	if ( isKey("entity", k) ) then
		if (isStrInvalid(v)) then return end
		

		self.autoTarget = v
	elseif (isKey("StartDisabled", k)) then
		if (v == "1") then 
			self.bEnabled = false
		end

	end

	--scans for outputs we made using this entity and stores them so we can trigger them later.
	if ( string.Left( k, 2 ) == "on" ) then --looks for keyvalues that begin with "on". NOTE: all outputs for GLUAH based entites need to start with 'on', otherwise they will be treated as a regular keyvalue.
		self:StoreOutput( k, v )
	end

end

--checks keys that may be invalid that could not be checked during ENT:KeyValue. Can return false in an absolute emergency.
function ENT:verifyKeys()
	
	if (self.autoTarget != nil) then
		
		local ents = ents.FindByName(self.autoTarget)
		local tgt = self.autoTarget
		
		if (ents == nil or table.IsEmpty(ents) or ents[1] == nil or ents[1] == NULL) then self.autoTarget = nil return true end
		
		self.autoTarget = {}
		for i = 1, #ents, 1 do
			if (ents[i] != nil and ents[i] != NULL) then
				table.insert(self.autoTarget, ents[i])
			else
				print(self, "was given an entity that was NULL.", "Target: '" .. tgt .. "'")
			end
		end
		
		
	end
	

	return true
end

--we start main execution here.
function ENT:Initialize()
	if (!self:verifyKeys()) then print(self, "encountered a critical error and can not continue.") return end
	
	self.bInit = true --at the end of everything in initialize(), tell everything else that we're ready for lift off.
	
	if (self.autoTarget != nil and self.bEnabled) then
		self:makeZeroG(self.autoTarget)
	end
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
	if (!isStrValid(name)) then	print(self:GetName() .. " was shot a bad input!") return end --you never know.
	if (strIsNum(name)) then print(self:GetName() .. " was fired an invalid input. Input name contained numbers.") self:KillGlobals() return false end

	self:SetupGlobals(activator, caller)




	--for every input we have in the fgd, we make an if statement for it. then we return true if we found our input, false if we didn't or something failed. (dont ask me why, im honestly not sure, just do it.)
	--caps dont matter
	if (isInput("enter", name)) then
		if (strIsInvalidEntity(data, true)) then print(self:GetName() .. "'s " .. name .. " input was given a bad target name.") self:KillGlobals() return false end

		self:makeZeroG(data)
		self:KillGlobals() --before ending Kill globals.
	return true end
	
	if (isInput("leave", name)) then
		if (strIsInvalidEntity(data, true)) then print(self:GetName() .. "'s " .. name .. " input was given a bad target name.") self:KillGlobals() return false end

		self:makeZeroG(data, true)
		self:KillGlobals() --before ending Kill globals.
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
	
	--perfect, simplest example of how to implement one of our functions into hammer's i/o.
	if (isInput("printInfo", name)) then		
		self:printInfo()
		self:KillGlobals()
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

