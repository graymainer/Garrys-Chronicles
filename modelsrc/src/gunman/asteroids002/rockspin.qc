$modelname "gunman/asteroids002.mdl"

$cdmaterials "models/gunman/asteroids/"

$bodygroup "Asteroid Decore"
{
	studio "rockspin_512one"
	studio "rockspin_300one"
	studio "rockspin_128one"
}

$staticprop
$contents "solid"
$surfaceprop "boulder"

$collisionmodel "rockspin_512one" {
	$automass
}


$sequence "idle" {
	"rockspin_anims\idle"
	ACT_IDLE 1
	fps 10
	loop
}
