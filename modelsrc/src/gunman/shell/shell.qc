// Created by Crowbar 0.49.0.0

$modelname "bullet.mdl"
$cd "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "shell_mechagun"
}

$cdmaterials "models/gcweapons/mecha_gun/"

$surfaceprop "metal"
$contents "solid"

$collisionmodel "shell_phys.smd"
{
	$concave
	$mass "0.0095"
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}


$sequence "base" {
	"shell_anims\base"
	fps 15
}