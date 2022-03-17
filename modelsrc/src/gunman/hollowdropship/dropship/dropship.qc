//dynamic dropship with no concave collisions, has doors, collision is animated, contains all animation, and has jiggle bones. intended for cinematic sequences.

//yeah, i know, its a mess in here. but you can thank source for being a bitch and forcing my hand.

//at the very least, all common code is put into include files. so you can edit things there and not worry about having to replicate it a thousand times.

$modelname "gunman/dropShip"

$model "Gunman Dropship" "dropShip_ref.smd"

$include "inc/misc.qci"

$include "inc/jiggle.qci"

$collisionmodel "dropShip_phys.smd"
{
	$maxconvexpieces 116
	
	$mass 16627681.0

}

$sequence "idle" {
	"dropship_anims\reference"
	fps 24
}

$include "inc/sequences.qci"