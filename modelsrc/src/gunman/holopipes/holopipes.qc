// Created by Crowbar 0.49.0.0

$modelname "gunman/holopipes.mdl"

$surfaceprop "metalVent"
$contents "solid"

$staticprop

$bodygroup "studio"
{
	studio "holopipes"
}

$cdmaterials "models/gunman/holopipes/"

$collisionmodel	"holopipes.smd"
{
	$automass
}

$sequence "idle" {
	"holopipes_anims\AIcore"
	fps 30
}
