// Created by Crowbar 0.49.0.0

$modelname "gunman/item_ammo_pistol.mdl"

$contents "solid"
$surfaceprop "weapon"

$body "Gauss Energy Cannister" "gauss_ammo_ref"

$cdmaterials "models/gunman/items/pistol/ammo/"

$collisionmodel	"gauss_ammo_ref.smd"
{
	$automass
}

$sequence "idle" {
	"gauss_ammo_ref"
	fps 10
}
