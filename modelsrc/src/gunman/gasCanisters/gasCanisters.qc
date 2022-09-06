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

$keyvalues
{
	prop_data
	{
		base				Metal.Medium
		explosive_damage	150
		explosive_radius	50
		physicsmode			1
		breakable_model		MetalChunks
	}
}