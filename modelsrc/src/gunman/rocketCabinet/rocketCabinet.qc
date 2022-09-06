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
		base				Metal.Large
		explosive_damage	550
		explosive_radius	200
		physicsmode			1
		breakable_model		MetalChunks
	}
}