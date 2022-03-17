// Created by Crowbar 0.49.0.0

$modelname "gc_flashlight.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metal"
$contents "solid"

$bodygroup "body"
{
	studio "flashlight.smd"
}

$cdmaterials "models/gcgunman/"

$collisionmodel	"flashlight_phys.smd"
{
	$automass
}

$sequence "idle" {
	"flashlight_anims\idle"
	ACT_IDLE 6
	fps 20
	loop
}
$sequence "flashlight#idle" {
	"flashlight_anims\flashlight#idle"
	fps 10
	loop
}