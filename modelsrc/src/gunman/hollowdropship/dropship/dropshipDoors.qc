//second part to dropship_Static.qc.
//dynamic dropship doors only, no concave collisions, collisions are anmiated, and all animations are present.
//intended to be in a 'bundle' with dropShip_Static001a.

$modelname "gunman/dropShip_doors.mdl"

$model "Gunman Dropship Doors" "dropShipDoors_ref.smd"

$include "inc/misc.qci"

$collisionjoints "dropShipDoors_phys.smd"
{
	$rootbone "Root"
	$automass

}

$sequence "idle" {
	"dropship_anims\reference"
	fps 24
}

$include "inc/sequences.qci"