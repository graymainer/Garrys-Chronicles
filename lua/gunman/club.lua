--stuff for the secret club




--DEVELOPER'S EYES ONLY!


--not that i can enforce that.
--all i can say is just dont read this code, it will spoil all of the fun
--but i guess if you dont like fun and just want the answer, then i cant stop you.









































if (!SERVER) then return end

if (game.GetMap() != "gc_city02" or game.GetMap() != "gc_city03_22_2") then return end


print("GUNMAN: secret club code initialized...")
sound.Add({

	name = "major",
	channel = CHAN_VOICE,
	volume = 0.6,
	level = 80,
	pitch = 100,
	sound = "gunman/club/puz/archer.wav"


})

sound.Add({

	name = "arrangements",
	channel = CHAN_VOICE,
	volume = 0.6,
	level = 80,
	pitch = 100,
	sound = "gunman/club/puz/arrangements.wav"


})

msgPlayer = nil
bNearComputer = false

print("GUNMAN: creating convar")

CreateConVar( "its_high_noon_in_deep_space", 0, FCVAR_GAMEDLL, "Hyper-Cast would be happy to make all arrangements.", 0, 1 )


cvars.AddChangeCallback( "its_high_noon_in_deep_space", function(convar, oldValue, newValue) 

	initClub(newValue)

end, "its_high_noon_in_deep_space_callback")


function initClub(newValue)

	if (newValue != "1") then return end

	cvars.RemoveChangeCallback("its_high_noon_in_deep_space", "its_high_noon_in_deep_space_callback")
	
	local repairGuySequenceA = ents.FindByName("repairguy_seqa")
	
	local repairGuySequenceB = ents.FindByName("repairguy_seqb")
	
	if (IsValid(repairGuySequenceA[1])) then
		repairGuySequenceA[1]:Fire("CancelSequence")
	end
	
	if (IsValid(repairGuySequenceB[1])) then 
		repairGuySequenceB[1]:Fire("CancelSequence")
	end
	
	local repairGuySequence = ents.FindByName("repairguy_seqc")
	if (!IsValid(repairGuySequence[1])) then print("repairguy_seqc wasn't valid!") return end
	
	repairGuySequence[1]:Fire("BeginSequence")
	
	local computer = ents.FindByName("compbtn")
	if (!IsValid(computer[1])) then print("compbtn wasn't valid!") return end
	
	computer[1]:Fire("Unlock")

end

function loginToHyperCast()
	
	logonSound = ents.FindByName("compsnd3")
	if (!IsValid(logonSound[1])) then print("compsnd3 wasn't valid!") return end
	
	logonSound[1]:Fire("PlaySound")
	
	PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Welcome back spaceconfederate2000 to Hyper-Cast™!")
	
end

function readChat(chatText)
	
	if (!bNearComputer) then
	
		print("You need to be close to the computer to type, crackhead!")
	return end
	
	
	if (string.match(chatText, "spaceconfederate2000") and string.match(chatText, "fuckxenomes")) then
		loginToHyperCast()
	else
		PrintMessage(HUD_PRINTTALK, "Hyper-Cast: Sorry, but your username and/or password was incorrect.")
	end



end

function createMessage() --creates the message from hyper-cast

	file.CreateDir("gunman/inbox")

	local msg = file.Open( "gunman/inbox/HYper-caST - RE; Passage to the Valkyrie System.txt", "w", "DATA")
	
	local players = ents.FindByClass("player")
	
	if (!IsValid(players[1])) then print("GUNMAN: Could not create message, no players!") return end
	
	local playerName = players[math.random(1, table.maxn(players))]:GetName()
	
	local curDate = os.date("%m/%d/%Y at %I:%M:%S %p", os.time())
	
	
	
	msg:Write("Sent from <tomnoreply@HYper-caST.sgn> to " .. playerName .. " on " .. curDate .. " in regards to 'Request For Passage to the Valkyrie System'")
	
	
	
	
	
	
	msg:Write("\n\n\n\n\n\n\n\nGreetings, " .. playerName .. ".")
	
	
	msg:Write("\n\n\nIn regards to your recent request for passage into the Valkyrie system, we would like to first verify your identity.")
	
	msg:Write("\n\nYou can do that by simply logging into your HYper-caST™ account through our netsite, using any nearby computer terminal.")
	
	msg:Write("\n\nSimply input your credentials into the chat box field.")
	
	msg:Write("\n\nThen simply answer a few security questions.")
	
	
	msg:Write("\n\n\n\nAfter which, we will evaluate your request and then notify you on our answer.")
	
	
	msg:Write("\n\n\n\nWe hope to hear back from you, mr." .. playerName .. "!")
	
	msg:Write("\n\nSincerely, ")
	
	msg:Write("Tom Phooler")
	
	
	msg:Write("\n\n\nHYper-caST™")
	
	
	
	
	
	
	
	
	
	msg:Write("\n\n\n\n\n\n\n\n\n\n\nThis letter is copyrighted material of HYper-caST Inc. The 'HYper-caST' logo is a trademark of HYper-caST Inc.")
	msg:Write("\nAll rights reserved© 2000")
	
	
	
	msg:Flush()
	
	msg:Close()

end

function messageSent() --let us fax on over that succulent information.

	computerCheck = ents.FindByName("compcheck")
	if (!IsValid(computerCheck[1])) then print("compcheck wasn't valid!") return end
	
	computerCheck[1]:Fire("Enable")

	hook.Add("PlayerSay", "HK_CHAT", function(sender, text, teamChat)
		readChat(text)
	end)

	PrintMessage(HUD_PRINTTALK, "Hyper-Cast has sent you a message in your garrysmod/data/gunman/ folder!")
	createMessage()

end




