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

local computerPos



if (IsValid(computer)) then --attempt to get it now

	computerPos = computer:GetPos()
end

-- util.AddNetworkString("net_gunman_playsound")

-- function gunmanPlaySound(sound)

	-- net.Start("net_gunman_playsound")
	
	-- net.WriteString(sound)
	
	-- net.Broadcast()

-- end

file.CreateDir("gunman/inbox") --create us our inbox

sound.Add({

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
	sound = "ambient/fire/fire_big_loop1.wav"


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

	name = "malfunction",
	channel = CHAN_STATIC,
	volume = 1,
	pitch = 95,
	sound = ")ambient/levels/labs/teleport_malfunctioning.wav"


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
	volume = 5,
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

nSeq = 0 --should be local when fin
bNearComputer = false
bProcessing = false --should be local when fin
bCredentials = false --should be local when fin
bQuestions = false --should be local when fin
local user = nil
local pass = nil
local a1 = nil
local a2 = nil
local a3 = nil

function closeEnoughToType(ply)	
	local dist = computerPos:DistToSqr(ply:GetPos()) / 10000
	
	if (dist >= 2.0) then return false end
	
	
return true end

hook.Add("PlayerSay", "HK_CHAT", function(sender, text, teamChat) 
	if (bProcessing) then return end
	if (!bCredentials and !bQuestions) then return end
	if (!closeEnoughToType(sender)) then return end
	
	
	
	sound.Play("enter", computerPos)
	
	
	
	if (bCredentials) then
		nSeq = nSeq + 1 --all of this should probably be done before the check.
		if (nSeq == 1) then
			user = text
		else if (nSeq == 2) then
			pass = text
		else
			nSeq = 0
		end
		
		if (nSeq == 2) then
			nSeq = 0
			bProcessing = true
			sound.Play("enter", computerPos)
				timer.Simple(2, function() 
					sound.Play("loading", computerPos)
					timer.Simple(2, function() 
						if (processCredentials(user, pass)) then
							bCredentials = false
							bQuestions = true
							login()
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
						else
							bProcessing = false
							user = nil --reset the creds
							pass = nil
						end
					end)
				end)
			end
		end
	elseif (bQuestions) then
		nSeq = nSeq + 1 --all of this should probably be done before the check.
		
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

bCanPress = false --should be local when fin
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
					
					-- timer.Simple(3, function() 
						-- bCanPress = true
					-- end)
				end)
			end)
		end)
	end)
end

function verify() --finally, the end!

	local bBad = false

	

	
	
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
	
	--need new way to obtain these ents since lua is fucking stupid and decides it should grab these at random order instead of sorted alphabetically.
	local screens = ents.FindByName("compscren*")	
	for i = 1, table.maxn(screens), 1 do
	
		if (!IsValid(screens[i])) then bBad = true print("GUNMAN: ~ERROR~ a screen reference was nil!") break end 

	
	end
	
	if (bBad) then return end
	
	local repairGuySequences = ents.FindByName("repairguy_seq*")
	for i = 1, table.maxn(repairGuySequences), 1 do
	
		if (!IsValid(repairGuySequences[i])) then bBad = true print("GUNMAN: ~ERROR~ a repairGuySequences reference was nil!") break end
	
	end
	if (bBad) then return end
	
	local repairGuySentences = ents.FindByName("repairguy_line2*")
	for i = 1, table.maxn(repairGuySentences), 1 do
	
		if (!IsValid(repairGuySentences[i])) then bBad = true print("GUNMAN: ~ERROR~ a repairGuySentences reference was nil!") break end
	
	end	
	
	if (bBad) then return end

	
	local heat = ents.FindByName("compheat")[1]
	if (!IsValid(heat)) then print("GUNMAN: ~ERROR~ heat reference was nil!") return end
	
	local smoke1Sound = CreateSound(heat, "smoking") -- at heat entity
	local smoke2Sound = CreateSound(heat, "smoking2") -- at heat entity
	local smoke3Sound = CreateSound(heat, "smoking3") -- at heat entity
	
	local fireSound = CreateSound(heat, "fire")
	
	local compAmb = ents.FindByName("compsnd")[1]
	if (!IsValid(compAmb)) then print("GUNMAN: ~ERROR~ compAmb reference was nil!") return end

	local compLite = ents.FindByName("complite")[1]
	if (!IsValid(compLite)) then print("GUNMAN: ~ERROR~ compLite reference was nil!") return end

	local explosion = ents.FindByName("compexplode")[1]
	if (!IsValid(explosion)) then print("GUNMAN: ~ERROR~ explosion reference was nil!") return end
	
	local sparker = ents.FindByName("compspark")[1]
	if (!IsValid(sparker)) then print("GUNMAN: ~ERROR~ sparker reference was nil!") return end
	
	local chargeUpSound = CreateSound(computer, "whiningUp")
	local fuckshit = CreateSound(computer, "malfunction")
	local weirdPower = CreateSound(computer, "weirdPowerNoise")
	
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
			timer.Simple(10, function() smoke3Sound:Play() smoke2[1]:Fire("TurnOn") smoke2[2]:Fire("TurnOn") sparker:Fire("SparkOnce") repairGuySequences[3]:Fire("CancelSequence") repairGuySequences[4]:Fire("BeginSequence") repairGuySentences[4]:Fire("BeginSentence") end)
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
					sound:Play("powerOff", computerPos)
					chargeUpSound:Stop()
					electricFires[1]:Fire("StartFire")
					sound.Play("ignition", computerPos)
					
					timer.Simple(5, function() 
						repairGuySequences[2]:Fire("BeginSequence")
						repairGuySentences[4]:Fire("BeginSentence")
					end)
					
				end)
				
				--other events
				
				timer.Simple(2.43, function() sparker:Fire("SparkOnce") end)
				timer.Simple(2.63, function() sparker:Fire("SparkOnce") end)
				timer.Simple(3.63, function() sparker:Fire("SparkOnce") end)
				timer.Simple(8.43, function() 
					sparker:Fire("SparkOnce")
					sound.Play("ignition", computerPos)
					sound.Play("break", computerPos)
					fireSound:Play()
					repairGuySequences[3]:Fire("CancelSequence")
					repairGuySequences[4]:Fire("BeginSequence")
					repairGuySentences[2]:Fire("BeginSentence")
					timer.Simple(1.5, function() repairGuySentences[3]:Fire("BeginSentence") end)
					chargeUpSound:Play()
					electricFires[2]:Fire("StartFire")
					
				
				end)
				--timer.Simple("")
				timer.Simple(16, function() weirdPower:Play() end)
				
				
				

				
			end)
		end)
		
		
	end)
	

