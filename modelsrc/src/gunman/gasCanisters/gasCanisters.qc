//garrys chronicles model template

$modelname "gunman/gasCanisters"

$model "Rocket Cabinet" "gasCanisters_ref"

$cdmaterials "models/gunman/gasCanisters/"

$sequence Idle {
	"gasCanisters_ref"	
	fps 24
}


$surfaceprop "metalvent"
$contents "solid"


$collisionmodel "gasCanisters_ref"  {
	$automass
}

$collisiontext
{
	break 
	{
		"model"		"props_c17/oildrumchunk01a"
		"health"		"10"
		"fadetime"		"10"
		"burst"		"100"
	}
	break 
	{
		"model"		"props_c17/oildrumchunk01b"
		"health"		"10"
		"fadetime"		"10"
		"burst"		"100"
	}
	break 
	{
		"model"		"props_c17/oildrumchunk01c"
		"health"		"10"
		"fadetime"		"10"
		"burst"		"100"
	}
	break 
	{
		"model"		"props_c17/oildrumchunk01d"
		"health"		"10"
		"fadetime"		"10"
		"burst"		"100"
	}
	break 
	{
		"model"		"props_c17/oildrumchunk01e"
		"health"		"10"
		"fadetime"		"10"
		"burst"		"100"
	}
}

$keyvalues
{
	prop_data 
	{
		"dmg.bullets"		"1.0"
		"dmg.club"		"1.0"
		"dmg.explosive"		"1.0"
		"health"		"40"
		"explosive_damage"		"116"
		"explosive_radius"		"256"
	}
	physgun_interactions 
	{
		"onfirstimpact"		"break"
	}
	fire_interactions 
	{
		"flammable"		"no"
		"explosive_resist"		"no"
	}
}