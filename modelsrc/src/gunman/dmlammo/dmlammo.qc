// Created by Crowbar 0.49.0.0

$modelname "rocketpack.mdl"
$cd "."
$cliptotextures
$scale 1.0

$contents "solid"
$surfaceprop "weapon"

$bodygroup "studio"
{
	studio "dmlammo_ammopack"
}

$cdmaterials "models\gcitems\dmlammo\"

$collisionmodel "dmlammo_phys.smd"
{
	$automass
	$concave
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Cylinder01" -7.86 -6.81 0 7.86 10.18 25.870001

$sequence "base" {
	"dmlammo_anims\base"
	fps 10
}
