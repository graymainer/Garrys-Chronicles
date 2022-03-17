// the stand of the radar.

$modelname "gunman/radarDish001a.mdl"

$model "Radar Base Stand" "radar_baseRef"

$include "inc/misc.qci"

$staticprop

$collisionmodel	"radar_basePhys.smd"
{
	$automass
	$concave
}

$sequence "idle" {
	"radar_baseRef"
	fps 15
}
