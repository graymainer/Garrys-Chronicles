--loads the sentence file for gctgm.

--print("GCTGM: Loading gunman...")

PrecacheSentenceFile("data/gunman/sentences_gunman.json")


--loads some soundscript entries for npc footsteps.

sound.Add( {
	name = "NPC.Gunman_Step1",
	channel = CHAN_BODY,
	volume = 15,
	level = SNDLVL_75dB, --must be set (not equal to 0) for spatialization to work. not sure what to, though...
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

include("gunman/club.lua")

--include("gunman/soundLib.lua")

