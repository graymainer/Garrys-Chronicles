// Created by Crowbar 0.49.0.0

$modelname "gunman/mouseShip_static.mdl"

$surfaceprop "MetalVehicle"
$contents "solid"

$body "Mouse Ship" "mouseShip_ref"

$cdmaterials "models/gunman/mouseShip/"
$staticprop

$collisionmodel	"mouseShip_phys.smd"
{
	$automass
	$concave
}

$sequence "Idle" {
	"anims\idle"
	fps 30
	loop
}