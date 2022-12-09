--[[
	===---EQUIP ENTITY FOR THE GARRY'S CHRONICLES PROJECT---===

	Feel free to use this code and upload entites based on this code to the workshop however you please. 
	I'd only ask that you credit me as the original coder.
	Of course i cant force you to. 
	But just dont be an ass. credit the original author. I spent a ton of time figuring this garbage fire out and coding this.

	This entity will allow a level designer to equip a player with the created loadout of weapons (through spawn flags in hammer). 
	It will switch between gunman weapons and half life 2 weapons depending on if the 
	addon for gunman sweps is installed and mounted or not. 


	the fgd is hosted here: https://github.com/graymainer/Garrys-Chronicles/blob/main/gunman.fgd


	the definition begins now:

//Uses a loadout system to allow a map designer to control what weapons the player will have by adding and removing weapons from a loadout.
// Could use a table based redesign...
@PointClass base(Targetname) iconsprite("gunman/editor/gunman_equip") = gunman_equip : "This entity is apart of the Garry's Chronicles project. \n" + "This entity will equip the activator with the specified weaponry. \n" + "It will replace these weapons with gunman sweps if they are found in the user's addons. \n" + "Weapons are specified through spawn flags. \n" + "Default weapon types: (melee, pistol, shotgun, sniper, machinegun, launcher, grenade(s))"
[
	spawnflags(flags) =
	[
		1		:	"Melee"							: 0
		2		:	"Pistol"						: 0
		4		:	"Sniper" 						: 0
		8		:	"Machinegun"					: 0
		16		:	"Shotgun"						: 0
		32		:	"Rocket Launcher"				: 0
		64		:	"Grenades"						: 0
		128		:	"Strip Before Equip"			: 1
		256		:	"Force Vanilla Weapons"			: 0
		512		:	"Equip All Players"				: 1
		1024	:	"Equip on Spawn"				: 1
	]
	
	nades(integer)										: "Grenades" 			: 		2 		: "How many grenades should we give? (If any)"
	ammomulti(float)									: "Ammo Amount" 	: 	"1.0" 	: "How much ammo should we give generally? Acts as a mutliplier. Can be set to zero to avoid giving any ammo. (based on default amount of ammo recieved when SWEP is given.)"

	input equipLoadout(void)							: "Equips the player(s) with whatever weapons are in our loadout. If activator is null, it will equip player 1. If 'Equip All Players' is ticked, all players will be equipped."
	input add(string)									: "Will add the given weapon to the loadout. Choose from one of the default weapon types. (refer to help)"
	input remove(string)								: "Will remove the given weapon from the loadout. Will also remove it from the player. If not given a weapon, it will remove all. Choose from one of the default weapon types. (refer to help) If 'Equip All Players' is ticked, all players will be stripped of the weapon. If the activator is null, we will go for player 1."
	input setAmmoMultiplier(float)						: "Sets the ammo multiplier."
	input toggle(string)								: "Toggles whether a weapon is in our loadout or not. Choose from one of the default weapon types. (refer to help) "
	input clearLoadout(void)							: "Removes all guns from the loadout. All the current weapons will be stripped from the player. If 'Equip All Players' is ticked, all players will be stripped. "
	input giveAll(void)									: "Adds all weapons to the loadout."
	
	output onEquipped(void)								: "Fires when we equipped something."
	output onCleared(void)								: "Fires when we cleared all guns."
	output onGiveAll(void)								: "Fires when we gave all guns."
	output onGunsChanged(void)							: "Fires when our catalogue of collected guns have changed."
	
]


--]]

ENT.Type = "point"
ENT.DisableDuplicator = true


--you can put your global vars here



--your flags

-- what guns we got?
SF_MELEE = 1
SF_PISTOL = 2
SF_SNIPER = 4
SF_MACHINEGUN = 8
SF_SHOTGUN = 16
SF_LAUNCHER = 32
SF_FRAGS = 64

--other misc stuff
SF_STRIP = 128 --should we strip the player before equipping them?
SF_FORCEHL2WPNS = 256 --should we skip the check for gunman weapons and just equip with hl2 weapons?
SF_ALLPLAYERS = 512 --should we say fuck it and go for all players instead of activator or player 1? (if activator is null)
SF_AUTOEQUIP = 1024 --should we equip whenever a player spawns/respawns?
--SF_UPDATEEQUIP = 2048 --should we equip whenever the loadout changes?

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


include("gunman/gunmanUtil.lua") --include that useful utility library baby

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



--(IN ORDER OF EXECUTION!)

--here is where we read in all the keyvalues passed in to our entity. our specific object of this entity class.
function ENT:KeyValue( k, v )

	if ( isKey("nades", k) ) then
		if (self:isKeyValueInvalid(k, v, true)) then return end
		local val = util.StringToType(v, "int")
		if (!isValValid(val) or val <= 0) then print(self:GetName() .. " was given a bad grenade count. Ignoring.") return end
		
		self.nGrenades = val
	elseif ( isKey("ammomulti", k) ) then
		if (self:isKeyValueInvalid(k, v, true)) then return end
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

