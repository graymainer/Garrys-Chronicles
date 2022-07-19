// Created by Crowbar 0.49.0.0

$modelname "gunman\w_grenade.mdl"
$body "Rocket" "w_grenade"

$contents "solid"
$surfaceprop "weapon"


$cdmaterials "models\gunman\items\rocket\"

$collisionmodel "w_grenade.smd"
{
	$automass
}

$sequence "idle" {
	"w_grenade"
	fps 10
}
