::BATCH BSP BUILDER
::Hunter Warner - 10/10/2022


::compiles all maps for the given game. It will look in the given directory that should contain .VMF files and will begin a loop on each map.
::during this loop, the map will be run through vbsp, then vvis, then vrad. Then it will be copied to the maps folder. 
::The remaining bsp file in the vmf directory will then be deleted.

::You can tell us to build all cubemaps as well. In which case, you can set the bounces var below to specify how many times you'd like to
::recusrivly build said cubemaps. (to iron out crusty reflections within reflections.)

::you can also tell us to first decompile the map and place it into the given vmf directory and then recompile it from there.
::You'll need to specify a decompiler. (although this implemented yet..)

::You can choose to use -fast with vvis and/or vrad.

::shut the sets up. allow for formatting below.
@echo off 




::YOUR OPTIONS::
set fastvis=1
set fastrad=1
set final=0
set buildcubemaps=0
set bounces=2
set threads=16
set lights=0

::============::


CALL batchBSPBuilder.bat


pause  
