//garrys chronicles tank vehicle model

$modelname "gunman/vehicle_tank_004.mdl"

$model "Gunman Tank" "tank_base"

$bodygroup "Weapon"
{
	studio "tank_turret.smd"
	blank
}

$origin 0 0 0 90

$cdmaterials "models/gunman/vehicle_tank/"

$attachment "muzzle" 					"Bone01" 0 0 0 			rotate 0 0 0
$attachment "vehicle_driver_eyes" 		"Bone10" 0 0 0 			rotate 0 0 0
$attachment "vehicle_feet_passenger0" 	"Bone10" 0 0 0 			rotate 0 0 0
$attachment "vehicle_headlight" 		"Bone03" 0 0 0 			rotate 0 0 0
$attachment "gun" 						"Bone06" 0 0 0 			rotate 0 0 0
$attachment "wheel_fl" 					"Bone12" 0 0 0 			rotate 0 0 0
$attachment "wheel_fr" 					"Bone11" 0 0 0 			rotate 0 0 0
$attachment "wheel_rl" 					"Bone12" 0 0 0 			rotate 0 0 0
$attachment "wheel_rr" 					"Bone11" 0 0 0 			rotate 0 0 0
$attachment "raytrace_fl" 				"Bone12" 0 0 0 			rotate 0 0 0
$attachment "raytrace_fr" 				"Bone11" 0 0 0 			rotate 0 0 0
$attachment "raytrace_rl" 				"Bone12" 0 0 0 			rotate 0 0 0
$attachment "raytrace_rr" 				"Bone11" 0 0 0 			rotate 0 0 0
$attachment "enter1" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter2" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter3" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter4" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter5" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter6" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter7" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "enter8" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit1" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit2" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit3" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit4" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit5" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit6" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit7" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit8" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit9" 					"Bone03" 0 0 0 			rotate 0 0 0
$attachment "exit10" 					"Bone03" 0 0 0 			rotate 0 0 0

//$attachment "muzzle" 						"Bone01" 35.09 -2.06 1.92 	rotate 0 0 0
//$attachment "vehicle_driver_eyes" 		"Bone10" 0 0 -4 			rotate 0 0 0
//$attachment "vehicle_feet_passenger0" 	"Bone10" 0 0 -32 			rotate 0 0 0
//$attachment "vehicle_headlight" 			"Bone03" 0 50 28 			rotate -90 -90 0
//$attachment "gun" 						"Bone06" 0 -2.06 1.92 		rotate 0 0 0
//$attachment "wheel_fl" 					"Bone12" 28 -4 80 			rotate 0 180 0
//$attachment "wheel_fr" 					"Bone11" -28 -4 80 			rotate 0 180 0
//$attachment "wheel_rl" 					"Bone12" 22 -4 -40 			rotate 0 180 0
//$attachment "wheele_rr" 					"Bone11" -22 -4 -40 		rotate 0 180 0
//$attachment "raytrace_fl" 				"Bone12" 28 -4 80 			rotate 0 180 0
//$attachment "raytrace_fr" 				"Bone11" -28 -4 80			rotate 0 180 0
//$attachment "raytrace_rl" 				"Bone12" 22 -4 -40			rotate 0 180 0
//$attachment "raytrace_rr" 				"Bone11" -22 -4 -40 		rotate 0 180 0
//$attachment "enter1" 						"Bone03" 64 64 3 			rotate -90 0 0
//$attachment "enter2" 						"Bone03" -64 64 3 			rotate -90 0 0
//$attachment "enter3" 						"Bone03" 0 64 75.74 		rotate -90 0 0
//$attachment "enter4" 						"Bone03" 64 18.59 3 		rotate -90 0 0
//$attachment "enter5" 						"Bone03" -64 18.59 3 		rotate -90 0 0
//$attachment "enter6" 						"Bone03" 0 18.59 75.74 		rotate -90 0 0
//$attachment "enter7" 						"Bone03" 0 15.77 -144.56 	rotate -90 0 0
//$attachment "enter8" 						"Bone03" 0 64 -144.56 		rotate -90 0 0
//$attachment "exit1" 						"Bone03" 64 64 20 			rotate -90 0 0
//$attachment "exit2" 						"Bone03" -64 64 20 			rotate -90 0 0
//$attachment "exit3" 						"Bone03" 0 64 90 			rotate -90 0 0
//$attachment "exit4" 						"Bone03" 0 -65.55 -8		rotate -90 0 0
//$attachment "exit5" 						"Bone03" 0 -65.55 -8		rotate -90 0 0
//$attachment "exit6" 						"Bone03" 64 -6.97 0 		rotate -90 0 0
//$attachment "exit7" 						"Bone03" -64 -6.97 0 		rotate -90 0 0
//$attachment "exit8" 						"Bone03" 64 64 64 			rotate -90 0 0
//$attachment "exit9" 						"Bone03" -64 64 64 			rotate -90 0 0
//$attachment "exit10" 						"Bone03" 0 64 -120 			rotate -90 0 0

$sequence "idle" {
	"anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}
$sequence "active" {
	"anims\active"
	fps 10
	loop
}
$sequence "bumpfront" {
	"anims\bumpfront"
	fps 20
}
$sequence "bumpback" {
	"anims\bumpback"
	fps 20
}
$sequence "bumpleft" {
	"anims\bumpleft"
	fps 20
}
$sequence "bumpright" {
	"anims\bumpright"
	fps 20
}
$sequence "bumpfrontleft" {
	"anims\bumpfrontleft"
	fps 20
}
$sequence "bumpfrontright" {
	"anims\bumpfrontright"
	fps 20
}
$sequence "bumpbackleft" {
	"anims\bumpbackleft"
	fps 20
}
$sequence "bumpbackright" {
	"anims\bumpbackright"
	fps 20
}
$sequence "minguns" {
	"anims\miniguns_firing"
	{ event 5021 0 "60" }
	{ event 5031 1 "70" }
	{ event 5021 1 "70" }
	{ event 5031 2 "60" }
	{ event 5021 3 "60" }
	{ event 5031 4 "70" }
	{ event 5021 5 "70" }
	{ event 5031 6 "60" }
	{ event 5021 7 "60" }
	{ event 5031 8 "70" }
	{ event 5021 9 "70" }
	fps 10
	loop
}
$sequence "turret" {
	"anims\turret"
	{ event 5001 0 "91" }
	fps 20
}

$surfaceprop "metalvehicle"
$contents "solid"


$collisionmodel "tank_base"  {
	$automass
}
