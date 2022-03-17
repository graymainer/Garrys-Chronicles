// Created by Crowbar 0.49.0.0

$modelname "gc_dropship_hollow.mdl"
$cd "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "dropship_hollow_mesh"
}

$cdmaterials "models/gcdropship/"

$surfaceprop "metalvehicle"
$contents "solid"
$collisionmodel "dropship_hollow_phys.smd"
{
	$automass
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bone16" -168.309998 -356.470001 -114.260002 168.339996 371.73999 358.390015
$hbox 0 "Bone02" -20.1 -68.5 -68.75 10.5 0.06 101.349998
$hbox 0 "Bone01" -10.5 -68.510002 -68.75 20.1 0.06 101.349998
$hbox 0 "Bone09" -13.48 -5.04 -5.03 35.82 5.02 5.03
$hbox 0 "Bone10" -9.64 -15.1 -13.37 22.549999 14.9 16.459999
$hbox 0 "Bone14" -13.44 -5.02 -5.03 35.869999 5.04 5.03
$hbox 0 "Bone15" -9.25 -14.9 -13.37 22.93 15.1 16.459999

$sequence "doorclosed#idle" {
	"hollowdropship_anims\doorclosed#idle"
	fps 30
}
$sequence "landing#idle" {
	"hollowdropship_anims\landing#idle"
	fps 10
	loop
}
$sequence "landing#open" {
	"hollowdropship_anims\landing#open"
	fps 10
}
$sequence "hovering#idle" {
	"hollowdropship_anims\hovering#idle"
	fps 15
	loop
}
$sequence "hover#close" {
	"hollowdropship_anims\hover#close"
	fps 15
}
$sequence "hover#idle" {
	"hollowdropship_anims\hover#idle"
	fps 15
	loop
}
