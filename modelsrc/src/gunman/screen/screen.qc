// Created by Crowbar 0.49.0.0

$modelname "gunman/screen001a.mdl"

$surfaceprop "glass"
$contents "solid"
$staticprop

$illumposition 0.247 -5.787 -34.244

$bodygroup "studio"
{
	studio "screen"
}

$cdmaterials "models/gunman/screen/"

$collisionmodel	"screen_phys.smd"
{
	$automass
}

$sequence "idle" {
	"screen_anims\hologram"
	fps 30
}
