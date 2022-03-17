//static dropship, concave collisions, doors are open, legs are out, no animation.

$modelname "gunman/dropShip_Static002.mdl"

$model "Gunman Dropship" "dropShip_staticRef2.smd"

$include "inc/misc.qci"

$staticprop

$collisionmodel "dropShip_staticPhys2.smd"
{
	$concave
	$automass
	$maxconvexpieces 116
}

$sequence "idle" {
	"dropship_anims\reference_static"
	fps 24
}
