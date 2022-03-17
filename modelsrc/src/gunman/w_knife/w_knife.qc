// Created by Crowbar 0.49.0.0

$modelname "gcweapons/combatknife/w_combatknife.mdl"
$cd "."
$cliptotextures
$scale 0.8

$contents "solid"
$surfaceprop "weapon"

$bodygroup "studio"
{
	studio "w_knife_knifeworldmodel"
}

$collisionmodel	"w_knife_phys.smd"
{
	$automass
}

$cdmaterials "models/gcweapons/combatknife/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Box03" 0 0 -14.39 46.450001 175.850006 8.63

$sequence "idle" {
	"w_knife_anims\idle"
	fps 30
}
