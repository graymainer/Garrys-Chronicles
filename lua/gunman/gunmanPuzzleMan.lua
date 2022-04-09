--stuff for the secret club




--DEVELOPER'S EYES ONLY!


--not that i can enforce that.
--all i can say is just dont read this code, it will spoil all of the fun
--but i guess if you dont like fun and just want the answer, then i cant stop you.

--or if you've already solved it and have to come to look at the code to learn, welcome! welcome to lua17!
--most stuff should be documented.

















































if (!SERVER) then return end

if (game.GetMap() != "gc_city02" and game.GetMap() != "gc_city03_22_2") then return end

local computer = ents.FindByName("justinspc")[1]--attempts to load a reference, will be checked when first starting. the only reason we load this is mainly for debugger reasons. when lua refreshes, we dont want to have to go through the cvar again to test, so we try here as well.

local computerPos --the position of the computer. used for a bunch of stuff. needs set if computer is valid.

spawnedEnts = {} --keeps track of the entites spawned by the player. --SHOULD BE LOCAL

bNoclip = false --is the player noclipping?

bCompDone = false --is the computer segment of the puzzle done?
bDisableNoclip = false --how bout you noclip yourself some b


function catalogueSpawnedEnt(ent)

	table.insert(spawnedEnts, ent)

end





--hooks galore BEGIN

hook.Add("PlayerDeath", "HK_PLYDIE", function(ply, model, entity) --for anti-noclip
	bNoclip = false

end)

hook.Add("OnCleanup", "HK_CLEANUP", function(ply, model, entity) --to fix the soundscapes.
	local soundscapesNormal = ents.FindByName("tproom_soundscape0")
	for i = 1, table.maxn(soundscapesNormal), 1 do
	
		if (!IsValid(soundscapesNormal[i])) then bBad = true print("GUNMAN: ~ERROR~ a soundscapesNormal reference was nil!") break end
	
	end
	
	if (bBad) then return end
	
	for i = 1, table.maxn(soundscapesNormal), 1 do
	
		soundscapesNormal[i]:Fire("Disable")
	
	end
	
	local soundscapeWeird = ents.FindByName("tproom_soundscape1")[1]
	if (!IsValid(soundscapeWeird)) then print("GUNMAN: ~ERROR~ soundscapeWeird reference was nil!") return end
	
	
	soundscapeWeird:Fire("Enable")			
	
end)

hook.Add("PlayerSpawnedEffect", "HK_SPAWNEDEFFECT", function(ply, model, entity) 
	if (bCompDone) then return end --by that point, we'll just prevent them from spawing anything at all.

	catalogueSpawnedEnt(entity)
	
end)

hook.Add("PlayerSpawnedNPC", "HK_SPAWNEDNPC", function(ply, ent) 
	if (bCompDone) then return end --by that point, we'll just prevent them from spawing anything at all.

	catalogueSpawnedEnt(ent)
	
end)

hook.Add("PlayerSpawnedProp", "HK_SPAWNEDPROP", function(ply, model, entity) 
	if (bCompDone) then return end --by that point, we'll just prevent them from spawing anything at all.

	catalogueSpawnedEnt(entity)
	
end)

hook.Add("PlayerSpawnedRagdoll", "HK_SPAWNEDDOLL", function(ply, model, ent) 
	if (bCompDone) then return end --by that point, we'll just prevent them from spawing anything at all.

	catalogueSpawnedEnt(ent)
	
end)

hook.Add("PlayerSpawnedSENT", "HK_SPAWNEDSENT", function(ply, ent) 
	if (bCompDone) then return end --by that point, we'll just prevent them from spawing anything at all.

	catalogueSpawnedEnt(ent)
	
end)

hook.Add("WeaponEquip", "HK_GOTWEAPON", function(weapon, owner) 
	if (!bCompDone) then return end
	
	local sparker = ents.Create("env_spark")		
	if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
	
	
	sparker:SetKeyValue("Magnitude", "5")
	sparker:SetKeyValue("TrailLength", "3")
	sparker:SetPos(owner:GetPos())
	sparker:Fire("SparkOnce")
	sound.Play("teleport0", owner:GetPos())		
	
	weapon:Remove()
	
	sparker:Fire("Kill")
	
end)

hook.Add("PlayerSpawnedVehicle", "HK_SPAWNEDCAR", function(ply, ent) 
	if (bCompDone) then return end--by that point, we'll just prevent them from spawing anything at all.

	catalogueSpawnedEnt(ent)
	
end)

hook.Add("PlayerSpawnEffect", "HK_SPAWNEFFECT", function(ply, model) 
	if (!bCompDone) then return true end --by that point, we'll just prevent them from spawing anything at all.

	return false
	
end)

hook.Add("PlayerSpawnNPC", "HK_SPAWNNPC", function(ply, npc_type, weapon) 
	if (!bCompDone) then return true end --by that point, we'll just prevent them from spawing anything at all.

	return false
end)

hook.Add("PlayerSpawnProp", "HK_SPAWNPROP", function(ply, model) 
	if (!bCompDone) then return true end --by that point, we'll just prevent them from spawing anything at all.

	return false
end)

hook.Add("PlayerSpawnRagdoll", "HK_SPAWNDOLL", function(ply, model) 
	if (!bCompDone) then return true end --by that point, we'll just prevent them from spawing anything at all.

	return false
end)

hook.Add("PlayerSpawnSENT", "HK_SPAWNSENT", function(ply, class) 
	if (!bCompDone) then return true end --by that point, we'll just prevent them from spawing anything at all.

	return false
end)

hook.Add("PlayerSpawnVehicle", "HK_SPAWNCAR", function(ply, model, name, table) 
	if (!bCompDone) then return true end --by that point, we'll just prevent them from spawing anything at all.

	return false
end)

hook.Add("EntityRemoved", "HK_REMOVEDENT", function(ent) 
	if (bCompDone) then return end
	
	for i = 1, table.maxn(spawnedEnts), 1 do
		if spawnedEnts[i] == ent then
			table.remove(spawnedEnts, i)
			break
		end
	end
end)

function purgeEnts()
	
	
	if (!table.IsEmpty(spawnedEnts)) then --if spawnedents is empty, commit unalive
	
		for i = 1, table.maxn(spawnedEnts), 1 do
			local sparker = ents.Create("env_spark")
			if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
			
			sparker:SetKeyValue("Magnitude", "5")
			sparker:SetKeyValue("TrailLength", "3")
			sparker:SetPos(spawnedEnts[i]:GetPos())
			sparker:Fire("SparkOnce")
			sound.Play("teleport0", spawnedEnts[i]:GetPos())
			
			--clean up fx
			spawnedEnts[i]:Remove()
			sparker:Fire("Kill")
		end
	end

	local plyWpns = Entity(1):GetWeapons()

	if (!table.IsEmpty(plyWpns)) then --if spawnedents is empty, commit unalive

		local sparker = ents.Create("env_spark")
		if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
		
		sparker:SetKeyValue("Magnitude", "5")
		sparker:SetKeyValue("TrailLength", "3")
		sparker:SetPos(Entity(1):GetPos())
		sparker:Fire("SparkOnce")
		sound.Play("teleport0", Entity(1):GetPos())
		
		Entity(1):StripWeapons()
		
		sparker:Fire("Kill")
	end

end


--hooks galore END











if (IsValid(computer)) then --attempt to get it now, keep in mind this is more for when you clean up while on the level, otherwise its handled more so by the callback.

	computerPos = computer:GetPos()
end

file.CreateDir("gunman/inbox") --create us our inbox for the letters.

sound.Add({ --actually overwrites a default error entry, lol!

	name = "error",
	channel = CHAN_VOICE,
	volume = 1,
	pitch = 100,
	sound = "gunman/club/puz/error.wav"


})

sound.Add({

	name = "loading",
	channel = CHAN_VOICE,
	volume = 1,
	pitch = 100,
	sound = "gunman/club/puz/loading.wav"


})

