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

end

--entry point end

function computerPressed() --let us fax on over that succulent information.

	if (!bCanPress) then return end --control the input


	if (nPresses == 1) then
		nPresses = nPresses + 1
		bCanPress = false --keep ourselves from being spammed, shut the door so to speak
		sound.Play("typing", computerPos)
		
		local smoke = ents.FindByName("compsmok")
		if (!IsValid(smoke[1])) then print("GUNMAN: ~ERROR~ smoke reference was nil!") return end
		
		local heat = ents.FindByName("compheat")[1]
		if (!IsValid(heat)) then print("GUNMAN: ~ERROR~ heat reference was nil!") return end
		
		local smokeSound = CreateSound(heat, "smoking")
		
		
		
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
						
						timer.Simple(3, function() 
							bCanPress = true
						end)
					end)
				end)
			end)
		end)
	elseif (nPresses == 2) then
		nPresses = nPresses + 1
		bCanPress = false
		sound.Play("typing", computerPos)
		
		timer.Simple(1, function() 
			sound.Play("enter", computerPos)
			timer.Simple(2, function() 
				sound.Play("loading", computerPos)
				timer.Simple(2, function() 
					createNETmail1()
					
					timer.Simple(2, function() bCanPress = true end)
				end)
			end)
		end)
		
	elseif (nPresses == 3) then
		bCanPress = false
		sound.Play("typing", computerPos)
		
		timer.Simple(1, function() 
			sound.Play("enter", computerPos)
			timer.Simple(2, function() 
				sound.Play("loading", computerPos)
				
				timer.Simple(2, function() 
					if (processCredentials()) then
						nPresses = nPresses + 1 -- so we can progress
						login()
						
						timer.Simple(2, function() bCanPress = true end)
					else
						timer.Simple(2, function() bCanPress = true end)
					end
				end)
			end)
		end)
	else
		print("GUNMAN: ~ERROR~ Computer was pressed, but we dont have an event to trigger for it!")
	end

end

function login()
	
	sound.Play("login", computerPos)
	PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Hello, and welcome back spaceconfederate2000, to Hyper-Cast™!")
	
	timer.Simple(9, function() 
		sound.Play("loading", computerPos)
	
		timer.Simple(1, function() 
			
			
		
		end)
	
	end)
	
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
	fileHandle:Write("\nCopyright all rights reserved© 1996")
	
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
	
	netMailNotify()

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
	
	
	netMailNotify()
	
end

function createNETmail2() --a daily news article for the player to read some lore. it also contains hints to security questions.

	local page = file.Open("gunman/inbox/HYper-caST Daily Hyper-Cast News.txt", "w", "DATA")
	
	if (page == nil) then print("GUNMAN: ~ERROR~ couldn't create the text file!") return end

	
	local name = createHeader(page, "carlnoreply-daily_news_comm@HYper-caST-NET.sgn", "Welcome Back to your HYper-caST Account, Heres your Daily News!")
	
	if (name == nil or name == "" or name == " ") then print("GUNMAN: Couldn't create page, name wasn't valid. createHeader() might've failed.") return end

	
	page:Write("\n\n\nHello, spaceconfederate2000! It's good to see you again.")
	
	page:Write("\n\nI've got your daily news right here.")
	
	
	
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

	
	
	
	page:Write("\n\n\n\n\nNot since we established Hyper-Cast™ have we had developments this interesting, so stay tuned for more, or you'll regret missing out!")
	
	
	
	page:Write("\n\n\nHave a wonderful day,")
	
	page:Write("\n\nCarl Connsmann- Senior Daily News Dispatchment Committee Manager")
	page:Write("\nFrom HYper-caST™ NETworks")

	
	createFooter(page)
	
	
	page:Flush()
	
	page:Close()
	
	
	netMailNotify()
	
end

function processCredentials()
	if (!file.Exists("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "DATA")) then 
		print("GUNMAN: ~ERROR~ couldn't find the file. Was it moved or renamed? recreating...")
		createNETmail1()
	return false end
	
	local netmail = file.Open("gunman/inbox/HYper-caST Log Into your HYper-caST Account.txt", "r", "DATA")
	
	if (netmail == nil) then print("GUNMAN: ~ERROR~ couldn't open the text file!") return false end
	
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
	return false end --this'll protect us from corruption. for the most part
	
	
	
	
	
	if (!string.match(user, "spaceconfederate2000")) then --these are too loose!
		complain(1)
	return false end
	
	if (!string.match(pass, "fuckxenomes")) then
		complain(2)
	return false end



return true end




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







