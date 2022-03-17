//static dropship with concave collisions, no doors, legs are out, and no animation.


$modelname "gunman/dropShip_Static001a.mdl"

$model "Gunman Dropship" "dropShip_staticRef_a.smd"

$include "inc/misc.qci"

$staticprop

$collisionmodel "dropShip_staticPhys_a.smd"
{
	$concave
	$automass
	$maxconvexpieces 116
}


$sequence "idle" {
	"dropship_anims\reference_static"
	fps 24
}
