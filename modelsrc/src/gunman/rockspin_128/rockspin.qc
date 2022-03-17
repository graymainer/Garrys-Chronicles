// Created by Crowbar 0.49.0.0

$modelname "gc_rockspin_128.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "concrete"
$contents "solid"

$bodygroup "rock"
{
	studio "rockspin_128one"
}

$cdmaterials "models/gc_rockspin/"

$collisionmodel	"rockspin128_phys.smd"
{
	$mass 132
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bone01" -261.209991 -287.170013 -254.970001 268.179993 235.869995 267.23999

$sequence "idle" {
	"rockspin_anims\idle"
	fps 10
}
