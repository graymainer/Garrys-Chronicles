//garrys chronicles model template

$modelname "gunman/brushprops/arenaroof_v19"

$staticprop

$body "arena roof" "roofprop2_ref"

$cdmaterials "models/gunman/brushprops/arenaroof/"


$sequence Idle {
	"roofprop2_ref"
	fps 24
}


$surfaceprop "concrete"
$contents "solid"


$collisionmodel "roofprop2_phys"  {
	$maxconvexpieces 125
	$concave
	$automass
}
