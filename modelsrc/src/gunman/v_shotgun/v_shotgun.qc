// Created by Crowbar 0.49.0.0

$modelname "pv_shotgun.mdl"
$cd "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "v_shotgun_base"
}

$cdmaterials "models/gcweapons/shotgun/"
$cdmaterials "models/gcweapons/misc/"

$surfaceprop "weapon"
$contents "solid"
$collisionmodel "sg_phys"
{
	$mass "9.3"
	$concave
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}


$sequence "idle" {
	"v_shotgun_anims\idle"
	fps 15
}

