// Created by Crowbar 0.49.0.0

$modelname "gunman/item_medkit.mdl"

$surfaceprop "weapon"
$contents "solid"

$body "Medkit" "shotgunammo_ref"

$cdmaterials "models/gunman/items/medkit/"

$collisionmodel	"shotgunammo_ref.smd"
{
	$automass
}

$sequence "idle" {
	"shotgunammo_ref"
	fps 10
}
