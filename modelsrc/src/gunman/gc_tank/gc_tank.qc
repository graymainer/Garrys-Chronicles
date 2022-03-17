// Created by Crowbar 0.49.0.0

$modelname "gc_tank_static.mdl"
$cdmaterials "models\gc_tank\"
$staticprop
$bodygroup "studio"
{
	studio "gc_tank.smd"
}



$surfaceprop "metalvehicle"
$contents "solid"
$collisionmodel	"gc_tank_phys.smd"
{
	$mass 48000.0
}

$sequence "idle" {
	"gc_tank_anims\id.smd"
	fps 1
}
