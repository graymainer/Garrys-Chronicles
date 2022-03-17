// Created by Crowbar 0.49.0.0

$modelname "gcbuckshot.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "weapon"
$contents "solid"

$bodygroup "studio"
{
	studio "shotgunammo_ammo"
}

$cdmaterials "models/gcitems/gcbuckshot/"

$collisionmodel	"buckshot_phys.smd"
{
	$automass
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Box01" -15.855 -5.43 -7.665 0 16.799999 7.665

$sequence "ammo" {
	"shotgunammo_anims\ammo"
	fps 10
}