end

function login()
	
	sound.Play("login", computerPos)
	PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Hello, and welcome back spaceconfederate2000, to Hyper-Cast™!")

end

function netMailNotify()
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


function createNETmail0() --creates the NETmail from hyper-cast regarding your request.

	

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
	
	
	page:Write("\n\n\nAnd with that hasty rejection, people are now starting to have second thoughts about their judgement of dr.Kalhorian's views and claims.")
	page:Write("\nAnd with goverment officials like the D.O.C seemingly, in Kalhorian's own words, 'Sitting on their fat flat chair shaped as*es while their whole damn species goes extinct!'") 
	page:Write("\ncombined with Kalhorian's claims that they're somehow involved in the disasters taking place just a few light years from here, coupled with the speed in which dr.Kalhorian's request for conference was declined?") 
	
	page:Write("\n\nYeah, it's no wonder people are suspicious.")
	page:Write("\nNot to mention the fact that these xenomes are cropping up everywhere in seemingly unrelated places. How's that possible unless someone is purposfully placing and breeding them there?")
	
	
	page:Write("\n\n\nWe managed to get an interview with a D.O.C spokesperson, Angelica Smith; about an hour ago. Here's what she had to say on record;")
	
	
	page:Write("\n\n\n\nQuote 'Interviewer: did you hear about dr.Kalhorian's hastily rejected request to hold a press conference with the Department of Colonisation earlier today? If so, what are your thoughts on this whole.. situation?")
	
	page:Write("\n\nSpokesperson: Um well, you know, there is a lot of rumors going on around right now about how the department is evil, the department is hiding this, the department is doing that. Um, but I think that... whats really going on here.. is.. people are scared.")
	page:Write("\nand uh, you know, when people are scared, they're quick to point fingers, quick to act. They need someone to blame for something. It gives them comfort. But it's obviously a very harmful.. uh.. dogmatic mindset.")
	page:Write("\nThe biggest rumor i've heard of so far was that we are... somehow.. responsible for whats been happening out there as of recent. And uh.. you know, I gotta say; these accusations are not only ridiculous, but have dangerous implications as well.")
	page:Write("These rumors would suggest that a cancer is growing in our goverment and that a collapse in our authority is sure to follow suit. And in um.. in times like these, that could be the end of us.")
	page:Write("\nWe need a goverment, an authoritative power, like how a kid needs their parent; now more than ever. It's keeps us sane, keeps us safe. And to toss that into kata space? Nonsense. We need to remain calm, We need to remain vigilant, and we need to remain sane.")
	page:Write("\nWe have enough enemies at our doors as is. Last thing we need is to see our own neighbours among them.")
	
	page:Write("\nNow, to answer your original question; I'm not sure. Though it's probably due to a much more benign reason than what people are expecting, or outright claiming even.")
	page:Write("\n\nFoul play in this case is just.. nonsense. Plain and simple. What.. would any madman have to gain out of worsening a situation.. like the one we're all currently.. and actively facing? A situation were our very own species' existence is at stake?")
	page:Write("\nIs it for money? No, I don't think our currency will hold much value when the human race is gone. So we can rule out greed, the number one cause of foul play; as a possibility. And whats left? Well.. Nothing concrete. SUrely nothing to start accusations from.")
	
	page:Write("\n\nSo like I said, the people need someone to blame. And we just so happen to be the wrong person, there at the right time.")
	page:Write("\nBelive me, I.. WE, hate to see whats happening out there, but we're doing everything we can and are in NO way responsible for these tragedies taking place.")
	
	
	page:Write("\n\n\nSo.. instead of looking to blame and fight each other, I say we need to band together and help each other. To save mankind.' End quote.")
	
	
	page:Write("\n\n\nInterviewer: I see. Thank you, ms.Smith; for your time.")
	
	
	
	
	page:Write("\n\n\n\nQuite the dramatic end there, but really kind of true when you look at how rapidly this war with the xenomes is deteriorating.")
	page:Write("\nWe asked dr.Lucas Dixon, a local civilian scientist; what his thoughts were on dr.Kalhorian's claims of 'genetically modified xenomes' being placed on colonised worlds;")


	
	page:Write("\n\n\n\nQuote 'Interviewer: So by now I'm sure that you've heard about dr.Kalhorian's wild claims that the xenomes invading our inhabited planets were actually genetically modifed. What do you make of that being a man of a scientific background?")
	page:Write("\n\nInterviewed: Uh, well.. I'm not positive on why anyone would do such a thing, frankly; I dont really see how they could've done it. None of the tech we have here seems to cooperate with the few specimens we've managed to collect.")
	
	page:Write("\nAnd to make matters worse, by the.. the time their bodies are pulled from the battlefields, they're either.. ripped to shreds, or decayed to the point of being.. uh.. uh.. unidentifiable. Their bodies appear to decay much faster than any other material we've.. than we've ever seen.")
	page:Write("\nWe also don't have the resources or.. or manpower to risk several men's lives to try and.. capture even just.. one.. of those things alive. Uh... we also don't have any refrigerators capable of freezing a specimen at the.. uhh.. at the temps we'd need.. to keep those bodies fresh.")
	page:Write("\nNow, i'm sure that scientists in other places might.. have the stuff to do it, probably being closer to big goods manufacturers. Not to mention our supply line having been cut off by the.. the infestation. So.. uh.. We're on the brink... of another great depression for pete's sake.")
	page:Write("\nAnd also, imagine asking for volunteers to risk their lives for... what? We wouldn't gain much of.. anything by understanding their genetic code or even their anatomy. Sure it might be.. interesting, but thats not.. thats not good enough of a reason to..")
	page:Write("\nrisk... several people's lives. Especially.. you're talking in a time like this. The only possible use we'd get out of that research would be.. understanding the anatomy so we know where to aim for. But um... even then.. battle reports seeem to suggest that uh.. that that's.. self-explanatory.")
	
	page:Write("\n\nBut uh.. regardless, unless dr.Kalhorian has been examining those.. xenomes' bodies in the field with.. better equipment than what we've got here in the labs, I uh.. I don't see how he could make that observation. I really don't.")
	page:Write("\nAnd as to how they'd modify their genetics? I mean.. Come on... we don't even know their anatomy! Or what.. different... types of xenomes species there are, or even what.. their lifestyle is. Beyond killing us!")
	
	page:Write("\n\nLet alone their genetic code.")



	page:Write("\n\n\nAnd I-I.. I can't speak on the accusations that xenomes were deliberately.. placed? On colonised planets.. I wouldn't know anything about that.")
	
	page:Write("\n\nRight, well, thank you for your time, mr.Dixon,' End quote")
	
	
	page:Write("\n\n\n\nAfter that, we reached out to Vargas Kalhorian for his side of the story. However, we have not recieved any replies. ")
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

