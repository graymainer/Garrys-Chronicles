//garrys chronicles tank vehicle model

$modelname "gunman/vehicle_tank.mdl"

$model "Gunman Tank" "tank_ref"


$cdmaterials "models/gunman/tank/"

$attachment temp "template" 0 0 0 rotate 0 0 0
$attachment 0 "Bone01" 0 -81 4
$attachment 1 "Bone01" 22 -23 3
$attachment 2 "Bone07" 50 -90 22
$attachment 3 "Bone07" -50 -90 22


$sequence Idle {
	"anims/idle"
	ACT_IDLE 1
	loop
	fps 24
}


$sequence "offline" {
	"tank_anims\offline"
	fps 30
	loop
}
$sequence "engine" {
	"tank_anims\engine"
	fps 10
	loop
}
$sequence "bumpfront" {
	"tank_anims\bumpfront"
	fps 20
}
$sequence "bumpback" {
	"tank_anims\bumpback"
	fps 20
}
$sequence "bumpleft" {
	"tank_anims\bumpleft"
	fps 20
}
$sequence "bumpright" {
	"tank_anims\bumpright"
	fps 20
}
$sequence "bumpfrontleft" {
	"tank_anims\bumpfrontleft"
	fps 20
}
$sequence "bumpfrontright" {
	"tank_anims\bumpfrontright"
	fps 20
}
$sequence "bumpbackleft" {
	"tank_anims\bumpbackleft"
	fps 20
}
$sequence "bumpbackright" {
	"tank_anims\bumpbackright"
	fps 20
}
$sequence "minguns" {
	"tank_anims\minguns"
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
	"tank_anims\turret"
	{ event 5001 0 "91" }
	fps 20
}

$surfaceprop "metalvehicle"
$contents "solid"


$collisionmodel "tank_phys"  {
	$automass
	$concave
}
