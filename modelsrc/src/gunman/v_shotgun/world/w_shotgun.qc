// Created by Crowbar 0.65

// Stored modelname (without quotes): "d:\rewolf\w_shotgun.mdl"
$modelname "gunman\w_shotgun.mdl"

$cdmaterials "models\gunman\weapons\shotgun\"

$body "Combat Shotgun" "w_shotgun"

$contents "solid"
$surfaceprop "weapon"

$collisionmodel "w_shotgun" {
	$automass
}

$sequence "idle" {
	"w_shotgun"
	fps 22
}
