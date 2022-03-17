$modelname "gunman/asteroids001.mdl"

$model "Asteroids" "asterioids_Ref"

$cdmaterials "models/gunman/brushprops/rock/"

$contents "solid"
$surfaceprop "boulder"

$staticprop

$collisionmodel "asterioids_Ref" {

	$automass
	$concave
	$maxconvexpieces 128

}

$sequence "idle" {
	"asterioids_Ref"
	fps 30
}