sound.Add({

	name = "mailSent",
	channel = CHAN_VOICE,
	volume = 0.8,
	pitch = 100,
	sound = "gunman/club/puz/mail.wav"


})

sound.Add({

	name = "login",
	channel = CHAN_VOICE,
	volume = 1,
	pitch = 100,
	sound = "gunman/club/puz/logon.wav"


})

sound.Add({

	name = "typing",
	channel = CHAN_VOICE, --CHAN_VOICE is nice since it pauses the sound when the game pauses, which keeps it in sync
	volume = {1.0, 1.5},
	pitch = {95, 105},
	sound = {
		"ambient/machines/keyboard_fast1_1second.wav",
		"ambient/machines/keyboard_fast2_1second.wav",
		"ambient/machines/keyboard_fast3_1second.wav",
		"ambient/machines/keyboard_slow_1second.wav"
	}
})

sound.Add({

	name = "enter",
	channel = CHAN_VOICE,
	volume = {1.0, 1.5},
	pitch = {95, 105},
	sound = "ambient/machines/keyboard7_clicks_enter.wav"


})

sound.Add({ --fax that shit on over

	name = "faxing",
	channel = CHAN_VOICE,
	volume = 1,
	pitch = 100,
	sound = "gunman/club/puz/dialing.wav"

})

sound.Add({

	name = "smoking",
	channel = CHAN_STATIC,
	volume = 0.45,
	pitch = 95,
	sound = "ambient/gas/steam2.wav"


})

sound.Add({

	name = "smoking2",
	channel = CHAN_STATIC,
	volume = 0.45,
	pitch = 95,
	sound = "gcsfx/steamjet1.wav"


})

sound.Add({

	name = "smoking3",
	channel = CHAN_STATIC,
	volume = 0.45,
	pitch = 95,
	sound = "ambient/gas/cannister_loop.wav"


})

sound.Add({

	name = "cheer",
	channel = CHAN_VOICE,
	volume = 5.77,
	pitch = 100,
	sound = "gunman/club/puz/dying.wav"


})

sound.Add({

	name = "break",
	channel = CHAN_STATIC,
	volume = {.76, 1.24},
	pitch = {94, 104},
	sound = {
		"physics/metal/metal_box_break1.wav",
		"physics/metal/metal_box_break2.wav"
	}


})

sound.Add({

	name = "fire",
	channel = CHAN_STATIC,
	volume = 1.255,
	pitch = 94,
	sound = "ambient/fire/fire_med_loop1.wav"


})

sound.Add({

	name = "extinguish",
	channel = CHAN_STATIC,
	volume = 1.255,
	pitch = 94,
	sound = "ambient/fire/mtov_flame2.wav"


})

sound.Add({

	name = "ignition",
	channel = CHAN_STATIC,
	volume = 1.255,
	pitch = 94,
	sound = "ambient/fire/ignite.wav"


})

sound.Add({

	name = "strain",
	channel = CHAN_STATIC,
	volume = {0.76, 1.44},
	pitch = {92, 105},
	sound = {
		"physics/metal/metal_solid_strain1.wav",
		"physics/metal/metal_solid_strain2.wav",
		"physics/metal/metal_solid_strain3.wav",
		"physics/metal/metal_solid_strain4.wav",
		"physics/metal/metal_solid_strain5.wav",
		"physics/metal/metal_box_strain1.wav",
		"physics/metal/metal_box_strain2.wav",
		"physics/metal/metal_box_strain3.wav",
		"physics/metal/metal_box_strain4.wav"
	
	}


})

sound.Add({

	name = "whiningUp",
	channel = CHAN_STATIC,
	volume = 1,
	pitch = 98,
	sound = ")ambient/levels/citadel/teleport_windup_loop1.wav"


})

sound.Add({

	name = "powerOff",
	channel = CHAN_STATIC,
	volume = 10,
	pitch = 90,
	sound = "ambient/energy/powerdown2.wav"


})

sound.Add({

	name = "weirdPowerNoise",
	channel = CHAN_STATIC,
	volume = 3.2,
	pitch = 90,
	sound = "gcsfx/hl2btasfx/power_machine1.wav"


})

sound.Add({ --this way! --these might need adjusted..

	name = "overhere0",
	channel = CHAN_VOICE,
	volume = 5,
	pitch = 100,
	sound = "gunman/club/puz/vo/thisway.wav"


})

sound.Add({ --up here!

	name = "overhere1",
	channel = CHAN_VOICE,
	volume = 5,
	pitch = 100,
	sound = "gcsfx/city04/vo/gunman/scene02/line1.wav"


})

sound.Add({ --up here!

	name = "firebell",
	channel = CHAN_STATIC,
	volume = 1,
	level = 150,
	pitch = 100,
	sound = "ambient/alarms/city_firebell_loop1.wav"


})

--chat processing START

--we need our sensitive vars to be local to protect from tampering
local nSeq = 0 --keeps track of what we're entering in. example: an nSeq of 1 during the credentials stage (bCredentials is true, bQuestions is false) means we just typed in our username.
local bProcessing = false --keeps us from flooding the computer.
local bCredentials = false
local bQuestions = false

--holds our answers and credentials
local user = nil
local pass = nil
local a1 = nil
local a2 = nil
local a3 = nil
--chat processing END

local bNearTeleport = false -- are we near the teleporter?
local bFinished = false --keeps track of whether or not we finished the puzzle

function closeEnoughToType(ply) --check that the player who sent the message is close enough to type.
	local dist = computerPos:DistToSqr(ply:GetPos()) / 10000
	
	if (dist >= 2.0) then return false end -- if the distance is greater than 2, fuck em
	
	
return true end --otherwise they're free to go

hook.Add("PlayerSay", "HK_CHAT", function(sender, text, teamChat) --hook into the chat system for input to the computer.
	if (bProcessing) then return end
	if (!bCredentials and !bQuestions) then return end
	if (!closeEnoughToType(sender)) then return end
	
	
	
	sound.Play("enter", computerPos)
	
	
	
	if (bCredentials) then --if we're checking for credentials right now,
		nSeq = nSeq + 1  --increment what sequence we're on (we'll start on 0, so this will make it 1)
		if (nSeq == 1) then --if its 1, then this message sent was the username
			user = text
		elseif (nSeq == 2) then
			pass = text --if its 2, then this message sent was the password
		else
			nSeq = 0 --somehow we fucked it, reset
		end
		
		if (nSeq == 2) then --if seg is 2, then we just set the password, so we have everything we need. now check it.
			nSeq = 0 --reset it
			bProcessing = true
			sound.Play("enter", computerPos)
			timer.Simple(2, function() 
				sound.Play("loading", computerPos)
				timer.Simple(2, function() 
					if (processCredentials(user, pass)) then --were they right?
						bCredentials = false -- they're right, so we're no longer looking for creds,
						bQuestions = true --now we're looking for answers.
						login() --do the sequence that leads to asking questions.
					else --no? fuck em then
						bProcessing = false --set processing to false so we can send it messages again.
						user = nil --reset the creds
						pass = nil
						bDisableNoclip = false
					end
				end)
			end)
		end
	elseif (bQuestions) then
		nSeq = nSeq + 1 
		
		if (nSeq == 1) then
			a1 = text
		elseif (nSeq == 2) then
			a2 = text
		elseif (nSeq == 3) then
			a3 = text
		else
			nSeq = 0 --fail safe
		end
		
		if (nSeq == 3) then
			bProcessing = true
			nSeq = 0
			if (bNoclip) then
				print("noclip was true!")
				Entity(1):Kill()
			end
			bDisableNoclip = true --this needs to be RIGHT here. this will keep the player from starting the timer then running off over to the parkour area. 
						
			timer.Simple(2, function() 
				sound.Play("loading", computerPos)
				timer.Simple(2, function() 
					if (processAnswers(a1, a2, a3)) then
						--do victory things here
						bQuestions = false
						verify()
						--we will be eternally processing this one..
					else
						a1 = nil
						a2 = nil
						a3 = nil
						bProcessing = false
					end
				end)
			end)
		end
	end
