// Created by Crowbar 0.49.0.0

$modelname "gaussclip.mdl"
$cd "."
$cliptotextures
$scale 1.0

$contents "solid"
$surfaceprop "weapon"

$bodygroup "studio"
{
	studio "guassammo_ammo"
}

$cdmaterials "models/gcitems/gaussclip/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "cap" -1.62 -2.77 -10.85 6.81 2.77 0.5

$collisionmodel	"gaussammo_phys.smd"
{
	$automass
}

$sequence "ammo" {
	"guassammo_anims\ammo"
	fps 10
}
