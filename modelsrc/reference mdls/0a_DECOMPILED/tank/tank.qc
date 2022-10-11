// Created by Crowbar 0.72

// Stored modelname (without quotes): "d:\rewolf/tank.mdl"
$modelname "tank.mdl"
$cd "."
$cdtexture "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "base"
}

$flags 0


$attachment 0 "Bone01" 0 -81 4
$attachment 1 "Bone01" 22 -23 3
$attachment 2 "Bone07" 50 -90 22
$attachment 3 "Bone07" -50 -90 22

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox 0 0 0 0 0 0

$hbox 0 "Bone03" -92.660004 -145.050003 -50.669998 92.660004 122.669998 24.4
$hbox 0 "Bone06" -38.360001 -21.799999 -0.17 38.360001 47.66 42.880001
$hbox 0 "Bone01" -25.389999 -77.480003 -11.93 26.209999 24.110001 18.040001
$hbox 0 "Bone07" -57.130001 -89.870003 0 57.130001 0 25.57

$controller 0 "Bone06" ZR 0 120
$controller 1 "Bone05" ZR 0 120
$controller 2 "Bone04" ZR 0 120
$controller 3 "Bone01" XR -90 17

$sequence "offline" {
	"tank_anims\offline"
	fps 30
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
}
$sequence "turret" {
	"tank_anims\turret"
	{ event 5001 0 "91" }
	fps 20
}