function createNETmail2() --the security questions

	local page = file.Open("gunman/inbox/HYper-caST Verify Identity.txt", "w", "DATA")
	
	if (page == nil) then print("GUNMAN: ~ERROR~ couldn't create the text file!") return end

	
	local name = createHeader(page, "logannoreply-security@HYper-caST-NET.sgn", "Verify Identity by Answering Questions")
	
	if (name == nil or name == "" or name == " ") then print("GUNMAN: Couldn't create page, name wasn't valid. createHeader() might've failed.") return end







	page:Write("\n\n\n\n\n\n\n\nHello, spaceconfederate2000!")
	
	page:Write("\n\n\nVerifying your identity is easy. All you need to do is answer the given questions set by (hopefully) yourself.")
	
	page:Write("\n\n\nSimply shoot us a NETmail answering the questions below in the same order!")
	
	page:Write("\n\n\n\nThe questions are as follows:")
	
	page:Write("\n\n\n\n\n1.	In what year was HYper-caST™ NETworks established?")
	
	page:Write("\n\n2.	'I DEMAND AN INVESTIGATION, BY A NEUTRAL PARTY; OF ALL RECORDS RELATED TO THE INFESTATION, INCLUDING A COMPLETE REVIEW OF DOCUMENTS I BELIEVE UNLAWFULLY SURPRESSED BY THE DEPARTMENT OF COLONISATION!' were some of the words of what man?")
	
	page:Write("\n\n3.	What was the name of the original modification of Quake that would later become Gunman Chronicles?")
	
	page:Write("\n\n\n\nWe're waiting to hear back from you!")
	
	page:Write("\n\n\n\n\n\nLogan Identithef - Expert Identification Verification Agent")
	page:Write("\nFrom HYper-caST™ NETworks")
	
	createFooter(page)
	
	
	page:Flush()
	
	page:Close()
	
	
	netMailNotify()
	
