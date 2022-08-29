//garrys chronicles model template

$modelname "gunman/template"

$model "template model" "temp_ref"

$bodygroup "tempref" {
	blank
	studio "temp_ref_b"
}

$cdmaterials "models/gunman/template/"

$attachment temp "template" 0 0 0 rotate 0 0 0


$sequence Idle {
	"temp_ref"
	ACT_IDLE 1
	loop
	fps 24
}


$surfaceprop "default"
$contents "solid"


$collisionmodel "temp_ref"  {
	$automass
}
