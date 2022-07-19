// Created by Crowbar 0.65

// Stored modelname (without quotes): "d:\rewolf\w_guass.mdl"
$modelname "gunman\w_pistol.mdl"

$cdmaterials "models\gunman\weapons\gausspistol\"

$body "Gaussian Handcannon" "w_pistol"

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "w_pistol" {
	$automass
}

$sequence "idle" {
	"w_pistol"
	fps 8
}