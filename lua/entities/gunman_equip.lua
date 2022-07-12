--[[
	===---EQUIP ENTITY FOR THE GARRY'S CHRONICLES PROJECT---===

	Feel free to use this code and upload entites based on this code to the workshop however you please. 
	I'd only ask that you credit me as the original coder.
	Of course if you dont, i wont send a legal team after you. 
	But just dont be an ass and credit the original author. I spent a ton of time figuring this garbage fire out and coding this.

	This entity will equip a entity with the chosen weapons (through spawn flags in hammer). 
	It will switch between gunman weapons and half life 2 weapons depending on if the 
	addon for gunman sweps is installed and mounted or not. 


	my fgd file is hosted here: https://github.com/graymainer/Garrys-Chronicles/blob/main/gunman.fgd


	the definition begins now:

@PointClass base(Targetname) iconsprite("gunman/editor/gunman_equip") = gunman_equip : "This entity is apart of the Garry's Chronicles project. \n" + "This entity will equip the activator with the specified weaponry. \n" + "It will replace these weapons with gunman sweps if they are found in the user's addons. \n" + "Weapons are specified through spawn flags."
[
	spawnflags(flags) =
	[
		1		:	"Crowbar / Knife"		: 0
		2		:	"Pistol"				: 0
		4		:	"Sniper" 				: 0
		8		:	"Machinegun"			: 0
		16		:	"Shotgun"				: 0
		32		:	"Rocket Launcher"		: 0
		64		:	"Grenades"				: 0
		128		:	"Strip Before Equip"	: 1
		256		:	"Force Vanilla Weapons"	: 0
		512		:	"Equip All Players"		: 1
		1024	:	"Equip on Spawn"		: 1
	]
	
	nades(integer)										: "Grenades" 			: 		2 		: "How many grenades should we give? (If any)"
	ammomulti(float)									: "Ammo Amount" 	: 	"1.0" 	: "How much ammo should we give generally? Acts as a mutliplier. Can be set to zero to avoid giving any ammo. (based on default amount of ammo recieved when SWEP is given.)"

	input equip(void)									: "Equips the entity. If activator is null, it will equip player 1. If 'Equip All Players' is ticked, all players will be equipped."
	input setAmmoMultiplier(float)						: "Sets our ammo multiplier."
	input toggleGun(string)								: "Enter Melee, Pistol, Sniper, Machinegun, Shotgun, Launcher, or Grenades to toggle if you have that weapon type or not. For example, if you got the crowbar, input us: 'toggleGun melee (caps dont matter)' and if we didn't think you had melee already, then we'll set melee to true."
	input clearAllGuns(void)							: "Clears all guns. No weapons will be given."
	input giveAll(void)									: "Enables all guns. All weapons will be given."
	
	output onEquipped(void)								: "Fires when we equipped something."
	output onCleared(void)								: "Fires when we cleared all guns."
	output onGunsChanged(void)							: "Fires when our catalogue of collected guns have changed."
	
]


--]]

ENT.Type = "point"
ENT.DisableDuplicator = true


--you can put your global vars here



--your flags

SF_MELEE = 1
SF_PISTOL = 2
SF_SNIPER = 4 --this one is gunman specific.
SF_MACHINEGUN = 8
SF_SHOTGUN = 16
SF_LAUNCHER = 32
SF_FRAGS = 64
SF_STRIP = 128 --should we strip the player before equipping them?
SF_FORCEHL2WPNS = 256 --should we skip the check for gunman weapons and just equip with hl2 weapons?
SF_ALLPLAYERS = 512 --should we say fuck it and go for all players instead of activator or player 1? (if activator is null)
SF_AUTOEQUIP = 1024 --should we equip whenever a player spawns/respawns?

--

--your variables.

ENT.bMelee = false
ENT.bPistol = false
ENT.bSniper = false
ENT.bMachineGun = false
ENT.bShotgun = false
ENT.bLauncher = false
ENT.bFrags = false

ENT.nGrenades = 2
ENT.ammoMulti = 1.0

--


--your helper functions. These are ported from the garrys chronicles project. these bad boys make life easier.


--checks if the string is valid by making sure it isn't nil and that it isn't just white space or spaces.
function isStrValid(str)
	if (str == nil) then return false end
	str = string.Replace(str, " ", "")
	if (str == "") then return false end
return true end

--checks if the string contains letters. If it does, return false, if it doesn't, it returns true.
--if the string contains only numeric characters return true. False if a single alphabetic character is found.
local function isStrNum(str, bIgnoreMinus) --backport from gunman_item_spawner, apparently another module has a isStrNum, so we do local to avoid issues.
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

--same as above, but for if you dont want numbers. Returns true if it contains numeric characters. False if it doesn't.
function strNoNum(str)
	for i = 1, string.len(str), 1 do
		if (str[i] >= '0' and str[i] <= '9') then return true end
	end
	
	return false
