// Created by Crowbar 0.49.0.0

$modelname "gunman\item_ammo_dml.mdl"
$body "Rocket Ammo Pack" "dmlammo_ref"

$contents "solid"
$surfaceprop "weapon"

$cdmaterials "models\gunman\items\dmlammo\"

$collisionmodel "dmlammo_ref.smd"
{
	$automass
}

$sequence "idle" {
	"dmlammo_ref"
	fps 10
}
