::BUILDS CUBEMAPS FOR EVERY .BSP WITHIN THE GIVEN GAME'S MAPS\ DIRECTORY.
::This bat file should not be opened. Instead, call it from another bat file after
::setting up the %gamename%(string) and %bounces%(int) variables.




@echo off

for %%f in (%~dp0%gamename%\maps\*.bsp) do (

	echo.
	echo.

	echo  ------------------------------
	echo  Building cubemaps for ... %%~nf.bsp 


	echo.

	%~dp0hl2.exe -game %gamename% -buildcubemaps %bounces% -map %%~nf
	
	echo.

	echo  ------------------------------
	echo  %%~nf cubemaps built. 


	echo.
	echo.

)
