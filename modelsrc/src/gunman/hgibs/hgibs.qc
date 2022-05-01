// Created by Crowbar 0.49.0.0

$modelname "gunman/humanGibs.mdl"

$surfaceprop "zombieflesh"

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

$cdmaterials "models/gunman/hgibs"

$collisionmodel "hgibs_humanribs.smd" {
	$automass
}

$sequence "idle" {
	"hgibs_anims\base"
	fps 30
}
