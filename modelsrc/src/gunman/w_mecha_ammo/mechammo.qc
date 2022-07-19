// Created by Crowbar 0.49.0.0

$modelname "gunman/item_ammo_mechagun.mdl"

$body "Mechagun Ammo" "mechaammo_ref"

$contents "solid"
$surfaceprop "weapon"

$cdmaterials "models/gunman/items/mechagunammo/"

$collisionmodel	"mechaammo_ref.smd"
{
	$automass
}

$sequence "idle" {
	"mechaammo_ref"
	fps 15
}
