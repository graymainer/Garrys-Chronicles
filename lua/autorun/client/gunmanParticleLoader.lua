
if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then return end

--print("GCTGM: Loading gunman particles...")


--FILES BEGIN
game.AddParticles("particles/advisor_fx.pcf")
game.AddParticles("particles/dust_rumble.pcf")
game.AddParticles("particles/water_leaks.pcf")
game.AddParticles("particles/hunter_intro.pcf")
game.AddParticles("particles/stalactite.pcf")
--FILES END