end

--same as isStrValid, but for numbers.
function isValValid(val)

	if (val == nil) then return false end

	if (!isnumber(val)) then return false end

return true end

--checks if the keyvalue it is fed is actually valid or not. It uses isstrvalid to check. You can tell it that you only want numbers by passing true into the 3rd argument.
function ENT:isKeyValueValid(k, v, bOnlyNumber)
	if (bOnlyNumber == nil) then bOnlyNumber = false end
	local name = self:GetName()
	if (!isStrValid(name)) then name = "*Unknown Equipper Entity*" end

	if (!isStrValid(k) ) then print(name .. " recieved a bad key.") return false end
	if (!isStrValid(v)) then print(name .. " recieved a bad value from key '" .. k .. "'.") return false end


	if (bOnlyNumber) then
		if (!isStrNum(v)) then print(name .. "'s number only key ('" .. k .. "') was given a value that did not contain only numerical values. ('" .. v .. "')") return end
	end
	

	return true
end

--checks if the name is actually a key. Normalizes the input, so caps do not matter.
function isKey(key, name)
	--normalize.
	key = string.lower(key)
	name = string.lower(name)

	if (!isStrValid(key) or !isStrValid(name)) then return false end

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

--


--(IN ORDER OF EXECUTION!)

--here is where we read in all the keyvalues passed in to our entity. our specific object of this entity class.
function ENT:KeyValue( k, v )

	if ( isKey("nades", k) ) then
		if (!self:isKeyValueValid(k, v, true)) then return end
		local val = util.StringToType(v, "int")
		if (!isValValid(val) or val <= 0) then print(self:GetName() .. " was given a bad grenade count. Ignoring.") return end
		
		self.nGrenades = val
	elseif ( isKey("ammomulti", k) ) then
		if (!self:isKeyValueValid(k, v, true)) then return end
		local val = util.StringToType(v, "float")
		if (!isValValid(val) or val < 0) then print(self:GetName() .. " was given a bad ammo multiplier. Ignoring.") return end
		
		self.ammoMulti = val
	end

	--scans for outputs we made using this entity and stores them so we can trigger them later.
	if ( string.Left( k, 2 ) == "on" ) then --looks for keyvalues that begin with "on"
		self:StoreOutput( k, v )
	end

end

function ENT:processGunFlags()
	if (self:HasSpawnFlags(SF_MELEE)) then
		self.bMelee = true
	end

	if (self:HasSpawnFlags(SF_PISTOL)) then
		self.bPistol = true
	end

	if (self:HasSpawnFlags(SF_SNIPER)) then
		self.bSniper = true
	end

	if (self:HasSpawnFlags(SF_MACHINEGUN)) then
		self.bMachineGun = true
	end

	if (self:HasSpawnFlags(SF_SHOTGUN)) then
		self.bShotgun = true
	end

	if (self:HasSpawnFlags(SF_LAUNCHER)) then
		self.bLauncher = true
	end

	if (self:HasSpawnFlags(SF_FRAGS)) then
		self.bFrags = true
	end
end

--we start main execution here.
function ENT:Initialize()
	self:processGunFlags()

	if (self:HasSpawnFlags(SF_AUTOEQUIP)) then
		hook.Add("PlayerSpawn", "HK_PLYSPN", function(ply, transition) 
			if (!transition) then
				timer.Simple(0.1, function() self:equip(ply) end)
			end
		end)
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

function ENT:stripPlayer(activator)
	if (!self:HasSpawnFlags(SF_STRIP)) then return end

	if (activator != nil and activator != NULL and activator:IsPlayer()) then
		activator:StripWeapons()
	else
		local plys = player.GetAll()
		if (self:HasSpawnFlags(SF_ALLPLAYERS)) then
			for i = 1, #plys, 1 do
				plys[i]:StripWeapons()
			end
		else
			plys[1]:StripWeapons()
		end
		
	end
end

function ENT:equipPlayer(activator)
	
	if (activator != nil and activator != NULL and activator:IsPlayer()) then
		self:equip(activator)
	else
		local plys = player.GetAll()
		if (self:HasSpawnFlags(SF_ALLPLAYERS)) then
			for i = 1, #plys, 1 do
				self:equip(plys[i])
			end
		else
			self:equip(plys[1])
		end
		
	end
end