end)

local bCanPress = false
local nPresses = 1 --needs to be one to start press loop.
--our entry point, where it all begins
CreateConVar( "its_high_noon_in_deep_space", 0, FCVAR_GAMEDLL, "Hyper-Cast would be happy to make all arrangements.", 0, 1 )

cvars.AddChangeCallback( "its_high_noon_in_deep_space", function(convar, oldValue, newValue) 

	computer = ents.FindByName("justinspc")[1] --try and reference it
	if (!IsValid(computer)) then print("GUNMAN: ~ERROR~ computer reference was nil!") return end --if we fail, die here
	
	computerPos = computer:GetPos() --if we're good, get the pos
	
	
	init(newValue) --and start the show


end, "its_high_noon_in_deep_space_callback")

function init(newValue)

	if (newValue != "1") then return end --we want the its_high_noon_in_deep_space convar to be set to 1 and only 1

	cvars.RemoveChangeCallback("its_high_noon_in_deep_space", "its_high_noon_in_deep_space_callback") --then delete the callback to prevent spamming.
	
	
	local repairGuySequenceA = ents.FindByName("repairguy_seqa")[1] --get some references to the needed sequences in the map
	local repairGuySequenceB = ents.FindByName("repairguy_seqb")[1]
	
	if (IsValid(repairGuySequenceA)) then --then check them and make sure they're good
		repairGuySequenceA:Fire("CancelSequence")
	end
	if (IsValid(repairGuySequenceB)) then 
		repairGuySequenceB:Fire("CancelSequence")
	end
	
	local repairGuySequence = ents.FindByName("repairguy_seqc")[1] --same as above
	if (!IsValid(repairGuySequence)) then print("repairguy_seqc wasn't valid!") return end
	
	repairGuySequence:Fire("BeginSequence") --tell that lazy schmuck to get moving
		
	bCanPress = true
	
	hook.Add( "PlayerNoClip", "HK_NOCLIP", function( ply, desiredNoClipState )
		
		if (!bDisableNoclip) then bNoclip = desiredNoClipState return true end--if disablenoclip is false, then return this function with a value of true, allowing us to noclip.
		return false--otherwise, if its true, then return this function with a value of false, disallowing us to noclip.
	end)
end

--entry point end

function computerPressed() --let us fax on over that succulent information.

	if (!bCanPress) then return end --control the input



	bCanPress = false --keep ourselves from being spammed, shut the door so to speak
	sound.Play("typing", computerPos)
	
	local smoke = ents.FindByName("compsmok")
	if (!IsValid(smoke[1])) then print("GUNMAN: ~ERROR~ smoke reference was nil!") return end
	
	local heat = ents.FindByName("compheat")[1]
	if (!IsValid(heat)) then print("GUNMAN: ~ERROR~ heat reference was nil!") return end
	
	local smokeSound = CreateSound(heat, "smoking") -- at heat entity
	
	
	
	--nested timers galore
	timer.Simple(1, function() 
		sound.Play("typing", computerPos)
		timer.Simple(1, function() 
			sound.Play("enter", computerPos)
			timer.Simple(3, function() 
				timer.Simple(16, function() smoke[1]:Fire("TurnOn") smoke[2]:Fire("TurnOn") smokeSound:Play()  end)
				timer.Simple(5, function() heat:Fire("TurnOn") end)
				sound.Play("faxing", computerPos)
				
				timer.Simple(23, function() smoke[1]:Fire("TurnOff") smoke[2]:Fire("TurnOff") smokeSound:Stop() end)
				timer.Simple(26, function() heat:Fire("TurnOff") end)
				timer.Simple(24, function() 
					createNETmail0()
					bCredentials = true
				end)
			end)
		end)
	end)
end

