// Created by Crowbar 0.49.0.0

$modelname "gunman/fuelPipe.mdl"

$model "Fuel Pipe" "fuelPipe_ref.smd"

$cdmaterials "models/gunman/fuelPipe/"

$include "phys.qci"

$sequence "ragdoll" {
	"dockpipes_anims\reference"
	ACT_DIERAGDOLL 1
	fps 30
}
$sequence "Idle_Top" {
	"dockpipes_anims\pipetop#idle"
	fps 20
	loop
}
$sequence "Idle_Side" {
	"dockpipes_anims\pipeside#idle"
	fps 20
	loop
}
$sequence "Dock1_PreIdle" {
	"dockpipes_anims\dock#idle"
	fps 20
	loop
}
$sequence "Dock1_Leaving" {
	"dockpipes_anims\undock#leaving"
	fps 20
}
$sequence "Dock1_PostIdle" {
	"dockpipes_anims\undock#idle"
	fps 20
	loop
}
$sequence "Dock2_PreIdle" {
	"dockpipes_anims\dock2#idle"
	fps 20
	loop
}
$sequence "Dock2_Leaving" {
	"dockpipes_anims\undock2#leaving"
	fps 20
}
$sequence "Dock2_PostIdle" {
	"dockpipes_anims\undock2#idle"
	fps 20
	loop
}
