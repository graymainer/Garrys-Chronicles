// Created by Crowbar 0.49.0.0

$modelname "gchumangibs.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "flesh"

$bodygroup "body"
{
	studio "hgibs_humanribs"
	studio "hgibs_humanskull"
	studio "hgibs_humanhand"
	studio "hgibs_humanhart"
	studio "hgibs_humancolon"
	studio "hgibs_humanleg"
	studio "hgibs_humankidney"
	studio "hgibs_humanbone"
	studio "hgibs_humaneye"
	studio "hgibs_humanflesh1"
	studio "hgibs_humanflesh2"
	studio "hgibs_humanflesh3"
	studio "hgibs_humanguts1"
	studio "hgibs_humanguts2"
}

$cdmaterials "models/gchumangibs/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Box01" -12.6 -7.78 -15.83 11.43 9.46 11.81
$hbox 0 "frame6" -6.76 -10.56 -0.21 6.06 11.15 4.34
$hbox 0 "heart" -3.97 -10.05 -20.280001 13.96 11.99 14.63

$sequence "base" {
	"hgibs_anims\base"
	fps 30
}
