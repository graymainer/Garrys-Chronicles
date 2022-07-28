// Created by Crowbar 0.49.0.0

$modelname "gunman/decore_gibs.mdl"

$scale 2.0

$surfaceprop "metal"
$contents "solid"

$bodygroup "body"
{
	studio "decoregibs_labgibs1"
	studio "decoregibs_labgibs2"
	studio "decoregibs_labgibs3"
}

$cdmaterials "models/gunman/decore_gibs/"

$collisionmodel "decoregibs_labgibs1" {
	$automass

}

$sequence "idle" {
	"decoregibs_labgibs1"
	fps 10
}