function verify() --finally, the end! begins the final sequence where justinpc explodes and the parkour area begins.

	local bBad = false

	bCanPress = false -- i dont think we should still be able to use the pc anymore

	
	--get our plural references and check them out
	if (bBad) then return end
	
	local smoke2 = ents.FindByName("compsmok2")
	
	for i = 1, table.maxn(smoke2), 1 do
	
		if (!IsValid(smoke2[i])) then bBad = true print("GUNMAN: ~ERROR~ a smoke2 reference was nil!") break end

	
	end
	
	if (bBad) then return end
	
	local smoke1 = ents.FindByName("compsmok")	
	for i = 1, table.maxn(smoke1), 1 do
	
		if (!IsValid(smoke1[i])) then bBad = true print("GUNMAN: ~ERROR~ a smoke1 reference was nil!") break end

	
	end
	
	if (bBad) then return end
	
	local gibShooters = ents.FindByName("compgibs")
	for i = 1, table.maxn(gibShooters), 1 do
	
		if (!IsValid(gibShooters[i])) then bBad = true print("GUNMAN: ~ERROR~ a gibShooters reference was nil!") break end

	
	end
	
	if (bBad) then return end
	
	local electricFires = ents.FindByName("compfire")
	for i = 1, table.maxn(electricFires), 1 do
	
		if (!IsValid(electricFires[i])) then bBad = true print("GUNMAN: ~ERROR~ an electricFires reference was nil!") break end

	
	end
	
	if (bBad) then return end
	
	local screens = {
		ents.FindByName("compscrena")[1],
		ents.FindByName("compscrenb")[1],
		ents.FindByName("compscrenc")[1],
		ents.FindByName("compscrend")[1],
		ents.FindByName("compscrene")[1]
	}
	for i = 1, table.maxn(screens), 1 do
	
		if (!IsValid(screens[i])) then bBad = true print("GUNMAN: ~ERROR~ a screen reference was nil!") break end 

	
	end
	
	if (bBad) then return end
	
	local repairGuySequences = {
		ents.FindByName("repairguy_seqb")[1],
		ents.FindByName("repairguy_seqd")[1],
		ents.FindByName("repairguy_seqe")[1],
		ents.FindByName("repairguy_seqe2")[1],
		ents.FindByName("repairguy_seqf")[1],
		ents.FindByName("repairguy_seqg")[1]
	
	}
	for i = 1, table.maxn(repairGuySequences), 1 do
	
		if (!IsValid(repairGuySequences[i])) then bBad = true print("GUNMAN: ~ERROR~ a repairGuySequences reference was nil!") break end
	
	end	
	
	if (bBad) then return end
	
	local repairGuySentences = {
		ents.FindByName("repairguy_line2a")[1],
		ents.FindByName("repairguy_line2b")[1],
		ents.FindByName("repairguy_line2c")[1],
		ents.FindByName("repairguy_line2d")[1]
	}
	for i = 1, table.maxn(repairGuySentences), 1 do
	
		if (!IsValid(repairGuySentences[i])) then bBad = true print("GUNMAN: ~ERROR~ a repairGuySentences reference was nil!") break end
	
	end	
	
	if (bBad) then return end
	
	local soundPositions = ents.FindByName("compSoundPos*")
	for i = 1, table.maxn(soundPositions), 1 do
	
		if (!IsValid(soundPositions[i])) then bBad = true print("GUNMAN: ~ERROR~ a soundPositions reference was nil!") break end
	
	end	
	
	if (bBad) then return end

	
	
	local heat = ents.FindByName("compheat")[1]
	if (!IsValid(heat)) then print("GUNMAN: ~ERROR~ heat reference was nil!") return end
	
	local smoke1Sound = CreateSound(soundPositions[1], "smoking")
	local smoke2Sound = CreateSound(soundPositions[2], "smoking2")
	local smoke3Sound = CreateSound(soundPositions[3], "smoking3") 
	
	local fireSound = CreateSound(soundPositions[4], "fire")
	
	--get our singular references then check them out
	local compAmb = ents.FindByName("compsnd")[1]
	if (!IsValid(compAmb)) then print("GUNMAN: ~ERROR~ compAmb reference was nil!") return end

	local compLite = ents.FindByName("complite")[1]
	if (!IsValid(compLite)) then print("GUNMAN: ~ERROR~ compLite reference was nil!") return end

	local explosion = ents.FindByName("compexplode")[1]
	if (!IsValid(explosion)) then print("GUNMAN: ~ERROR~ explosion reference was nil!") return end
	
	local sparker = ents.FindByName("compspark")[1]
	if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
	
	local chargeUpSound = CreateSound(soundPositions[5], "whiningUp")
	local weirdPower = CreateSound(soundPositions[7], "weirdPowerNoise")
	
	local alarm = ents.FindByName("alarm")[1]
	if (!IsValid(alarm)) then print("GUNMAN: ~ERROR~ alarm reference was nil!") return end
	
	local fireAlarm = CreateSound(alarm, "firebell")
	
	sound.Play("loading", computerPos)
	timer.Simple(1, function() heat:Fire("TurnOn") end)
	
	timer.Simple(2, function() 
		sound.Play("loading", computerPos)
		timer.Simple(1, function() smoke1Sound:Play() smoke1[1]:Fire("TurnOn") smoke1[2]:Fire("TurnOn") end)
		sound.Play("strain", computerPos)
		timer.Simple(1, function() sound.Play("strain", computerPos) end)
		timer.Simple(4, function() 
			sound.Play("loading", computerPos)
			smoke2Sound:Play()
			sound.Play("strain", computerPos)
			timer.Simple(3, function() sound.Play("strain", computerPos) end)
			timer.Simple(10, function() smoke3Sound:Play() smoke2[1]:Fire("TurnOn") smoke2[2]:Fire("TurnOn") sparker:Fire("SparkOnce") repairGuySequences[2]:Fire("CancelSequence") repairGuySequences[3]:Fire("BeginSequence") repairGuySentences[1]:Fire("BeginSentence") end)
			timer.Simple(11, function() 
				sound.Play("cheer", computerPos)
				timer.Simple(0.24, function() smoke1[1]:Fire("TurnOff") smoke1[2]:Fire("TurnOff") end)
				
				--screen goes hay-wire
				timer.Simple(1.92, function() screens[1]:Fire("Disable") screens[2]:Fire("Enable") end)
				timer.Simple(2.07, function() screens[2]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(2.98, function() screens[1]:Fire("Disable") screens[3]:Fire("Enable") end)
				timer.Simple(3.14, function() screens[3]:Fire("Disable") screens[2]:Fire("Enable") end)
				timer.Simple(3.37, function() screens[2]:Fire("Disable") screens[3]:Fire("Enable") end)
				timer.Simple(3.64, function() screens[3]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(4.00, function() screens[1]:Fire("Disable") screens[4]:Fire("Enable") end)
				timer.Simple(4.15, function() screens[4]:Fire("Disable") screens[3]:Fire("Enable") end)
				timer.Simple(4.21, function() screens[3]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(4.52, function() screens[1]:Fire("Disable") screens[2]:Fire("Enable") end)
				timer.Simple(5.05, function() screens[2]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(5.15, function() screens[1]:Fire("Disable") screens[4]:Fire("Enable") end)
				timer.Simple(5.26, function() screens[4]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(5.60, function() screens[1]:Fire("Disable") screens[3]:Fire("Enable") end)
				timer.Simple(5.90, function() screens[3]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(6.39, function() screens[1]:Fire("Disable") screens[2]:Fire("Enable") end)
				timer.Simple(6.70, function() screens[2]:Fire("Disable") screens[3]:Fire("Enable") end)
				timer.Simple(6.98, function() screens[3]:Fire("Disable") screens[1]:Fire("Enable") end)
				timer.Simple(7.45, function() screens[1]:Fire("Disable") screens[4]:Fire("Enable") end)
				timer.Simple(8.43, function() screens[4]:Fire("Disable") screens[5]:Fire("Enable") end)
				timer.Simple(8.86, function() screens[5]:Fire("Disable") screens[4]:Fire("Enable") end)
				timer.Simple(8.96, function() screens[4]:Fire("Disable") screens[5]:Fire("Enable") end)
				timer.Simple(9.15, function() screens[5]:Fire("Disable") screens[4]:Fire("Enable") end)
				timer.Simple(12.51, function() screens[4]:Fire("Disable") screens[3]:Fire("Enable") end)
				timer.Simple(12.51, function() screens[3]:Fire("Disable") screens[5]:Fire("Enable") end)
				
				--computer dies
				timer.Simple(20.489, function() 
					screens[5]:Fire("Disable") 
					compLite:Fire("TurnOff")
					compAmb:Fire("StopSound")
					explosion:Fire("Explode")
					sparker:Fire("SparkOnce")
					sparker:Fire("SparkOnce")
					sparker:Fire("SparkOnce")
					sparker:Fire("SparkOnce")
					sparker:Fire("SparkOnce")
					sparker:Fire("SparkOnce")
					gibShooters[1]:Fire("Shoot")
					gibShooters[2]:Fire("Shoot")
					gibShooters[3]:Fire("Shoot")
					gibShooters[4]:Fire("Shoot")
					weirdPower:Stop()
					sound.Play("powerOff", computerPos)
					chargeUpSound:Stop()
					electricFires[1]:Fire("StartFire")
					sound.Play("ignition", computerPos)
					
					timer.Simple(2, function() 
						repairGuySequences[1]:Fire("BeginSequence")
						repairGuySentences[4]:Fire("BeginSentence")
					end)
					
					timer.Simple(10, function() electricFires[1]:Fire("Extinguish") electricFires[2]:Fire("Extinguish") heat:Fire("TurnOff") fireSound:Stop() sound.Play("extinguish", computerPos) end)
					timer.Simple(12, function() fireAlarm:Stop() end)
					
					local tpPos = ents.FindByName("exit")[1]
					if (!IsValid(tpPos)) then print("GUNMAN: ~ERROR~ tpPos reference was nil!") return end
					
					bCompDone = true
					
					--give the player an audio clue
					if (!bNearTeleport) then
						timer.Simple(5, function() 
							sound.Play("overhere0", tpPos:GetPos())
							if (!bNearTeleport) then
								timer.Simple(5, function() 
									sound.Play("overhere0", tpPos:GetPos())
									if (!bNearTeleport) then
										timer.Simple(5, function() sound.Play("overhere0", tpPos:GetPos()) end)
									end
								end)
							end
						end)
					end
				end)
				
				--other events
				
				timer.Simple(2.43, function() sparker:Fire("SparkOnce") end)
				timer.Simple(2.63, function() sparker:Fire("SparkOnce") end)
				timer.Simple(3.63, function() sparker:Fire("SparkOnce") end)
				timer.Simple(16.63, function() weirdPower:Play() end)
				timer.Simple(14.65, function() repairGuySequences[5]:Fire("BeginSequence") end)
				timer.Simple(8.43, function() 
					sparker:Fire("SparkOnce")
					sound.Play("ignition", computerPos)
					sound.Play("break", computerPos)
					fireSound:Play()
					repairGuySentences[2]:Fire("BeginSentence")
					repairGuySequences[6]:Fire("BeginSequence")
					timer.Simple(1.5, function() repairGuySentences[3]:Fire("BeginSentence") end)
					chargeUpSound:Play()
					electricFires[2]:Fire("StartFire")
					timer.Simple(2, function() fireAlarm:Play() end)
				end)				
			end)
		end)
	end)
	
	
	--glitches timeline
	-- 1.92 // start of glitch
	-- 2.07 // end
	
	--2.98
	
	--3.14
	
	--3.37
	--3.64
	
	--4.0
	
	--4.07
	
	--4.15
	
	--4.21
	--4.52
	
	--5.05
	
	--5.15
	
	--5.26
	
	--5.6
	--5.90
	
	--6.39
	
	--6.70
	--6.98
	
	--7.45
	--8.50
	
	--8.43 //stuttering begins
	--8.86
	
	--8.96
	
	--9.15
	
	--12.51
	--13.46 //really starts screeching around here
	
	--15.62
	--16.11
	
	--16.84
	--19.76
	
	--20.489 //dies

end

function login() --send them the netmail about security questions
	
	sound.Play("login", computerPos)
	PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Hello, and welcome back spaceconfederate2000, to Hyper-Cast™!")
	timer.Simple(9, function() 
		sound.Play("loading", computerPos)
		timer.Simple(1, function() 
			createNETmail1() --send daily news
			timer.Simple(3, function() 
				sound.Play("loading", computerPos)
			
				timer.Simple(1, function() 
					createNETmail2() --send instructions for questions
					
					
					timer.Simple(2, function() bProcessing = false end)
				
				end)
			end)
		end)
	end)

end

function netMailNotify() --notify the player about an incoming netmail
	sound.Play("mailSent", computerPos)
	PrintMessage(HUD_PRINTTALK, "Hyper-Cast has sent you a NETmail in your 'garrysmod/data/gunman/inbox/' folder!")
end

function createHeader(fileHandle, sender, regarding)

	if (fileHandle == nil) then print("GUNMAN: createHeader() was given a bad handle!") return end

	local players = ents.FindByClass("player")
	
	local playerName

	
	if (IsValid(players[1])) then 
		playerName = players[math.random(1, table.maxn(players))]:GetName()
	else
		playerName = "Archer"
	end	
	
	
	local curDate = os.date("%m/%d/%Y AT %I:%M:%S %p", os.time())
	
	fileHandle:Write("FROM: <" .. sender .. ">\nTO: " .. playerName .. "\nON: " .. curDate .. "\nREGARDING: '" .. regarding .. "'")


	return playerName

end

function createFooter(fileHandle)

	if (fileHandle == nil) then print("GUNMAN: createFooter() was given a bad handle!") return end

	fileHandle:Write("\n\n\n\n\n\n\n\n\n\n\nThis letter is copyrighted material of HYper-caST Inc. Hyper-Cast and the HYper-caST NETworks logo are registered trademarks of Hyper-Cast Networks Inc.")
	fileHandle:Write("\nCopyright all rights reserved© 2022")
	
end


function createNETmail0() --creates the NETmail from hyper-cast regarding your request, gives instructions on logging in.

	

	local msg = file.Open( "gunman/inbox/HYper-caST - Request for Passage to the Valkyrie System.txt", "w", "DATA")
	
	
	if (msg == nil) then print("GUNMAN: ~ERROR~ couldn't create the text file!") return end
	

	local name = createHeader(msg, "tomnoreply-customer_service@HYper-caST-NET.sgn", "Request For Passage to the Valkyrie System")
	
	if (name == nil or name == "" or name == " ") then print("GUNMAN: Couldn't create msg, name wasn't valid. createHeader() might've failed.") return end
	
	
	
	
	msg:Write("\n\n\n\n\n\n\n\nGreetings, " .. name .. ".")
	
	
	msg:Write("\n\n\nIn regards to your recent request for passage into the Valkyrie system, we would first like for you to log into HYper-caST™.")
	msg:Write("\nThen we can verify your identity by simply asking a few security questions.")
	
	
	msg:Write("\n\n\nYou can start by simply logging into your HYper-caST™ account using any nearby computer terminal capable of NETscape travel.")
	
	msg:Write("\n\nSimply type your credentials into the chat box field.")
	
	msg:Write("\n\n\nThen once you've logged in, we'll ask you only a few security questions.")
	
	msg:Write("\n\n\n\nPlease note that we do not support capitalized characters, nor spaces. \nUsernames and passwords may contain numerical values.")
	
	msg:Write("\n\nAfter that, we'll evaluate your request for passage.")
		
	
	msg:Write("\n\n\n\nSincerely, ")
	
	msg:Write("\n\nTom Phooler - Junior Customer Service Agent")
	
	
	msg:Write("\nFrom nHYper-caST™ NETworks")
	
	createFooter(msg)
	
	msg:Flush()
	
	msg:Close()
	
	netMailNotify()

end


function createNETmail1() --a daily news article for the player to read some lore. it also contains hints to security questions.

	local page = file.Open("gunman/inbox/HYper-caST Daily Hyper-Cast News.txt", "w", "DATA")
	
	if (page == nil) then print("GUNMAN: ~ERROR~ couldn't create the text file!") return end

	
	local name = createHeader(page, "carlnoreply-daily_news_comm@HYper-caST-NET.sgn", "Welcome Back to your HYper-caST Account, Heres your Daily News!")
	
	if (name == nil or name == "" or name == " ") then print("GUNMAN: Couldn't create page, name wasn't valid. createHeader() might've failed.") return end

	
	page:Write("\n\n\nHello, spaceconfederate2000! I've got your personalized news right here!")
	
	
	
	page:Write("\n\n\n\nTODAY'S NEWS: Department of Colonisation under colonial fire, genetically modifed xenomes!?")
	
	page:Write("\nEarlier today, Dr.Vargas Kalhorian requested a press conference with the Department of Colonisation(D.O.C) at 11:30 AM to discuss his views on the Xenome Infestation crisis taking place.")
	page:Write("\nVargas believes that the xenomes found on our inhabited planets have been, quote 'genetically modified' end quote; by a group whose identity is of yet to be known.'")
	page:Write("\nHe belives foul play to be involved somehow. Though the details are.. pretty vauge. People originally wrote off his claims as 'nonsense'.")
	page:Write("\nA reasonable response, given the amount of fearful conjucture and rumors to go around, all of which now spread like wildfire thanks to the net recently blasting off into outer space.")
	
	page:Write("\n\nHowever this conference was never to be, having been declined right after arriving at their office. The reason for the rejection, not publicly disclosed.")
	
	
	page:Write("\n\n\nCombine that hasty rejection and the intensity of the current situation, and people are now starting to have second thoughts about their judgement of dr.Kalhorian's views and claims.")
	page:Write("\nWith goverment officials like the D.O.C seemingly, in Kalhorian's own words, 'Sitting on their fat flat chair shaped as*es while their whole damn species goes extinct!'") 
	page:Write("\ncombined with Kalhorian's claims that they're somehow involved in the disasters taking place just a few light years from here, coupled with the speed in which dr.Kalhorian's request for conference was declined?") 
	
	page:Write("\n\nYeah, it's no wonder people are starting to get suspicious.")
	
	
	page:Write("\n\n\nWe managed to get an interview with a D.O.C spokesperson, Angelica Smith; about an hour ago. Here's what she had to say on record;")
	
	
	page:Write("\n\n\n\nQuote 'Interviewer: did you hear about dr.Kalhorian's hastily rejected request to hold a press conference with the Department of Colonisation earlier today? If so, what are your thoughts on this whole.. situation?")
	
	page:Write("\n\nSpokesperson: Um well, you know, there is a lot of rumors going around right now about how the department is evil, the department is hiding this, the department is doing that. Um, but I think that... whats really going on here.. is.. people are scared.")
	page:Write("\nand uh, you know, when people are scared, they're quick to point fingers, quick to act. They need someone to blame for something. It gives them comfort. But it's obviously a very harmful.. uh.. dogmatic mindset.")
	page:Write("\nThe biggest rumor i've heard of so far was that we are... somehow.. responsible for whats been happening out there as of recent. And uh.. you know, I gotta say; these accusations are not only ridiculous, but have dangerous implications as well.")
	page:Write("\nThese rumors would suggest that a cancer is growing in our goverment and that a collapse in our authority is sure to follow suit. And in um.. in times like these, that could be the end of us.")
	page:Write("\nWe need a goverment, an authoritative power, like how a kid needs their parent; now more than ever. It's keeps us sane, keeps us safe. And to toss that into kata space? Nonsense. We need to remain calm, We need to remain vigilant, and we need to remain sane.")
	page:Write("\nWe have enough enemies at our doors as is. Last thing we need is to see our own neighbours among them.")
	
	page:Write("\nNow, to answer your original question; I'm not sure. Though it's probably due to a much more benign reason than what people are expecting, or outright claiming even.")
	page:Write("\n\nFoul play in this case is just.. nonsense. Plain and simple. What.. would any madman have to gain out of worsening a situation.. like the one we're all currently.. and actively facing? A situation were our very own species' existence is at stake?")
	page:Write("\nIs it for money? No, I don't think our currency will hold much value when the human race is gone. So we can rule out greed, the number one cause of corruption as a possibility. And then whats left? Well.. Nothing concrete. Surely nothing to start accusations from.")
	
	page:Write("\n\nSo like I said, the people need someone to blame. And we just so happen to be that person.")
	page:Write("\nBelive me, I.. WE, hate to see whats happening out there, but we're doing everything we can to help, and are in NO way responsible for those tragedies taking place.")
	
	
	page:Write("\n\n\nSo.. instead of looking to blame and fight each other, I say we need to band together and help each other. To save mankind.' End quote.")
	
	
	page:Write("\n\n\nInterviewer: I see. Thank you, ms.Smith; for your time.")
	
	
	
	
	page:Write("\n\n\n\nQuite the dramatic end there, but really kind of true when you look at how rapidly this war with the xenomes is deteriorating.")
	page:Write("\nWe asked dr.Lucas Dixon, a local civilian scientist; what his thoughts were on dr.Kalhorian's claims of 'genetically modified xenomes' being placed on colonised worlds;")


	
	page:Write("\n\n\n\nQuote 'Interviewer: So by now I'm sure that you've heard about dr.Kalhorian's wild claims that the xenomes invading our inhabited planets were actually genetically modifed. What do you make of that? being a man of a scientific background.")
	page:Write("\n\nInterviewed: Uh, well.. I'm not positive on why anyone would do such a thing, frankly; I dont really see how they could've done it. None of the tech we have here seems to cooperate with the few specimens we've managed to collect.")
	
	page:Write("\nAnd to make matters worse, by the.. the time their bodies are pulled from the battlefields, they're either.. ripped to shreds, or decayed to the point of being.. uh.. uh.. unidentifiable. Their bodies appear to decay much faster than any other material we've.. than we've ever seen.")
	page:Write("\nWe also don't have the resources or.. or manpower to risk several men's lives to try and.. capture even just.. one.. of those things alive. Uh... we also don't have any refrigerators capable of freezing a specimen at the.. uhh.. at the temps we'd need.. to keep those bodies fresh.")
	page:Write("\nNow, i'm sure that scientists in other places might.. have the stuff to do it, probably being closer to big manufacturers. Not to mention our supply line having been cut off by the.. the infestation. So.. uh.. I think we're on the track for another great depression.")
	page:Write("\nAnd also, imagine asking for volunteers to risk their lives for... what? We wouldn't gain much of.. of anything by understanding their genetic code or even their anatomy. Sure it might be.. interesting, but thats not.. thats not really good enough of a reason to..")
	page:Write("\nrisk... several men's lives. Especially.. if you're talking in a time like this. The only possible use we'd get out of that research would be.. understanding the anatomy so we know where to aim for. But um... even then.. battle reports seeem to suggest that uh.. that that's self-explanatory.")
	
	page:Write("\n\nBut uh.. regardless, unless dr.Kalhorian has been examining those.. xenomes' bodies in the field with.. better equipment than what we've got here in the labs, I uh.. I don't see how he could've made that observation. I really don't.")
	page:Write("\nAnd as to how they'd modify their genetic code? I mean.. Come on... we don't even know their anatomy! Or what.. different... types of xenomes species there are, or even what.. their lifestyle is. Beyond killing us!")
	
	page:Write("\n\nLet alone their genetic code.")



	page:Write("\n\n\nAnd I can't speak on the accusations that xenomes were deliberately... uh.. placed? On colonised planets.. I.. I wouldn't happen to know.. uh.. anything really about that.")
	
	page:Write("\n\nRight, well, thank you for your time, mr.Dixon,' End quote")
	
	
	page:Write("\n\n\n\nAnd after that, we reached out to Vargas Kalhorian himself for his side of the story. However, we have yet to recieve a reply. ")
	page:Write("\nWe'll update you on any further developments.")
	
	
	page:Write("\n\n\nAnd with that, shoot us a NETmail with your thoughts on our interviews. We're curious about what you've made of them.")

	
	
	
	page:Write("\n\n\n\n\nNot since we established Hyper-Cast™ at the turn of the millennium have we had developments this interesting, so stay tuned for more or you'll regret missing out!")
	
	
	
	page:Write("\n\n\nHave a wonderful day,")
	
	page:Write("\n\nCarl Connsmann- Senior Daily News Dispatchment Committee Manager")
	page:Write("\nFrom HYper-caST™ NETworks")

	
	createFooter(page)
	
	
	page:Flush()
	
	page:Close()
	
	
	netMailNotify()
	
end

function createNETmail2() --letter containing the security questions

	local page = file.Open("gunman/inbox/HYper-caST Verify Identity.txt", "w", "DATA")
	
	if (page == nil) then print("GUNMAN: ~ERROR~ couldn't create the text file!") return end

	
	local name = createHeader(page, "logannoreply-security@HYper-caST-NET.sgn", "Verify Identity by Answering Questions")
	
	if (name == nil or name == "" or name == " ") then print("GUNMAN: Couldn't create page, name wasn't valid. createHeader() might've failed.") return end







	page:Write("\n\n\n\n\n\n\n\nHello, spaceconfederate2000!")
	
	page:Write("\n\n\nVerifying your identity is easy. All you need to do is answer the given questions set by (hopefully) yourself.")
	
	page:Write("\n\n\nInput your answers in the order they were asked into the chat box field.")
	
	page:Write("\n\n\n\nThe questions are as follows:")
	
	page:Write("\n\n\n\n\n1.	In what year was HYper-caST™ NETworks established?")
	
	page:Write("\n\n2.	'I DEMAND AN INVESTIGATION, BY A NEUTRAL PARTY; OF ALL RECORDS RELATED TO THE INFESTATION, INCLUDING A COMPLETE REVIEW OF DOCUMENTS I BELIEVE UNLAWFULLY SURPRESSED BY THE DEPARTMENT OF COLONISATION!' were some of the words of what man?")
	
	page:Write("\n\n3.	What was the name of the original modification of Quake that would later become Gunman Chronicles?")
	
	page:Write("\n\n\n\nAnswers should be properly capitalized.")
	
	page:Write("\n\n\n\nWe're waiting to hear back from you!")
	
	page:Write("\n\n\n\n\n\nLogan Identithef - Expert Identification Verification Agent")
	page:Write("\nFrom HYper-caST™ NETworks")
	
	createFooter(page)
	
	
	page:Flush()
	
	page:Close()
	
	
	netMailNotify()
	
end

function processCredentials(user, pass)

	if (user != "spaceconfederate2000" and pass != "fuckxenomes") then complain(3) return false end
	if (user != "spaceconfederate2000") then complain(1) return false end
	if (pass != "fuckxenomes") then complain(2) return false end


return true end

function processAnswers(ans1, ans2, ans3)

	if (ans1 != "2000" and ans2 != "Vargas Kalhorian" and ans2 != "Kalhorian" and ans2 != "dr.Kalhorian" and ans2 != "Doctor Kalhorian" and ans3 != "Gunmanship 101") then complain(7) return false end

	if (ans1 != "2000" and ans2 != "Vargas Kalhorian" and ans2 != "Kalhorian" and ans2 != "dr.Kalhorian" and ans2 != "Doctor Kalhorian") then complain(8) return false end
	
	if (ans1 != "2000" and ans3 != "Gunmanship 101")  then complain(9) return false end
	
	if (ans2 != "Vargas Kalhorian" and ans2 != "Kalhorian" and ans2 != "dr.Kalhorian" and ans2 != "Doctor Kalhorian" and ans3 != "Gunmanship 101") then complain(10) return false end

	if (ans1 != "2000") then complain(4) return false end
	if (ans2 != "Vargas Kalhorian" and ans2 != "Kalhorian" and ans2 != "dr.Kalhorian" and ans2 != "Doctor Kalhorian") then complain(5) return false end
	if (ans3 != "Gunmanship 101") then complain(6) return false end


return true end


function complain(issue) --generic function for complaining about different answer, credential, and letter related issues.
	if (issue == 0) then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but the NETmail was detected as corrupted. Resending.")
	elseif (issue == 1) then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your username was incorrect.")
	elseif (issue == 2) then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your password was incorrect.")
	elseif (issue == 3) then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but both your username and password were wrong.")
	elseif issue == 4 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your answer to question 1 wasn't quite right.")
	elseif issue == 5 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your answer to question 2 was incorrect.")
	elseif issue == 6 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your answer to question 3 wasn't it.")
	elseif issue == 7 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but all answers were wrong.")
	elseif issue == 8 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but answers 1 and 2 were wrong.")
	elseif issue == 9 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but answers 1 and 3 were wrong.")
	elseif issue == 10 then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but answers 2 and 3 were wrong.")
	else
		print("complain() recieved an unknown complaint.")
	end
	
	sound.Play("error", computerPos) --play that lovely 98 error sound
	
end

sound.Add({

	name = "teleport_thunder",
	channel = CHAN_STATIC,
	volume = 10,
	pitch = 100,
	sound = "ambient/levels/labs/teleport_postblast_thunder1.wav"


})

sound.Add({

	name = "teleport0",
	channel = CHAN_VOICE,
	volume = 10,
	pitch = 100,
	sound = "@gunman/club/puz/teleport.wav"


})

sound.Add({

	name = "teleport1",
	channel = CHAN_VOICE,
	volume = 50,
	pitch = 100,
	sound = "@ambient/machines/teleport4.wav"


})

local bLegit = false

function completedParkour() --keep the player from entering the portal prematurely. GLOBAL
	if (!bCompDone) then return end
	bLegit = true

end


local guardOldPos --so we can teleport guardguy back to his spot

function createTeleport() --acutally creates the teleporter scene. GLOBAL
	if (!bCompDone) then return end
	
	purgeEnts()
	
	ents.FindByName("tpnear")[1]:Fire("Kill")
	ents.FindByName("pkc")[1]:Fire("Enable")
	
	bNearTeleport = true
	
	local bBad = false	
	
	local steps = {
		ents.FindByName("wall_steps0")[1],
		ents.FindByName("wall_steps1")[1],
		ents.FindByName("wall_steps2")[1],
		ents.FindByName("wall_steps3")[1],
	}
	for i = 1, table.maxn(steps), 1 do
	
		if (!IsValid(steps[i])) then bBad = true print("GUNMAN: ~ERROR~ a steps reference was nil!") break end
	
	end	
	if (bBad) then return end
	
	local tpLites = ents.FindByName("tplite")
	for i = 1, table.maxn(tpLites), 1 do
	
		if (!IsValid(tpLites[i])) then bBad = true print("GUNMAN: ~ERROR~ a tpLites reference was nil!") break end
	
	end	
	if (bBad) then return end
	
	local tpGlows = ents.FindByName("tpglow")
	for i = 1, table.maxn(tpGlows), 1 do
	
		if (!IsValid(tpGlows[i])) then bBad = true print("GUNMAN: ~ERROR~ a tpGlows reference was nil!") break end
	
	end		

	if (bBad) then return end

	local guard = ents.FindByName("guardguy")[1]
	if (!IsValid(guard)) then print("GUNMAN: ~ERROR~ guard reference was nil!") return end

	local guardTpPos = ents.FindByName("guardguy")[1]
	if (!IsValid(guardTpPos)) then print("GUNMAN: ~ERROR~ guardTpPos reference was nil!") return end

	local guardSpark = ents.FindByName("guardguy_sparks")[1]
	if (!IsValid(guardSpark)) then print("GUNMAN: ~ERROR~ guardSpark reference was nil!") return end
	
	local stopAll = ents.FindByName("stop")[1]
	if (!IsValid(stopAll)) then print("GUNMAN: ~ERROR~ stopAll reference was nil!") return end
	
	local shake = ents.FindByName("tpshake")[1]
	if (!IsValid(shake)) then print("GUNMAN: ~ERROR~ shake reference was nil!") return end
	
	local sparker = ents.FindByName("tpsparks")[1]
	if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
		
	timer.Simple(1.5, function() sound.Play("overhere1", sparker:GetPos()) end)
	sparker:Fire("StartSpark")
	
	shake:Fire("StartShake")
	
	stopAll:Fire("Enable")
	stopAll:Fire("Trigger")
	stopAll:Fire("Kill")

	
	guardOldPos = guard:GetPos()
	
	guardSpark:SetPos(guard:GetPos())
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	guardSpark:Fire("SparkOnce")
	
	guard:SetPos(Vector(0, 0, 0))
	--need to acommodate player parties
	Entity(1):ScreenFade(SCREENFADE.IN, color_white, 0.65, 0.12)
		
	CreateSound(Entity(1), "teleport0"):Play()
	timer.Simple(1, function() CreateSound(Entity(1), "teleport_thunder"):Play() end)

	

	local tpPos = ents.FindByName("exit")[1]
	if (!IsValid(tpPos)) then print("GUNMAN: ~ERROR~ tpPos reference was nil!") return end
	
	
	
	local soundscapesNormal = ents.FindByName("tproom_soundscape0")
	for i = 1, table.maxn(soundscapesNormal), 1 do
	
		if (!IsValid(soundscapesNormal[i])) then bBad = true print("GUNMAN: ~ERROR~ a soundscapesNormal reference was nil!") break end
	
	end
	
	if (bBad) then return end
	
	for i = 1, table.maxn(soundscapesNormal), 1 do
	
		soundscapesNormal[i]:Fire("Disable")
	
	end
	
	local soundscapeWeird = ents.FindByName("tproom_soundscape1")[1]
	if (!IsValid(soundscapeWeird)) then print("GUNMAN: ~ERROR~ soundscapeWeird reference was nil!") return end
	
	
	soundscapeWeird:Fire("Enable")	
	
	
	for i = 1, table.maxn(tpLites), 1 do
		
		tpLites[i]:Fire("TurnOn")
	
	end
	
	for i = 1, table.maxn(tpGlows), 1 do
		
		tpGlows[i]:Fire("ShowSprite")
	
	end
	
	for i = 1, table.maxn(steps), 1 do
		
		steps[i]:Fire("Unlock")
	end
	
	timer.Simple(3, function()
		if (!IsValid(steps[1])) then return end
		steps[1]:Fire("Open")
		timer.Simple(2, function()
			if (!IsValid(steps[1])) then return end
			steps[2]:Fire("Open")
			timer.Simple(2, function()
				if (!IsValid(steps[1])) then return end
				steps[3]:Fire("Open")
				timer.Simple(2, function()
					if (!IsValid(steps[1])) then return end
					steps[4]:Fire("Open") 
				end)
			end)
		end)
	end)

end

function antiCheat() --fuck them cheaters. GLOBAL
	if (bFinished) then return end --but only if they haven't finished the puzzle yet...

	local tpTo = ents.FindByName("exit")[1]
	if (!IsValid(tpTo)) then print("GUNMAN: ~ERROR~ tpTo reference was nil!") return end

	Entity(1):SetPos(tpTo:GetPos())

end

function endPuzzle() --the end, cleans up everything we've done to this point.
	
	bFinished = true
	
	local startAll = ents.FindByName("start")[1]
	if (!IsValid(startAll)) then print("GUNMAN: ~ERROR~ startAll reference was nil!") return end

	startAll:Fire("Enable") --resume all scripting on the map, then delete the relay.
	startAll:Fire("Trigger")
	startAll:Fire("Kill")
	
	
	--clean up after ourselves
	hook.Remove("PlayerSay", "HK_CHAT") 
	hook.Remove("PlayerNoClip", "HK_NOCLIP") 
	hook.Remove("PlayerDeath", "HK_PLYDIE") 
	hook.Remove("OnCleanup", "HK_CLEANUP") 

	
	hook.Remove("PlayerInitialSpawn", "HK_MAPSTART") 
	hook.Remove("PlayerSpawnedEffect", "HK_SPAWNEDEFFECT") 
	hook.Remove("PlayerSpawnedNPC", "HK_SPAWNEDNPC") 
	hook.Remove("PlayerSpawnedProp", "HK_SPAWNEDPROP") 
	hook.Remove("PlayerSpawnedRagdoll", "HK_SPAWNEDDOLL") 
	hook.Remove("WeaponEquip", "HK_GOTWEAPON") 
	hook.Remove("PlayerSpawnedSWEP", "HK_SPAWNEDSWEP") 
	hook.Remove("PlayerSpawnedVehicle", "HK_SPAWNEDCAR") 
	
	hook.Remove("EntityRemoved", "HK_REMOVEDENT") 
	hook.Remove("PlayerSpawnEffect", "HK_SPAWNEFFECT") 
	hook.Remove("PlayerSpawnNPC", "HK_SPAWNNPC") 
	hook.Remove("PlayerSpawnProp", "HK_SPAWNPROP") 
	hook.Remove("PlayerSpawnRagdoll", "HK_SPAWNDOLL") 
	hook.Remove("PlayerSpawnSENT", "HK_SPAWNSENT") 
	hook.Remove("PlayerSpawnVehicle", "HK_SPAWNCAR") 
	
	if (!table.IsEmpty(spawnedEnts)) then table.Empty(spawnedEnts) end --empty our catalogue of spawned stuff
	
end

function teleportToReality() --teleport us back to the main map. also resets all the stuff the puzzles had done to the map and gets rid of the teleporter scene. GLOBAL
	if (!bCompDone) then return end
	
	local bBad = false
	
	local steps = {
		ents.FindByName("wall_steps0")[1],
		ents.FindByName("wall_steps1")[1],
		ents.FindByName("wall_steps2")[1],
		ents.FindByName("wall_steps3")[1],
	}
	for i = 1, table.maxn(steps), 1 do
	
		if (!IsValid(steps[i])) then bBad = true print("GUNMAN: ~ERROR~ a steps reference was nil!") break end
	
	end	
	
	if (bBad) then return end
	
	for i = 1, table.maxn(steps), 1 do --potential issue here, if the player swings by the parkour section fast enough and teleports in then back whle the steps are still opening, then this will cause their moving sound to loop forever.
	
		steps[i]:Fire("Kill")
	
	end	
	
	local guard = ents.FindByName("guardguy")[1] --get a ref to guardguy so we can tp him back in
	if (!IsValid(guard)) then print("GUNMAN: ~ERROR~ guard reference was nil!") return end
	
	guard:SetPos(guardOldPos)
	

	local sparker0 = ents.FindByName("exitsparks")[1]
	if (!IsValid(sparker0)) then print("GUNMAN: ~ERROR~ sparker0 reference was nil!") return end
	
	local sparker1 = ents.FindByName("entrysparks")[1]
	if (!IsValid(sparker1)) then print("GUNMAN: ~ERROR~ sparker1 reference was nil!") return end
	
	local shake = ents.FindByName("tpshake")[1]
	if (!IsValid(shake)) then print("GUNMAN: ~ERROR~ shake reference was nil!") return end
	
	local tpLites = ents.FindByName("tplite")
	for i = 1, table.maxn(tpLites), 1 do
	
		if (!IsValid(tpLites[i])) then bBad = true print("GUNMAN: ~ERROR~ a tpLites reference was nil!") break end
	
	end	
	if (bBad) then return end
	
	local tpGlows = ents.FindByName("tpglow")
	for i = 1, table.maxn(tpGlows), 1 do
	
		if (!IsValid(tpGlows[i])) then bBad = true print("GUNMAN: ~ERROR~ a tpGlows reference was nil!") break end
	
	end		

	if (bBad) then return end
	
	for i = 1, table.maxn(tpLites), 1 do
		
		tpLites[i]:Fire("TurnOff")
	
	end
	
	for i = 1, table.maxn(tpGlows), 1 do
		
		tpGlows[i]:Fire("HideSprite")
	
	end
	
	local soundscapesNormal = ents.FindByName("tproom_soundscape0") --normal soundscape noises is the real shit
	for i = 1, table.maxn(soundscapesNormal), 1 do
	
		if (!IsValid(soundscapesNormal[i])) then bBad = true print("GUNMAN: ~ERROR~ a soundscapesNormal reference was nil!") break end
	
	end
	
	if (bBad) then return end
	
	for i = 1, table.maxn(soundscapesNormal), 1 do
	
		soundscapesNormal[i]:Fire("Enable")
	
	end
	
	local soundscapeWeird = ents.FindByName("tproom_soundscape1")[1] --fuck all the weird soundscape noises.
	if (!IsValid(soundscapeWeird)) then print("GUNMAN: ~ERROR~ soundscapeWeird reference was nil!") return end
	
	soundscapeWeird:Fire("Disable")	
	
	local stopClub = ents.FindByName("club_stop")[1]
	if (!IsValid(stopClub)) then print("GUNMAN: ~ERROR~ stopClub reference was nil!") return end

	stopClub:Fire("Trigger")
	
	local tpTo = ents.FindByName("exit")[1]
	if (!IsValid(tpTo)) then print("GUNMAN: ~ERROR~ tpTo reference was nil!") return end
	
	Entity(1):SetPos(tpTo:GetPos()) --tp us to the exit point
	Entity(1):ScreenFade(SCREENFADE.IN, color_white, 0.65, 1.0) --flash our screen
	shake:Fire("StartShake")
	
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	
	

	CreateSound(Entity(1), "teleport1"):Play()
	timer.Simple(1, function() CreateSound(Entity(1), "teleport_thunder"):Play() end)

end

function teleportToDankRoom() --teleport us to the secret rave club. GLOBAL
	if (!bCompDone or !bLegit) then return end
	
	local sparker = ents.FindByName("tpsparks")[1]
	if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
	
	sparker:Fire("StopSpark")
	
	endPuzzle() --its over, you did it! 
	
	local tpTo = ents.FindByName("entry")[1]
	if (!IsValid(tpTo)) then print("GUNMAN: ~ERROR~ tpTo reference was nil!") return end
	
	local sparker0 = ents.FindByName("exitsparks")[1]
	if (!IsValid(sparker0)) then print("GUNMAN: ~ERROR~ sparker0 reference was nil!") return end
	
	local sparker1 = ents.FindByName("entrysparks")[1]
	if (!IsValid(sparker1)) then print("GUNMAN: ~ERROR~ sparker1 reference was nil!") return end
	
	local shake = ents.FindByName("tpshake")[1]
	if (!IsValid(shake)) then print("GUNMAN: ~ERROR~ shake reference was nil!") return end
	
	
	local dest = tpTo:GetPos()
	Entity(1):SetPos(dest)
	Entity(1):ScreenFade(SCREENFADE.IN, color_white, 0.65, 1.0)
	shake:Fire("StartShake")
	
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	sparker0:Fire("SparkOnce")
	sparker1:Fire("SparkOnce")
	
	

	CreateSound(Entity(1), "teleport1"):Play()
	timer.Simple(1, function() CreateSound(Entity(1), "teleport_thunder"):Play() end)

end





