// Created by Crowbar 0.49.0.0

$modelname "gcmouseship_big.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metalvehicle"
$contents "solid"

$bodygroup "studio"
{
	studio "mouseship_big_mouseshipbig"
}

$cdmaterials "models/gcmouseship/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "mousemiddle" -150 -141.330002 -120.160004 147.600006 120.959999 169.639999

$collisionmodel	"mouseship_big_phys.smd"
{
	$automass
}

$sequence "mayan0" {
	"mouseship_big_anims\mayan0"
	fps 25
}
