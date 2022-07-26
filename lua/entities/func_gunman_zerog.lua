
include("gunman/gunmanUtil.lua") --includes our utility library.
include("gunman/gunmanZeroGCore.lua") --actually gives us the ability to put things into zero gravity.

--AddCSLuaFile() if its anim
ENT.Type = "brush" --anim if we have a model. If it's point, we can't set our model.
ENT.DisableDuplicator = true






--you can put your global vars here



--your flags

SF_RESET = 1

--

--your variables.

--base
ENT.bInit = false
ENT.bEnabled = true
--

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
	
	--conditional example
	if (true) then
		print("Is True?", "Yes")
	else
		print("Is True?", "No")
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

	if ( isKey("targetname", k) ) then
		if (self:isKeyValueInvalid(k, v, false)) then return end

		--do something
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
	if (true) then
		--do thing
	else
		return false --explode
	end
	

	return true
end

--we start main execution here.
function ENT:Initialize()
	if (!self:verifyKeys()) then print(self, "encountered a critical error and can not continue.") return end
	
	self.bInit = true --at the end of everything in initialize(), tell everything else that we're ready for lift off.
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

--[[---------------------------------------------------------
	Name: StartTouch
-----------------------------------------------------------]]
function ENT:StartTouch( entity )
	if (!self.bEnabled or !self.bInit) then return end

	self:fireEvent("OnTrigger")
	self:fireEvent("onEnter")
	self:makeZeroG(entity)
end

--[[---------------------------------------------------------
	Name: EndTouch
-----------------------------------------------------------]]
function ENT:EndTouch( entity )
	if (!self.bEnabled or !self.bInit) then return end
	if (!self:HasSpawnFlags(SF_RESET)) then return end
	
	self:fireEvent("OnTrigger")
	self:fireEvent("onExit")
	self:makeZeroG(entity, true) --resets the object.
end

--[[---------------------------------------------------------
	Name: Touch
-----------------------------------------------------------]]
function ENT:Touch( entity )
end


--