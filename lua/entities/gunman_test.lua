--[[
-Here is a working template for custom hammer implemented entities in gmod using glua.


-We can use spawnflag in the following manner:

-go into your fgd file.

-for the lua_run entity, which this template is based on; this is what its possible spawnflags look like.

--

--

-the 1 here represents the actual flag. The string is simply a user firendly name. 0 is the initial value. 0 means off, 1 means its on by default. It doesn't have to equal the same number. 1 will mean it will start with the flag on, and thats it. 0=off, 1=on.

-dont worry about the default spawnflags. You can give your flags the same numbers, so long as they dont exist within your entity. Otherwise, HasSpawnFlags() will get confused.

-so now to use it in lua implementation,

-create a global variable to hold the number of the flag you want, in our case, we want to create flag called "Say on Spawn". This flag will be identified as 1.

--
	spawnflags(flags) =
	[
		1  : "Say on Spawn": 0
	]
--

-make sure your flags are given an id in the following format. "1, 2, 3, 4, 5, 6". Because if they aren't, then hammer will show weird stuff in the ui.


-now we need a way to represent that flag in lua. (or not, but its just nice to have a global var for it. you could just use straight numbers though, if you're crazy enough.)
-so lets create a global variable.


SF_SAY_ON_SPAWN = 1 --notice that the value its equal to is the id of the flag it's supposed to represent.




then boom. done. simply check the entity if it has that flag by calling self:HasSpawnFlags(SF_SAY_ON_SPAWN) and bob's your uncle. The rest is implementation specific.


-- here is lua_run's implementation of spawnflags. in total.

FGD:
spawnflags(flags) =
[
	1  : "Run code on spawn": 0
]

LUA:

-create the variable
SF_LUA_RUN_ON_SPAWN = 1

-put it to use.
if ( self:HasSpawnFlags( SF_LUA_RUN_ON_SPAWN ) ) then --will check this entity if it has spawnflag with an id of 1, if so, true.
	self:RunCode( self, self, self:GetDefaultCode() )
end

The entity must use obhject specific functions and variables for any of its functionality. rarely should it use global functions or variables.

--]]

AddCSLuaFile()

SF_SAY_ON_SPAWN = 1

ENT.Type = "anim"
ENT.DisableDuplicator = true
ENT.thingToSay = "Hi"

--AccessorFunc( ENT, "m_bDefaultCode", "DefaultCode" )

function ENT:Initialize()

	if (self:HasSpawnFlags(SF_SAY_ON_SPAWN)) then
		self:testFunc()
	end

end

function ENT:KeyValue( key, value )

	if ( key == "saything" ) then
		self.thingToSay = value
	end
	
	if ( string.Left( key, 2 ) == "on" ) then
		print(key, value)
		self:StoreOutput( key, value )
	end

end

function ENT:SetupGlobals( activator, caller )

	ACTIVATOR = activator
	CALLER = caller

	if ( IsValid( activator ) && activator:IsPlayer() ) then
		TRIGGER_PLAYER = activator
	end

end

function ENT:KillGlobals()

	ACTIVATOR = nil
	CALLER = nil
	TRIGGER_PLAYER = nil

end

function ENT:testFunc()
	if (CLIENT) then return end
	print(self:GetName() .. "Says '" .. self.thingToSay .. "'.")
	
	self:TriggerOutput("onSaid", self) --NEVER pass data into the triggeroutput unless the output is intended PURELY to function as a getter. If you pass a 3rd argument into triggeroutput, it will ignore any data in the parameters that hammer gives it.
end

-- function ENT:RunCode( activator, caller, code )

	
	-- print("LUA_RUN:", "ACTIVATOR:", activator, "CALLER:", caller, "CODE:", code)

	-- self:SetupGlobals( activator, caller )

		-- RunString( code, "lua_run#" .. self:EntIndex() )

	-- self:KillGlobals()

-- end

function ENT:AcceptInput( name, activator, caller, data )

	if (name == "Test") then self:testFunc() return true end
	if (name == "setSayThing") then self.thingToSay = data return true end

	-- print(self:GetName() .. ": SOS")

	-- if ( name == "RunCode" ) then self:RunCode( activator, caller, self:GetDefaultCode() ) return true end
	-- if ( name == "RunPassedCode" ) then self:RunCode( activator, caller, data ) return true end

	return false

end
