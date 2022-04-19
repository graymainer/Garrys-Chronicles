// Created by Crowbar 0.49.0.0

$modelname "gunman/screen.mdl"

$surfaceprop "glass"
$contents "solid"
$staticprop

$illumposition 0.247 -5.787 -34.244

$bodygroup "screens"
{
	studio "screen"
	studio "screen_big"
	studio "screen_broken"
}

$cdmaterials "models/gunman/screen/"

$collisionmodel	"screen.smd"
{
	$automass
}

$sequence "idle" {
	"screen_anims\hologram"
	fps 30
}
