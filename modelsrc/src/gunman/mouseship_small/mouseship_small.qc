// Created by Crowbar 0.49.0.0

$modelname "gcmouseship_small.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metalvehicle"
$contents "solid"

$bodygroup "studio"
{
	studio "mouseship_small_minimouseship"
}

$cdmaterials "models/gcmouseship/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "mousemiddle" -38.400002 -6.64 -24.01 36 58.93 48.43

$collisionmodel	"mouseship_small_phys.smd"
{
	$automass
}

$sequence "mayamlanding" {
	"mouseship_small_anims\mayamlanding"
	fps 15
}
