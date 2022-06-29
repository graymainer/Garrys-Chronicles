--GUNMAN PARTICLE LOADER

--loads our custom particles. Without this, none of our custom particles will function.



if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then return end --checks if the map we're on is a gunman project map. If false, then end.


--FILES BEGIN
game.AddParticles("particles/advisor_fx.pcf")
game.AddParticles("particles/dust_rumble.pcf")
game.AddParticles("particles/water_leaks.pcf")
game.AddParticles("particles/hunter_intro.pcf")
game.AddParticles("particles/stalactite.pcf")
--FILES END