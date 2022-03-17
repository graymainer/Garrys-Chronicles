// Created by Crowbar 0.49.0.0

$modelname "gc_holopipes.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metal"
$contents "solid"

$bodygroup "studio"
{
	studio "holopipes"
}

$cdmaterials "models/gc_holopipes/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Surf0" -34.950001 -31.09 -0.4 35.130001 33.57 49

$collisionmodel	"holopipes_phys.smd"
{
	$automass
}

$sequence "AIcore" {
	"holopipes_anims\AIcore"
	fps 30
}
