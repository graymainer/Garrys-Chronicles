// Created by Crowbar 0.49.0.0

$modelname "gc_asteroid_small.mdl"
$cd "."
$cliptotextures
$scale 1.0

$staticprop
$surfaceprop "concrete"
$contents "solid"

$collisionmodel	"asteroid_phys.smd"
{
	$automass
}

$bodygroup "body"
{
	studio "asteroid_meteor"
}

$cdmaterials "models/gc_asteroid/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$sequence "base" {
	"asteroid_anims\base"
	fps 30
}
