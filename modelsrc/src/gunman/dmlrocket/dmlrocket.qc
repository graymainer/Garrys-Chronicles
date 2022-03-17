// Created by Crowbar 0.49.0.0

$modelname "rocket.mdl"
$cd "."
$cliptotextures
$scale 1.0

$contents "solid"
$surfaceprop "metal"

$bodygroup "studio"
{
	studio "dmlrocket_rocket"
}

$cdmaterials "models\gcitems\dmlammo\"

$collisionmodel "dmlrocket_phys.smd"
{
	$automass
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "rocket1" -2.27 -17.629999 -2.27 2.27 8.4 2.27

$sequence "base" {
	"dmlrocket_anims\base"
	fps 10
}
