// Created by Crowbar 0.49.0.0

$modelname "gunman\tank.mdl"
$cdmaterials "models\gunman\vehicle_tank\"
$staticprop
$body "Tank Static Prop" "gc_tank.smd"



$surfaceprop "metalvehicle"
$contents "solid"


$collisionmodel	"gc_tank_phys.smd"
{
	$mass 48000.0
}

$sequence "idle" {
	"gc_tank.smd"
	fps 25
}