--the heart and soul of this entity. This baby reads in hammer i/o input and translates it into LUA calls. This will allow you to use the inputs in the fgd in hammer to actually use this entity in the map with hammer's scripting.
function ENT:AcceptInput( name, activator, caller, data )
	if (CLIENT) then self:KillGlobals() return false end --mostly becuase we use getname in our error printouts.
	if (!isStrValid(name)) then	print(self:GetName() .. " was shot a bad input!") return end --you never know.
	if (isStrNum(name)) then print(self:GetName() .. " was fired an invalid input. Input name contained numbers.") self:KillGlobals() return false end

	self:SetupGlobals(activator, caller)




	--for every input we have in the fgd, we make an if statement for it. then we return true if we found our input, false if we didn't or something failed. (dont ask me why, im honestly not sure, just do it.)
	--caps dont matter
	if (isInput("equip", name)) then
		--if (!isStrNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given non numerical data.") self:KillGlobals() return false end
		--local val = util.StringToType(data, "int")
		--if (!isValValid(val)) then self:KillGlobals() return false end 

		self:equipPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	if (isInput("strip", name)) then
		self:stripPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end

	if (isInput("toggleGun", name)) then
		if (!isStrValid(data)) then self:KillGlobals() return end
		
		--we use iskey because it just works
		--and yes, im aware this is lookin like yandere code, but fuck it, its the only way i know how damnit
		if (isKey("melee", data)) then
			self.bMelee = !self.bMelee
		elseif (isKey("pistol", data)) then
			self.bPistol = !self.bPistol
		elseif (isKey("sniper", data)) then
			self.bSniper = !self.bSniper
		elseif (isKey("machinegun", data)) then
			self.bMachineGun = !self.bMachineGun
		elseif (isKey("shotgun", data)) then
			self.bShotgun = !self.bShotgun
		elseif (isKey("launcher", data)) then
			self.bLauncher = !self.bLauncher
		elseif (isKey("grenades", data)) then
			self.bFrags = !self.bFrags
		end
		
		self:fireEvent("onGunsChanged")
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	if (isInput("clear", name)) then
				
		self.bMelee = false
		self.bPistol = false
		self.bSniper = false
		self.bMachineGun = false
		self.bShotgun = false
		self.bLauncher = false
		self.bFrags = false
		
		self:fireEvent("onGunsChanged")
		self:fireEvent("onCleared")
		self:stripPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	if (isInput("giveAll", name)) then
		
		self.bMelee = true
		self.bPistol = true
		self.bSniper = true
		self.bMachineGun = true
		self.bShotgun = true
		self.bLauncher = true
		self.bFrags = true
		
		self:fireEvent("onGunsChanged")
		self:fireEvent("onGiveAll")
		self:equipPlayer(activator)
		
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
function ENT:equip(ent) --TODO LATER: fix these to use dopey's class names for the gunman weapons.

	if (!IsValid(ent)) then return end
	

	if (self:HasSpawnFlags(SF_STRIP)) then
		ent:StripWeapons()
	end

	if (self.bMelee) then
		if (self:HasSpawnFlags(SF_FORCEHL2WPNS) or !bGunmanSWEPS) then
			ent:Give("weapon_crowbar", true)
		else
			ent:Give("gunman_weapon_knife", true) 
			--ent:Give("gunman_weapon_fists", true) --knife gives fists automatically.
		end
	end

	if (self.bPistol) then
		if (self:HasSpawnFlags(SF_FORCEHL2WPNS) or !bGunmanSWEPS) then
			ent:Give("weapon_pistol", false)
			ent:GiveAmmo(18 * self.ammoMulti, "Pistol", true)
		else
			ent:Give("gunman_weapon_pistol", false)
			ent:GiveAmmo(35 * self.ammoMulti, "Pistol", true)
		end
	end

	if (self.bSniper) then
		ent:Give("weapon_crossbow", false) --we dont have the sniper kit ported currently, so just do this for now.
		ent:GiveAmmo(5 * self.ammoMulti, "XBowBolt", true)
	end

	if (self.bMachineGun) then
		if (self:HasSpawnFlags(SF_FORCEHL2WPNS) or !bGunmanSWEPS) then
			ent:Give("weapon_smg1", false)
			ent:GiveAmmo(75 * self.ammoMulti, "Smg1", true)
		else
			ent:Give("gunman_weapon_mechagun", true)
			ent:GiveAmmo(30 * self.ammoMulti, "Smg1", true)
		end
	end

	if (self.bShotgun) then
		if (self:HasSpawnFlags(SF_FORCEHL2WPNS) or !bGunmanSWEPS) then
			ent:Give("weapon_shotgun", false)
			ent:GiveAmmo(22 * self.ammoMulti, "Buckshot", true)
		else
			ent:Give("gunman_weapon_shotgun", true)
			ent:GiveAmmo(16 * self.ammoMulti, "Buckshot", true)
		end
	end

	if (self.bLauncher) then
		ent:Give("weapon_rpg", false) --we dont have the MULE launcher ported currently, so just do this for now.
		ent:GiveAmmo(2 * self.ammoMulti, "RPG_Round", true)
	end

	if (self.bFrags) then
		ent:Give("weapon_frag", false) --we dont have the grenades ported currently, so just do this for now.
		ent:GiveAmmo(self.nGrenades - 1, "Grenade", true)
	end

	self:fireEvent("onEquipped")
end

