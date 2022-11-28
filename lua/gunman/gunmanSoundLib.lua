--loads up any soundscripts we need for the project.


--entries for the vo system in the tram ride section.
sound.Add( {
	name = "Tram.Voice0",
	channel = CHAN_VOICE,
	volume = 0.6,
	level = 0,
	pitch = 100,
	sound = "gunman/tram/tramVO0.wav"
	}
)

sound.Add( {
	name = "Tram.Voice1",
	channel = CHAN_VOICE,
	volume = 0.6,
	level = 0,
	pitch = 100,
	sound = "gunman/tram/tramVO1.wav"
	}
)

sound.Add( {
	name = "End.Music",
	channel = CHAN_STREAM,
	volume = 0.6,
	level = 0,
	pitch = 100,
	sound = "#gcsfx/music/credits.mp3"
	}
)

--tram vo players
function playTramVO0() --needed for some dumbass reason im not sure anyone will ever understand. this same exact code cant just be executed in hammer for who knows what reason. even with the "s replaced with the 's. nope.
					--6/28/22 this is actually because lua_run (or hammer) doesn't support commas in the param field.
	sound.Play("Tram.Voice0", Vector(0, 0, 0))
end

function playTramVO1()
	sound.Play("Tram.Voice1", Vector(0, 0, 0))
end

function playEndMusic()
	sound.Play("End.Music", Vector(0, 0, 0))
end

--entries for npc footsteps.

sound.Add( {
	name = "NPC.Gunman_Step1",
	channel = CHAN_BODY,
	volume = 15,
	level = SNDLVL_75dB, --must be set (not equal to 0) for spatialization to work.
	pitch = {95, 105},
	sound = 
		{
			"gunman/common/gunman_step1.wav",
			"gunman/common/gunman_step3.wav"
		}
	}
)

sound.Add( {
	name = "NPC.Gunman_Step2",
	channel = CHAN_BODY,
	volume = 15,
	level = SNDLVL_75dB,
	pitch = {95, 105},
	sound = 
		{
			"gunman/common/gunman_step2.wav",
			"gunman/common/gunman_step4.wav"
		}
	}
)