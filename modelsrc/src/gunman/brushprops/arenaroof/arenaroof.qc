//garrys chronicles model template

$modelname "gunman/brushprops/arenaroof"

$model "arena roof" "arenaroof_ref"

$cdmaterials "models/gunman/brushprops/arenaroof/"

$staticprop

$sequence Idle {
	"arenaroof_ref"
	ACT_IDLE 1
	loop
	fps 24
}


$surfaceprop "default"
$contents "solid"


$collisionmodel "arenaroof_ref"  {
	$automass
}
