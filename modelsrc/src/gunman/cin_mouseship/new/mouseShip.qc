// Created by Crowbar 0.49.0.0

$modelname "gunman/mouseShip.mdl"

$surfaceprop "MetalVehicle"
$jointsurfaceprop "surfpropbone_cockpit" "glass"
$contents "solid"

$body "Mouse Ship" "mouseShip_ref"

$bodygroup "Jet Flames"
{
	studio "mouseShip_jets_ref"
	blank
}

$cdmaterials "models/gunman/mouseShip/"

//used for attaching fx to engines (e.g lights)
$attachment engineR "Bone02" 0 50 0 rotate 0 0 0
$attachment engineL "Bone05" 0 50 0 rotate 0 0 0
$attachment shipHull "Bone07" 0 0 0 rotate 0 0 0


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bone07" -150 -141.449997 -122.879997 147.600006 120.830002 166.910004
$hbox 0 "Bone04" -43.34 -0.42 -43.360001 43.380001 47.600296 43.360001
$hbox 0 "Bone05" -17.030001 0 -17.049999 17.07 121.129997 17.049999
$hbox 0 "Bone01" -43.259998 -0.42 -43.360001 43.459999 47.600296 43.360001
$hbox 0 "Bone02" -16.950001 0 -17.049999 17.15 121.129997 17.049999

$collisionmodel	"mouseShip_phys.smd"
{
	$automass
	$concave
}

$sequence "Idle" {
	"anims\idle"
	fps 30
	loop
}
$sequence "Takeoff" {
	"anims\takeoff"
	fps 25
}
$sequence "Takeoff_Idle" {
	"anims\takeoff_idle"
	fps 30
	loop
}
$sequence "Crash" {
	"anims\crash"
	{ event 1003 120 1 }
	{ event 1003 860 2 }
	fps 46
}
$sequence "Crashed_Idle" {
	"anims\crashed_idle"
	fps 10
	loop
}
$sequence "Crash_Idle" {
	"anims\crash_idle"
	fps 10
	loop
}
$sequence "Flyby" {
	"anims\flyby"
	fps 30
}
$sequence "Flyby_Idle" {
	"anims\flyby_idle"
	fps 10
	loop
}

