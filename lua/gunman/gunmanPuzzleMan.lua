--stuff for the secret club




--DEVELOPER'S EYES ONLY!


--not that i can enforce that.
--all i can say is just dont read this code, it will spoil all of the fun
--but i guess if you dont like fun and just want the answer, then i cant stop you.

--or if you've already solved it and have to come to look at the code to learn, welcome! welcome to lua17!
--most stuff should be documented.




































if (!SERVER) then return end

if (game.GetMap() != "gc_city02" and game.GetMap() != "gc_city03_22_2") then return end

local computer = ents.FindByName("compbtn")[1]--attempts to load a reference, will be checked when first starting. the only reason we load this is mainly for debugger reasons. when lua refreshes, we dont want to have to go through the cvar again to test, so we try here as well.

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

local bCanPress = false
local nPresses = 0

--our entry point, where it all begins
CreateConVar( "its_high_noon_in_deep_space", 0, FCVAR_GAMEDLL, "Hyper-Cast would be happy to make all arrangements.", 0, 1 )

cvars.AddChangeCallback( "its_high_noon_in_deep_space", function(convar, oldValue, newValue) 

	computer = ents.FindByName("compbtn")[1] --try and reference it
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

	nPresses = nPresses + 1

	if (nPresses == 1) then
		bCanPress = false --keep ourselves from being spammed, shut the door so to speak
		sound.Play("typing", computerPos)
		
		--nested timers galore
		timer.Simple(1, function() 
			sound.Play("typing", computerPos)
			timer.Simple(1, function() 
				sound.Play("enter", computerPos)
				timer.Simple(3, function() 
					sound.Play("faxing", computerPos)
					timer.Simple(24, function() 
						sound.Play("mailSent", computerPos)
						PrintMessage(HUD_PRINTTALK, "Hyper-Cast has sent you a NETmail in your 'garrysmod/data/gunman/inbox/' folder!")
						createNETmail0()
						
						--isn't working, need to debug the button with a game_text to see if its us or the func_button thats preventing us from pressing again..
						timer.Simple(3, function() 
							bCanPress = true
						end)
					end)
				end)
			end)
		end)
	elseif (nPresses == 2) then
		bCanPress = false
		sound.Play("mailSent", computerPos)
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast has sent you a NETmail in your 'garrysmod/data/gunman/inbox/' folder!")
		createNETmail1()
	end
	
	
	

end

function login() --step two, now we ask questions
	
	--logonSound = ents.FindByName("compsnd3")
	--if (!IsValid(logonSound[1])) then print("compsnd3 wasn't valid!") return end
	
	--logonSound[1]:Fire("PlaySound") --old code that relies on hammer
	
	
	sound.Play("login", computerPos)
	PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Hello, and welcome back spaceconfederate2000, to Hyper-Cast™!")
	
	timer.Simple(9, function() 
		sound.Play("loading", computerPos)
	
		timer.Simple(1, function() 
			
			sound.Play("mailSent", computerPos)
			PrintMessage(HUD_PRINTTALK, "Hyper-Cast has sent you a message in your garrysmod/data/gunman/ folder!")
		
		end)
	
	end)
	
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

	fileHandle:Write("\n\n\n\n\n\n\n\n\n\n\nThis letter is copyrighted material of HYper-caST Inc. The 'HYper-caST NETworks' logo is a trademark of HYper-caST Inc.")
	fileHandle:Write("\nAll rights reserved© 2000")
	
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
	
	msg:Write("\n\nWe'll send you a NETmail with instructions on logging in.")
	
	msg:Write("\n\n\nThen once you've logged in, we'll ask you a few security questions.")
	
	
	msg:Write("\n\nAfter that, we'll evaluate your request for passage.")
	
	msg:Write("\n\n\n\nHold on while we connect you with one of our log-in agents!")
	
	
	msg:Write("\n\n\n\nSincerely, ")
	
	msg:Write("\n\nTom Phooler - Junior Customer Service Agent")
	
	
	msg:Write("\nFrom nHYper-caST™ NETworks")
	
	createFooter(msg)
	
	msg:Flush()
	
	msg:Close()

end

function createNETmail1() --maybe add the text and audio notifications of getting mail into here instead?

	local page = file.Open("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "w", "DATA")
	
	if (page == nil) then print("GUNMAN: ~ERROR~ couldn't create the text file!") return end

	
	local name = createHeader(page, "kennoreply-login_dept@HYper-caST-NET.sgn", "Log into your HYper-caST Account")
	
	if (name == nil or name == "" or name == " ") then print("GUNMAN: Couldn't create page, name wasn't valid. createHeader() might've failed.") return end







	page:Write("\n\n\n\n\n\n\n\nHello, " .. name .. "!")
	
	page:Write("\n\n\nTo Log-In, simply input your credentials into the respective fields below.")
	
	page:Write("\n\n\n\n\nUSERNAME: ")
	page:Write("\n\n\nPASSWORD: ")
	
	page:Write("\n\n\n\n\nThen forward this NETmail back to us and if your credentials are correct, we'll log you in.")
	page:Write("\nHowever, if your username or password was incorrect, we'll resend you this NETmail asking you to correct the ones which were wrong.")
	
	page:Write("\n\n\n\nKind regards,")
	
	page:Write("\n\nKen Botsworth - Senior Log-In Manager")
	page:Write("\nFrom HYper-caST™ NETworks")
	
	page:Write("\n\n\n\n\nDO NOT MODIFY THIS NETMAIL IN ANY OTHER WAY THAN INSTRUCTED!")
	page:Write("\nVIOLATION COULD RESULT IN UP TO 5 YEARS IN PRISON.")
	
	createFooter(page)
	
	
	page:Flush()
	
	page:Close()
	
	
	
end

function processCredentials()
	if (!file.Exists("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "DATA")) then 
		print("GUNMAN: ~ERROR~ couldn't find the file. Was it moved or renamed? recreating...")
		createNETmail1()
	return end
	
	local netmail = file.Open("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "r", "DATA")
	
	if (netmail == nil) then print("GUNMAN: ~ERROR~ couldn't open the text file!") return end
	
	netmail:Seek(256)
	
	local user = netmail:Read(48)
	
	netmail:Seek(300)
	local pass = netmail:Read(64)
	
	if (!string.match(user, "USERNAME:") 
		or !string.match(pass, "PASSWORD:") 
			and !string.match(pass, "USERNAME:") 
				and !string.match(user, "PASSWORD:")) then 
		createNETmail1()
		complain(0)
	return end --this'll protect us from corruption. for the most part
	
	
	
	
	
	if (!string.match(user, "spaceconfederate2000")) then --these are too loose!
		complain(1)
	return end
	
	if (!string.match(pass, "fuckxenomes")) then
		complain(2)
	return end
	
	login()


end

function complain(issue)

	if (issue == 1) then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your username was incorrect.")
	elseif (issue == 2) then
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your password was incorrect.")
	else
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but the NETmail was detected as corrupted. Resending.")
	end
	
	sound.Play("error", computerPos)
	
end







