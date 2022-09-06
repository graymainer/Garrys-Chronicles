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
		base				Metal.Medium
		explosive_damage	250
		explosive_radius	100
		physicsmode			1
		breakable_model		MetalChunks
	}
}