// Created by Crowbar 0.49.0.0

$modelname "gcmouseship_jets.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metal"

$bodygroup "studio"
{
	studio "cin_mouseship_jets_jets"
}

$cdmaterials "models/gcmouseship/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bone07" -119.142128 0 0 119.021141 121.46125 7.625587
$hbox 0 "Bone04" -43.34 -0.42 -43.360001 43.380001 47.600296 43.360001
$hbox 0 "Bone05" -17.030001 0 -17.049999 17.07 121.129997 17.049999
$hbox 0 "Bone01" -43.259998 -0.42 -43.360001 43.459999 47.600296 43.360001
$hbox 0 "Bone02" -16.950001 0 -17.049999 17.15 121.129997 17.049999

$sequence "ship#idle" {
	"cin_mouseship_jets_anims\ship#idle"
	fps 30
	loop
}
$sequence "takeoff" {
	"cin_mouseship_jets_anims\takeoff"
	fps 25
}
$sequence "crash" {
	"cin_mouseship_jets_anims\crash"
	fps 46
}
$sequence "crash#idle" {
	"cin_mouseship_jets_anims\crash#idle"
	fps 10
	loop
}
$sequence "flying#idle" {
	"cin_mouseship_jets_anims\flying#idle"
	fps 10
	loop
}
$sequence "fly#flying" {
	"cin_mouseship_jets_anims\fly#flying"
	fps 30
	loop
}
$sequence "fly#idle" {
	"cin_mouseship_jets_anims\fly#idle"
	fps 10
	loop
}
