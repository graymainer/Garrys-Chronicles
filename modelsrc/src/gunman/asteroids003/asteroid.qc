// Created by Crowbar 0.49.0.0

$modelname "gunman/asteroids003.mdl"

$surfaceprop "boulder"
$contents "solid"

$collisionmodel	"asteroid_base_M.smd"
{
	$automass
}

$bodygroup "size"
{
	studio "asteroid_base_M"
	studio "asteroid_base_S"
	studio "asteroid_base_L"
}

$cdmaterials "models/gunman/asteroids/"

$sequence "idle" {
	"anims/idle"
	fps 24
}
$sequence "spin1" {
	"anims/spin0"
	fps 60
}
$sequence "spin2" {
	"anims/spin1"
	fps 60
}
$sequence "spin3" {
	"anims/spin2"
	fps 60
}
$sequence "spin4" {
	"anims/spin3"
	fps 60
}