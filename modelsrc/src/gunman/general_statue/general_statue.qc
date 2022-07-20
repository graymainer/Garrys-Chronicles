// Created by Crowbar 0.49.0.0

$modelname "gunman\general_statue.mdl"

$staticprop
$surfaceprop "concrete"
$contents "solid"

$body "villian" "general_statue_general"

$cdmaterials "models\gunman\generalstatue\"

$collisionmodel	"general_statue_general.smd"
{
	$automass
}

$sequence "idle" {
	"general_statue_general"
	fps 30
}
