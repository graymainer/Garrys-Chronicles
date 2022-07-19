// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf/knife.mdl"
$modelname "gunman\w_melee.mdl"

$cdmaterials "models\gunman\weapons\melee\"

$body "Combat Knife" "w_knife"

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "w_knife" {
	$automass
}

$sequence "idle" {
	"w_knife"
	fps 30
}
