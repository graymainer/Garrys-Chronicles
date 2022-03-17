// Created by Crowbar 0.49.0.0

$modelname "gunman/mantaShip.mdl"

$model "Mantaship" "mantadock_mantaship2"

$cdmaterials "models/gunman/mantaShip/"


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
$sequence "Dock1_PreIdle" {
	"mantadock_anims\dock#idle"
	fps 20
	loop
}
$sequence "Dock1_Leaving" {
	"mantadock_anims\undock#leaving"
	fps 20
}
$sequence "Dock1_PostIdle" {
	"mantadock_anims\undock#idle"
	fps 20
}
$sequence "Dock2_PreIdle" {
	"mantadock_anims\dock2#idle"
	fps 20
	loop
}
$sequence "Dock2_Leaving" {
	"mantadock_anims\undock2#leaving"
	fps 15
}
$sequence "Dock2_PostIdle" {
	"mantadock_anims\undock2#idle"
	fps 20
}
