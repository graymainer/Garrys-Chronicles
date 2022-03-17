// Created by Crowbar 0.49.0.0

$modelname "pv_combatknife.mdl"
$cd "."
$cliptotextures
$scale 1.0

$bodygroup "knife"
{
	studio "v_combatknife_knife"
}

$cdmaterials "models/gcweapons/combatknife/"
$cdmaterials "models/gcweapons/misc/"


$surfaceprop "weapon"
$contents "solid"

$collisionmodel "ck_phys"
{
	$mass "0.33"
	$concave
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}


$sequence "Idle" {
	"v_hands_anims\knifedraw"
	fps 1
}