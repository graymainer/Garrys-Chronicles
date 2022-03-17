// Created by Crowbar 0.49.0.0

$modelname "pv_mechagun.mdl"
$cd "."
$cliptotextures
$scale 1.0


$cdmaterials "models/gcweapons/mecha_gun/"
$cdmaterials "models/gcweapons/misc/"

$bodygroup "body"
{
	studio "v_mechagun_base"
}

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "mg_phys"
{
	$mass "12.55"
	$concave
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}



$sequence "idle" {
	"v_mechagun_anims\idle"
	fps 15
}
