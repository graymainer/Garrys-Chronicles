// Created by Crowbar 0.49.0.0

$modelname "gc_counter.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "computer"
$contents "solid"

$bodygroup "studio"
{
	studio "digits_numbers"
}

$cdmaterials "models/gc_counter/"

$texturegroup "skinfamilies"
{
	{ "red0.vtf" }
	{ "red1.vtf" }
	{ "red2.vtf" }
	{ "red3.vtf" }
	{ "red4.vtf" }
	{ "red5.vtf" }
	{ "red6.vtf" }
	{ "red7.vtf" }
	{ "red8.vtf" }
	{ "red9.vtf" }
}

$collisionmodel "digits_phys.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$sequence "idle" {
	"digits_anims\idle"
}
