// Created by Crowbar 0.49.0.0

$modelname "gunman\item_ammo_rocket.mdl"
$body "Rocket Ammo" "dmlrocket_ref"

$contents "solid"
$surfaceprop "weapon"


$cdmaterials "models\gunman\items\dmlammo\"

$collisionmodel "dmlrocket_ref.smd"
{
	$automass
}

$sequence "idle" {
	"dmlrocket_ref"
	fps 10
}
