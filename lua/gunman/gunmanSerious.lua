bCloseToKeyboard = false
local seriousTime = 0

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

hook.Add("Think", "HK_SERIOUSTHINK", function() 
	if (seriousTime == 0) then return end
	if (CurTime() > seriousTime + 104) then
		hook.Remove("Think", "HK_SERIOUSTHINK")
	return end
	
	print("To be or not to be, that is a SERIOUS question \n")
	PrintMessage(HUD_PRINTTALK, "To be or not to be, that is a SERIOUS question")
end)

hook.Add("PlayerSay", "HK_SERIOUSCHAT", function(sender, text, teamChat) --hook into the chat system for input to the computer.
	if (!bCloseToKeyboard) then return end
	if (keyboard == nil or keyboard == NULL) then
		keyboard = ents.FindByName("keyboard")[1]
		if (keyboard == nil or keyboard == NULL) then return end
	end
	
	sound.Play("enter", keyboard:GetPos())
	if (text == "SERIOUS") then
		hook.Remove("PlayerSay", "HK_SERIOUSCHAT")
		timer.Simple(2, function() 
			sound.Play("Serious.Music", Vector(0, 0, 0))
			local noises = ents.FindByName("noise")
			local monitornoise = ents.FindByName("noise3")[1]
			
			monitornoise:Fire("StopSound")
			for i=1, #noises, 1 do
				noises[i]:Fire("StopSound")
			end
			
			seriousTime = CurTime()
		end)
	end
	
end)
