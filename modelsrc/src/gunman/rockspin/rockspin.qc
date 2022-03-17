$modelname "gunman/asteroids002.mdl"

$cdmaterials "models/gunman/asteroids002/"

$bodygroup "Asteroid Decore"
{
	studio "rockspin_512one"
	studio "rockspin_300one"
	studio "rockspin_128one"
}


$contents "solid"
$surfaceprop "boulder"

$collisionmodel "rockspin_512one" {
	$automass
}

$hbox 0 "Bone01" -261.209991 -287.170013 -254.970001 268.179993 235.869995 267.23999

$sequence "idle" {
	"rockspin_anims\idle"
	ACT_IDLE 1
	fps 10
	loop
}
