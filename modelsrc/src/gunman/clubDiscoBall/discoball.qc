// Created by Crowbar 0.49.0.0

$modelname "gunman/club_discoBall.mdl"

$model "Disco Ball 8000" "discoball_ref.smd"

$surfaceprop "glass"
$contents "solid"

$attachment "lites" "discoball_bone" 0 0 0 rotate 0 0 0

$cdmaterials "models/gunman/disco/"

$collisionmodel "discoball_phys.smd"
{
	$automass
}

$sequence "Idle" {
	"discoball_anims\idle"
	fps 24
}
$sequence "Spin" {
	"discoball_anims\spin"
	fps 24
	loop
}
