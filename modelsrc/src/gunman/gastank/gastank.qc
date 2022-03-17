// Created by Crowbar 0.49.0.0

$modelname "gc_gastank.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metal_barrel"
$contents "solid"
$staticprop

$collisionmodel "gastank_phys"
{
	$mass "3.85554"
	$concave
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}

$bodygroup "studio"
{
	studio "gastank"
}

$cdmaterials "models/gc_gastank/"

$sequence "idle" {
	"gastank_anims\idle"
	fps 10
}
