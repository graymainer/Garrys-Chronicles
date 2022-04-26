
if ( !string.StartWith(game.GetMap(), "gc_") and !string.StartWith(game.GetMap(), "gunman_")) then return end

--print("GCTGM: Loading gunman particles...")


game.AddParticles("particles/water_leaks.pcf")
PrecacheParticleSystem( "WaterLeak_Pipe_1_SmallDrops" )
PrecacheParticleSystem( "WaterLeak_Pipe_1_Stream_3" )
PrecacheParticleSystem( "WaterLeak_Pipe_1_b" )
PrecacheParticleSystem( "WaterLeak_Pipe_1_SmallFoam_1" )