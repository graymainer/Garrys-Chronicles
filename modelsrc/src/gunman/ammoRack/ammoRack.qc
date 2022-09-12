//garrys chronicles model template

$modelname "gunman/ammoRack"

$model "Rocket Cabinet" "ammoRack_ref"

$cdmaterials "models/gunman/ammoRack/"

$sequence Idle {
	"ammoRack_ref"
	fps 24
}

$surfaceprop "metalvent"
$contents "solid"


$collisionmodel "ammoRack_ref"  {
	$automass
}

$keyvalues
{
	prop_data 
	{
		"dmg.bullets"		"1.0"
		"dmg.club"		"1.0"
		"dmg.explosive"		"1.0"
		"health"		"16"
		"explosive_damage"		"96"
		"explosive_radius"		"512"
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