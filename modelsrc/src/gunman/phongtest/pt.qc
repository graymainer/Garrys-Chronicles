// Created by Crowbar 0.49.0.0

$modelname "gunman/phongtest_v2.mdl"

$surfaceprop "default"
$contents "solid"
$staticprop

$illumposition 0.247 -5.787 -34.244

$bodygroup "studio"
{
	studio "pt_ref"
}

$cdmaterials "models/gunman/phongtest/"

$collisionmodel	"pt_ref.smd"
{
	$automass
}

$sequence "idle" {
	"pt_ref"
	fps 30
}
