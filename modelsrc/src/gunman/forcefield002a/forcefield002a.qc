//bigger and badder
$modelname "gunman/forcefield002a"

$body "Body" "forcefield002a_ref"

$bodygroup "light_reference" { //use this for a reference on where to place lights.
	blank
	studio "literef"
}

$cdmaterials "models/gunman/forcefield/"

$attachment lite1 "ff_lite0" 0 0 0 rotate 0 0 0
$attachment lite2 "ff_lite1" 0 0 0 rotate 0 0 0
$attachment lite3 "ff_lite2" 0 0 0 rotate 0 0 0
$attachment lite4 "ff_lite3" 0 0 0 rotate 0 0 0

$sequence Idle {
	"anims/idle"
	ACT_IDLE 1
	loop
	fps 59.94
}
$sequence Pulse { //wider version of previous
	"anims/pulse"
	loop
	fps 59.94
}

$surfaceprop "flesh"

$contents "grate"


$collisionmodel "forcefield002a_ref"  {
	$automass
}
