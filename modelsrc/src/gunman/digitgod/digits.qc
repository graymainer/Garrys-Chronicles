// Created by Crowbar 0.49.0.0

$modelname "gunman/digitgod.mdl"

$surfaceprop "computer"
$contents "solid"

$bodygroup "studio"
{
	studio "digits_numbers"
}

$cdmaterials "models/gunman/digitgod/"

$texturegroup "skinfamilies"
{
	{ "red0.vtf" }
	{ "red1.vtf" }
	{ "red2.vtf" }
	{ "red3.vtf" }
	{ "red4.vtf" }
	{ "red5.vtf" }
	{ "red6.vtf" }
	{ "red7.vtf" }
	{ "red8.vtf" }
	{ "red9.vtf" }
}

$collisionmodel "digits_numbers.smd"
{
	$automass
}

$sequence "idle" {
	"digits_numbers"
}
