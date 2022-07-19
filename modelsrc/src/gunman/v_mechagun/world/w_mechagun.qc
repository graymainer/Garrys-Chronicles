// Created by Crowbar 0.65

// Stored modelname (without quotes): "d:\rewolf\w_mechagun.mdl"
$modelname "gunman\w_mechagun.mdl"

$cdmaterials "models\gunman\weapons\mechagun\"

$body "Mecha-Gun" "mechagun_w_ref"

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "mechagun_w_ref" {
	$automass
}

$sequence "idle" {
	"mechagun_w_ref"
	fps 15
}
