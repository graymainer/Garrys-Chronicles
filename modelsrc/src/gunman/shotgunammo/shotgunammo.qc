// Created by Crowbar 0.49.0.0

$modelname "gunman/item_ammo_shotgun.mdl"

$surfaceprop "weapon"
$contents "solid"

$body "Buckshot Ammo" "shotgunammo_ref"

$cdmaterials "models/gunman/items/shotgunammo/"

$collisionmodel	"shotgunammo_phys.smd"
{
	$automass
}

$sequence "idle" {
	"shotgunammo_ref"
	fps 10
}
