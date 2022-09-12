//garrys chronicles model template

$modelname "gunman/rocketCabinet"

$model "Rocket Cabinet" "rocketCabinet_ref"

$cdmaterials "models/gunman/rocketCabinet/"


$sequence Idle {
	"rocketCabinet_ref"
	fps 24
}


$surfaceprop "metalvent"
$contents "solid"


$collisionmodel "rocketCabinet_ref"  {
	$automass
}

$keyvalues
{
	prop_data 
	{
		"dmg.bullets"		"1.0"
		"dmg.club"		"1.0"
		"dmg.explosive"		"1.0"
		"health"		"55"
		"explosive_damage"		"365"
		"explosive_radius"		"1024"
	}
	physgun_interactions 
	{
		"onfirstimpact"		"break"
	}
	fire_interactions 
	{
		"flammable"		"yes"
		"explosive_resist"		"no"
		"ignite"		"halfhealth"
	}
}