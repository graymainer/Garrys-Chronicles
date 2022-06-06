$modelname "gunman/asteroids001.mdl"

$model "Asteroids" "asteroids_Ref"

$cdmaterials "models/gunman/asteroids/"

$contents "solid"
$surfaceprop "boulder"

$staticprop

$collisionmodel "asteroids_Ref" {

	$automass
	$concave
	$maxconvexpieces 128

}

$sequence "idle" {
	"asteroids_Ref"
	fps 30
}