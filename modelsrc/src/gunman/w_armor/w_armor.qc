// Created by Crowbar 0.49.0.0

$modelname "armor.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metal"
$contents "solid"

$bodygroup "studio"
{
	studio "w_armor_armor"
}

$cdmaterials "models/gcitems/armor/"

$collisionmodel	"armor_phys.smd"
{
	$automass
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Line06" -11.54 0 -7.88 13.73 16.43 7.88

$sequence "idle" {
	"w_armor_anims\idle"
	fps 9
}
