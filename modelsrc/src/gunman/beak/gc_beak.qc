// Created by Crowbar 0.65

$modelname "gunman/beak.mdl"

$bodygroup "studio"
{
	studio "gc_beak_beak_base.smd"
}

$collisionmodel "gc_beak_beak_base" { //pretty fuckin lazy, but this serves my purpose. might get to it later
	$automass
}

$surfaceprop "antlion"

$contents "solid"

$cdmaterials "models\gunman\beak\"

$texturegroup "skinfamilies"
{
	{ "beak256"   }
	{ "frozen256" }
}

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hboxset "default"
$hbox 0 "Bip01 Spine" -25.709999 -8.14 -11.68 36.360001 22.540001 11.431147
$hbox 0 "Bip01 L Thigh" -6.25 -5.97 -3.13 19.58 7.87 5.65
$hbox 0 "Bip01 L Calf" -0.56 -1.86 -1.14 16.308619 0.98 0.85
$hbox 0 "Bip01 L HorseLink" -2.67 -2.06 -1.96 12.79 1.81 2.25
$hbox 0 "Bip01 L Foot" 0 -2.2 -0.54 3.71 8.08 1.67
$hbox 0 "Bip01 R Thigh" -6.25 -5.97 -4.9 19.58 7.87 3.88
$hbox 0 "Bip01 R Calf" -0.56 -1.86 -0.56 16.308619 0.98 1.66
$hbox 0 "Bip01 R HorseLink" -2.67 -2.06 -1.5 12.79 1.81 2.25
$hbox 0 "Bip01 R Foot" 0 -2.2 -1.14 3.71 8.08 1.31
$hbox 0 "Bone03" -0.51 -3.53 -5.634984 0.65 0 0
$hbox 0 "Bone04" -0.75 -8.34 -4.95 1.47 0.18 0
$hbox 0 "Bone01" -3.91 -24.08 -6.66 4.52 0 1.47


$sequence "idle" {
	"gc_beak_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "sleeping" {
	"gc_beak_anims\sleeping.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "idlelookout" {
	"gc_beak_anims\idlelookout.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "walk" {
	"gc_beak_anims\walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
	walkframe 63 LX
}

$sequence "run" {
	"gc_beak_anims\run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 29 LX
}

$sequence "leap" {
	"gc_beak_anims\leap.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 25 LX
}

$sequence "eating" {
	"gc_beak_anims\eating.smd"
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "roarangry" {
	"gc_beak_anims\roarangry.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "jumpscrape" {
	"gc_beak_anims\jumpscrape.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event 9 1 "" }
	{ event 7 17 "" }
	{ event 7 21 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 16 LX
}

$sequence "bite" {
	"gc_beak_anims\bite.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	{ event 4 12 "" }
	{ event 5 18 "" }
	{ event 6 28 "" }
	{ event 5 33 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "diesimple" {
	"gc_beak_anims\diesimple.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "dietwitch" {
	"gc_beak_anims\dietwitch.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "bigflinch" {
	"gc_beak_anims\bigflinch.smd"
	activity "ACT_FLINCH_HEAD" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "smallflinch" {
	"gc_beak_anims\smallflinch.smd"
	activity "ACT_FLINCH_LEFTLEG" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "inhole" {
	"gc_beak_anims\inhole.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "outhole" {
	"gc_beak_anims\outhole.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hiss" {
	"gc_beak_anims\hiss.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}
