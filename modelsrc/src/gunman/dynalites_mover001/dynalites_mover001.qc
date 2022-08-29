//garrys chronicles model template

$modelname "gunman/dynalites_mover001"

$model "Dynamic Lights Mover 1" "mover_ref"

$bodygroup "light references" {
	blank
	studio "mover_ref_lites"
}

$cdmaterials "models/gunman/dynalites_mover/"

$attachment lite1 "l0" 0 0 0 rotate 0 0 0
$attachment lite2 "l1" 0 0 0 rotate 0 0 0
$attachment lite3 "l2" 0 0 0 rotate 0 0 0
$attachment lite4 "l3" 0 0 0 rotate 0 0 0
$attachment lite5 "l4" 0 0 0 rotate 0 0 0
$attachment lite6 "l5" 0 0 0 rotate 0 0 0


$sequence Idle {
	"anims/idle"
	ACT_IDLE 1
	loop
	fps 24
}

$sequence Lights {
	"anims/lites"
	loop
	fps 12
}


$surfaceprop "default"
$contents "solid"


$collisionmodel "mover_ref"  {
	$automass
}