end




--old data processors


-- function processCredentials()
	-- if (!file.Exists("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "DATA")) then 
		-- print("GUNMAN: ~ERROR~ couldn't find the file. Was it moved or renamed? recreating...")
		-- createNETmail1()
	-- return false end
	
	-- local netmail = file.Open("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "r", "DATA")
	
	-- if (netmail == nil) then print("GUNMAN: ~ERROR~ couldn't open the text file!") return false end
	
	-- netmail:Seek(860)
	
	-- local user = netmail:Read(512)
	
	-- netmail:Seek(300)
	-- local pass = netmail:Read(64)
	
	-- print(user)
	
	-- -- if (!string.match(user, "USERNAME:") 
		-- -- or !string.match(pass, "PASSWORD:") 
			-- -- and !string.match(pass, "USERNAME:") 
				-- -- and !string.match(user, "PASSWORD:")) then 
		-- -- createNETmail1()
		-- -- complain(0)
	-- -- return false end --this'll protect us from corruption. for the most part
	
	
	
	
	
	-- -- if (!string.match(user, "spaceconfederate2000")) then --these are too loose!
		-- -- complain(1)
	-- -- return false end
	
	-- -- if (!string.match(pass, "fuckxenomes")) then
		-- -- complain(2)
	-- -- return false end



-- return true end

-- function processAnswers() --doing it this way, we'll know which question was wrong
	-- if (!file.Exists("gunman/inbox/hyper-cast verify identity.txt", "DATA")) then 
		-- print("GUNMAN: ~ERROR~ couldn't find the file. Was it moved or renamed? recreating...")
		-- createNETmail3()
	-- return false end
	
	-- local netmail = file.Open("gunman/inbox/hyper-cast verify identity.txt", "r", "DATA")
	
	-- if (netmail == nil) then print("GUNMAN: ~ERROR~ couldn't open the text file!") return false end
	
	-- netmail:Seek(1250)
	
	-- local q1 = netmail:Read(256)
	
	-- netmail:Seek(1310)
	-- local q2 = netmail:Read(256)

	-- netmail:Seek(1320)
	-- local q3 = netmail:Read(256)
			-- print(q1)

	
	-- if (!string.match(q1, "Q1:") 
		-- or !string.match(q2, "Q2:") 
			-- or !string.match(q2, "Q3:")) then 
		-- createnetmail3()
		-- complain(0) --make generic corrupted netmail complaint
	-- return false end --this'll protect us from corruption. for the most part
	
	
	
	
	
	-- if (!string.match(q1, "2000")) then --these are too loose!
		-- complain(3)
	-- return false end
	
	-- if (!string.match(q2, "Vargas Kalhorian")) then
		-- complain(4)
	-- return false end

	-- if (!string.match(q3, "Gunmanship 101")) then
		-- complain(5)
	-- return false end

-- return true end

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


function complain(issue)
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







