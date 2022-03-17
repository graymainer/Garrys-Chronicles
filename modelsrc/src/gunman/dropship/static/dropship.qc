// Created by Crowbar 0.49.0.0

$modelname "gunman/dropship_static.mdl"

$surfaceprop "metalvehicle"
$contents "solid"
$staticprop

$bodygroup "studio"
{
	studio "static_dropship"
}

$cdmaterials "models/gunman/dropship/"

$collisionmodel	"..\dropship_phys.smd"
{
	$concave
	$automass
}

$sequence "idle" {
	"idle"
	fps 30
}

