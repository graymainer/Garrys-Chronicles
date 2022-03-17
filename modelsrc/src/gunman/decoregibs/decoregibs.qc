// Created by Crowbar 0.49.0.0

$modelname "gcdecoregibs.mdl"
$cd "."
$cliptotextures
$scale 3.0

$surfaceprop "metal"

$bodygroup "body"
{
	studio "decoregibs_labgibs1"
	studio "decoregibs_labgibs2"
	studio "decoregibs_labgibs3"
}

$cdmaterials "models/gcdecoregibs/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Line05" -9.93 -16.879999 -1.42 6.79 0 12.28

$sequence "base" {
	"decoregibs_anims\base"
	fps 10
}
