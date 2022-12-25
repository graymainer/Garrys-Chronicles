bCloseToKeyboard = false
local seriousTime = 0
local msg = "bruh"
local msgs = {}
msgs[1] = "To be or not to be, that is a SERIOUS question"
msgs[2] = "GOOOOOD MORNIIINNNNG BABYLOOOOON!!"

sound.Add({

	name = "enter",
	channel = CHAN_VOICE,
	volume = {1.0, 1.5},
	pitch = {95, 105},
	sound = "ambient/machines/keyboard7_clicks_enter.wav"


})

--You serious!?
sound.Add( {
	name = "Serious.Music",
	channel = CHAN_STREAM,
	volume = 0.5,
	level = 0,
	pitch = 100,
	sound = "#gunman/club/puz/secretmus.mp3"
	}
)

sound.Add( {
	name = "Serious.Quote1",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = 0,
	pitch = 100,
	sound = "gunman/club/puz/quote0.wav"
	}
)

sound.Add( {
	name = "Serious.Quote2",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = 0,
	pitch = 100,
	sound = "gunman/club/puz/quote1.wav"
	}
)

hook.Add("Think", "HK_SERIOUSTHINK", function() 
	if (seriousTime == 0) then return end
	if (CurTime() > seriousTime + 104) then
		hook.Remove("Think", "HK_SERIOUSTHINK")
	return end
	
	print( msg .. "\n")
	PrintMessage(HUD_PRINTTALK, msg)
end)

hook.Add("PlayerSay", "HK_SERIOUSCHAT", function(sender, text, teamChat) --hook into the chat system for input to the computer.
	if (!bCloseToKeyboard) then return end
	if (seriousTime != 0) then return end
	if (keyboard == nil or keyboard == NULL) then
		keyboard = ents.FindByName("keyboard")[1]
		if (keyboard == nil or keyboard == NULL) then return end
	end
	
	sound.Play("enter", keyboard:GetPos())
	if (text == "SERIOUS") then
		local bustm = ents.FindByName("comp_bust")[1]
		bustm:Fire("Kill")
		local trig = ents.FindByName("sectrig")[1]
		trig:Fire("Kill")
	
		hook.Remove("PlayerSay", "HK_SERIOUSCHAT")
		timer.Simple(2, function() 			
			local music = ents.FindByName("mus")[1]
			music:Fire("volume", "0")
			

			
			sound.Play("Serious.Music", Vector(0, 0, 0))
			local quote = math.random(1, 2)
			msg = msgs[quote]
			sound.Play("Serious.Quote" .. quote, Vector(0, 0, 0))
			seriousTime = CurTime()
		end)
	end
	
end)
