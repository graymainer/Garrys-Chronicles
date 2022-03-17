// Created by Crowbar 0.49.0.0

$modelname "gcgeneralstatue.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "concrete"
$contents "solid"

$bodygroup "studio"
{
	studio "general_statue_general"
}

$cdmaterials "models/gcgeneralstatue/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "villianhea" -63.34 -1 -39.029999 62.450001 299.019989 32.650002

$collisionmodel	"general_statue_phys.smd"
{
	$automass
}

$sequence "idle" {
	"general_statue_anims\idle"
	fps 30
}
