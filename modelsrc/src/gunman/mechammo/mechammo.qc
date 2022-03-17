// Created by Crowbar 0.49.0.0

$modelname "mechaclip.mdl"
$cd "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "mechammo_ammoclip"
}

$contents "solid"
$surfaceprop "weapon"

$cdmaterials "models/gcitems/mechaclip/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Box01" -1.74 -4.45 0 1.79 3.96 19.950001

$collisionmodel	"mechammo_phys.smd"
{
	$automass
}

$sequence "idle" {
	"mechammo_anims\idle"
	fps 15
}