function ENT:stripPlayer(ent, itemToTake)
	--if (!self:HasSpawnFlags(SF_STRIP)) then return end --What?
	
	

	if (self:HasSpawnFlags(SF_ALLPLAYERS)) then

		local plys = player.GetAll()
		for i = 1, #plys, 1 do
			if (itemToTake == nil or itemToTake == NULL) then
				plys[i]:StripWeapons()
			else
				plys[i]:StripWeapon(getItemFromType(itemToTake, false, self:HasSpawnFlags(SF_FORCEHL2WPNS)))
			end
			
		end
		
	elseif (ent != nil and ent != NULL and ent:IsPlayer()) then
			
		if (itemToTake != nil and itemToTake != NULL) then
			ent:StripWeapon(getItemFromType(itemToTake, false, self:HasSpawnFlags(SF_FORCEHL2WPNS)))
		else
			ent:StripWeapons()
		end
	else
		if (itemToTake == nil or itemToTake == NULL) then
			plys[1]:StripWeapons()
		else
			plys[1]:StripWeapon(getItemFromType(itemToTake, false, self:HasSpawnFlags(SF_FORCEHL2WPNS)))
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
	if (isStrInvalid(name)) then	print(self:GetName() .. " was shot a bad input!") return end --you never know.
	if (strIsNum(name)) then print(self:GetName() .. " was fired an invalid input. Input name contained numbers.") self:KillGlobals() return false end

	self:SetupGlobals(activator, caller)




	--for every input we have in the fgd, we make an if statement for it. then we return true if we found our input, false if we didn't or something failed. (dont ask me why, im honestly not sure, just do it.)
	--caps dont matter
	
	-- gives the player whatever we got in our loadout.
	if (isInput("equipLoadout", name)) then
		self:equipPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	-- adds a gun to the loadout. Note, that this alone will not give the player anything. To do so, you must call equipLoadout or have the 'Auto Equip on Loadout Change' flag on.
	if (isInput("add", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input wasn't given a weapon name.") self:KillGlobals() return false end
		if (strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given bad data.") self:KillGlobals() return false end

		--we use iskey because it just works
		--and yes, im aware this is lookin like yandere code, but fuck it, its the only way i know how damnit
		if (isKey("melee", data)) then
			self.bMelee = true
		elseif (isKey("pistol", data)) then
			self.bPistol = true
		elseif (isKey("sniper", data)) then
			self.bSniper = true
		elseif (isKey("machinegun", data)) then
			self.bMachineGun = true
		elseif (isKey("shotgun", data)) then
			self.bShotgun = true
		elseif (isKey("launcher", data)) then
			self.bLauncher = true
		elseif (isKey("grenades", data)) then
			self.bFrags = true
		end
		
		self:fireEvent("onGunsChanged")

		self:equipPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	-- removes a gun from our loadout. Removes all if nothing is given. takes away the weapon(s) from the player.
	if (isInput("remove", name)) then
	
		if (isStrInvalid(data)) then
			self.bMelee = false
			self.bPistol = false
			self.bSniper = false
			self.bMachineGun = false
			self.bShotgun = false
			self.bLauncher = false
			self.bFrags = false
			
			self:fireEvent("onGunsChanged")
			self:fireEvent("onCleared")
		else
			--we use iskey because it just works
			--and yes, im aware this is lookin like yandere code, but fuck it, its the only way i know how damnit
			if (isKey("melee", data)) then
				self.bMelee = false
			elseif (isKey("pistol", data)) then
				self.bPistol = false
			elseif (isKey("sniper", data)) then
				self.bSniper = false
			elseif (isKey("machinegun", data)) then
				self.bMachineGun = false
			elseif (isKey("shotgun", data)) then
				self.bShotgun = false
			elseif (isKey("launcher", data)) then
				self.bLauncher = false
			elseif (isKey("grenades", data)) then
				self.bFrags = false
			end
			
			self:fireEvent("onGunsChanged") -- acts as an update.
		end
		
		self:equipPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end

	--adds a gun to or removes a gun from our loadout. will take away the gun if removing.
	if (isInput("toggle", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. "'s " .. name .. " input wasn't given a weapon name.") self:KillGlobals() return end
		
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
		
		self:equipPlayer(activator)
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	-- empties the loadout and removes all the player's weaponry.
	if (isInput("clearLoadout", name)) then
				
		self.bMelee = false
		self.bPistol = false
		self.bSniper = false
		self.bMachineGun = false
		self.bShotgun = false
		self.bLauncher = false
		self.bFrags = false
		
		self:fireEvent("onGunsChanged")
		self:fireEvent("onCleared")
		
		
		self:equipPlayer(activator)
		
		-- shouldn't we just say fuck it and strip everyone here?
		-- if (activator != nil and activator:IsPlayer()) then
		-- 	self:stripPlayer(activator)
		-- elseif (caller != nil and caller:IsPlayer()) then
		-- 	self:stripPlayer(caller)
		-- end
		
		self:KillGlobals() --every if statement should end with this. Kill globals, including in return end statements.
	return true end
	
	-- Adds all weapons to the loadout. Doesn't actually give the player squat though
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
function ENT:equip(ent) -- TODO: finalize the class names.

	if (!IsValid(ent)) then return end
	

	if (self:HasSpawnFlags(SF_STRIP)) then
		ent:StripWeapons()
	end

	if (self.bMelee) then
		if (self:HasSpawnFlags(SF_FORCEHL2WPNS) or !bGunmanSWEPS) then
			ent:Give("weapon_crowbar", true)
		else
			ent:Give("gunman_weapon_knife", true) 
			
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

