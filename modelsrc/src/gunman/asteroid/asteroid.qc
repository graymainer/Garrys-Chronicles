// Created by Crowbar 0.65

// Stored modelname (without quotes): "k:\asteroid.mdl"
$modelname "asteroid.mdl"
$cd "."
$cdtexture "."
$cliptotextures
$scale 1.0

$bodygroup "body"
{
	studio "asteroid_meteor"
	studio "asteroid_base"
}

$flags 0


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "GeoSphere01" -56.27 -58.599998 -59.279999 54.869999 55.59 60.900002

$sequence "base" {
	"asteroid_anims\base"
	fps 30
}
