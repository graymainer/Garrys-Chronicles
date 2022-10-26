// Created by Crowbar 0.49.0.0

$modelname "gunman\gascan.mdl"

$surfaceprop "metal_barrel"
$contents "solid"
$staticprop

$body "Gas Can" "gastank.smd"

$collisionmodel "gastank_phys"
{
	$automass
}


$cdmaterials "models/gunman/gascan/"

$sequence "idle" {
	"gastank_anims\idle"
	fps 10
}
