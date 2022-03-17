//static dropship with concave collisions, no doors, legs are in, and no animation.


$modelname "gunman/dropShip_Static001b.mdl"

$model "Gunman Dropship" "dropShip_staticRef_b.smd"

$include "inc/misc.qci"

$staticprop

$collisionmodel "dropShip_staticPhys_b.smd"
{
	$concave
	$automass
	$maxconvexpieces 116
}


$sequence "idle" {
	"dropship_anims\reference_static_b"
	fps 24
}
