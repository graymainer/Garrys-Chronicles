// Created by Crowbar 0.49.0.0

$modelname "gunman/item_armor.mdl"

$surfaceprop "weapon"
$contents "solid"

$body "Armor Vest" "armor_ref"

$cdmaterials "models/gunman/items/armor/"

$collisionmodel	"armor_ref.smd"
{
	$automass
}

$sequence "idle" {
	"armor_ref"
	fps 9
}
