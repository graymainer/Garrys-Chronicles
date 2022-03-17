// Created by Crowbar 0.49.0.0

$modelname "gunman/screen001b.mdl"

$surfaceprop "glass"
$contents "solid"
$staticprop

$bodygroup "studio"
{
	studio "screen128_screen"
}

$cdmaterials "models/gunman/screen/"

$collisionmodel	"screen128_phys.smd"
{
	$automass
}

$sequence "idle" {
	"screen128_anims\hologram"
	fps 30
}
