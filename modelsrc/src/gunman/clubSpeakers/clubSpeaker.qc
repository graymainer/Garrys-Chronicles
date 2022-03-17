// Created by Crowbar 0.49.0.0

$modelname "gunman/club_speaker.mdl"

$model "J.E.L.L.Y Speaker System X-X-L 3000" "speakers_ref.smd"

$surfaceprop "computer"
$contents "solid"

$attachment "speakerSmall" "speaker0" 0 0 0 rotate 0 0 0
$attachment "speakerMedium" "speaker1" 0 0 0 rotate 0 0 0
$attachment "speakerLarge" "speaker2" 0 0 0 rotate 0 0 0


$cdmaterials "models/gunman/disco/"

$collisionmodel "speakers_phys.smd"
{
	$automass
}

$sequence "Idle" {
	"anims\idle"
	fps 59.94
}
$sequence "Rave" { //get that rave going. synced to music.
	"anims\rave"
	fps 59.94
	loop
}
