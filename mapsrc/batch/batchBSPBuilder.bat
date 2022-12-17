::BATCH BSP BUILDER
::Hunter Warner - 10/10/2022






::NOT MEANT TO BE RAN DIRECTLY, USE A CALL IN ANOTHER BAT AND FIRST SETUP OUR VARIABLES!
::THEN CALL US


x:

::we assume we're in the folder with hl2.exe
cd X:\Programs\Steam\steamapps\common\Source SDK Base 2013 Multiplayer\bin






echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo /************************************************************************\
echo 	COMPILING ALL MAPS FOR %gamename%... 
echo \************************************************************************/

echo.
echo.



echo.
echo.
echo.

echo *=======================*
echo [ Compiling map data... ]
echo *=======================*
echo.

set bAutoLights=0

if %lights%==0 (
	set bAutoLights=1
)

set bspcmdline=-game "X:\Programs\Steam\steamapps\common\Source SDK Base 2013 Multiplayer\customConfig"
set viscmdline=-threads %threads%
set radcmdline=-threads %threads%



if %fastvis%==1 (
	set viscmdline=-fast %viscmdline%
)

if %fastrad%==1 (
	set radcmdline=-fast %radcmdline%
)

:: compile all in the 'compile' folder
for %%f in (%~dp0\compile\*.vmf) do (
	
	echo.
	echo.	
	echo.
	echo.

	echo *==================================================*
	echo  	Now compiling: %%~nf... 
	echo *==================================================*

	echo.
	echo.
	echo.
	echo.
	
	echo.
	echo.

	echo  ------------------------------
	echo  Compiling BSP... 

	echo.

	@echo on
	vbsp %bspcmdline% "%~dp0compile\%%~nf"
	@echo off
	
	echo.
	echo.
	
	
	echo.
	echo.


	echo  ------------------------------
	echo  Compiling Visibility Info...

	
	
	echo.
	

	@echo on
	vvis %viscmdline% "%~dp0compile\%%~nf.bsp"
	@echo off

	echo.
	echo.
	
	echo.
	echo.

	echo  ------------------------------
	echo  Running light simulations...


	echo.

	@echo on
	
	if %final%==1 echo RAD PARAMS: %radcmdline% -ambientocclusion -lights %%~nf.rad -final "%~dp0compile\%%~nf.bsp"

	if %final%==0 echo RAD PARAMS: %radcmdline% -lights %%~nf.rad "%~dp0compile\%%~nf.bsp"
	
	@echo off

	echo.
	echo.
	
	@echo on

	
	if %final%==1 vrad %radcmdline% -ambientocclusion -lights %%~nf.rad -final "%~dp0compile\%%~nf.bsp"

	if %final%==0 vrad %radcmdline% -lights %%~nf.rad "%~dp0compile\%%~nf.bsp"
	
	@echo off
	
	echo.
	echo.

::copy the files
	echo.
	echo.

	echo  ------------------------------
	
	if NOT exist "%~dp0\compile\%%~nf.bsp" echo FAILED TO COMPILE %%~nf.bsp!!!
	if exist "%~dp0\compile\%%~nf.bsp" echo  Publishing %%~nf.bsp to maps dir.
	
	if exist "%~dp0..\..\maps\%%~nf.bsp" attrib -r "%~dp0..\..\maps\%%~nf.bsp"
	echo.
	
	if exist "%~dp0\compile\%%~nf.bsp" copy "%~dp0\compile\%%~nf.bsp" %~dp0..\..\maps\%%~nf.bsp"
	
	

	
	
	echo.

	echo *--------*
	echo   *Done.* 
	echo *--------*

	echo.
	echo.
	
::cleanup
	echo.
	echo.

	echo  ------------------------------
	echo  Cleaning up... 


	echo.
	
	if exist "%~dp0compile\%%~nf.bsp" del "%~dp0compile\%%~nf.bsp"
	
	echo.

	echo *--------*
	echo   *Done.* 
	echo *--------*

	echo.
	echo.

)

echo.
echo.
echo.

echo *================================*
echo [ Map data compilation finished! ]
echo *================================*
echo.


