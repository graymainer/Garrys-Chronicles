// Created by Crowbar 0.49.0.0

$modelname "gc_cactus.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "dirt"
$contents "solid"

$bodygroup "studio"
{
	studio "cactus"
}

$cdmaterials "models/gc_cactus/"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$collisionmodel "cactus_phys.smd"
{
	$automass
	$concave
}

$sequence "base" {
	"cactus_anims\base"
	fps 30
}
