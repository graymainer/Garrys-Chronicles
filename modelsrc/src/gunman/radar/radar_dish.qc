// the dish of the radar.

$modelname "gunman/radarDish001b.mdl"

$model "Radar Dish" "radar_dishRef"

$include "inc/misc.qci"

$include "inc/jiggle.qci"

$collisionjoints	"radar_dishPhys.smd"
{
	$automass
	
	//$rootbone "root"
}

$sequence "idle" {
	"radar_anims\stopped"
	fps 15
}

$sequence "Spin" {
	"radar_anims\spin"
	fps 20
	loop
}