// Created by Crowbar 0.49.0.0

$modelname "gc_asteroid_big.mdl"
$cd "."
$cliptotextures
$scale 2

$staticprop
$surfaceprop "concrete"
$contents "solid"

$collisionmodel	"asteroid_phys.smd"
{
	$automass
}

$bodygroup "body"
{
	studio "asteroid_base"
}

$cdmaterials "models/gc_asteroid/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$sequence "base" {
	"asteroid_anims\base"
	fps 30
}
