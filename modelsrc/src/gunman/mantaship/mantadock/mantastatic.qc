// Created by Crowbar 0.49.0.0

$modelname "gunman/mantaShip_static.mdl"

$model "Mantaship" "mantadock_mantaship2"

$cdmaterials "models/gunman/mantaShip/"

$staticprop

$surfaceprop "metalvehicle"
$contents "solid"

$collisionmodel	"mantadock_phys.smd"
{
	$automass
}

$sequence "idle" {
	"mantadock_anims\idle"
	ACT_IDLE 1
	fps 10
	loop
}