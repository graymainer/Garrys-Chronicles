// Created by Crowbar 0.65

$modelname "gcgunman_hw.mdl"

$bodygroup "body"
{
	studio "gcgunman_hw_gunmantrooper_ng_soldier2.smd"
}
$bodygroup "weapons"
{
	studio "gcgunman_hw_gunmantrooper_ng_REF-holster.smd"
	studio "gcgunman_hw_gunmantrooper_ng_REF-gauss.smd"
	blank
}
$bodygroup "decore"
{
	blank
	studio "gcgunman_hw_gunmantrooper_ng_flashlight.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.761 -0.016 36.916

$eyeposition 0 0 70

$cdmaterials "models\gcgunman\"

$attachment "0" "general R Hand" 15 0 3.5 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hboxset "default"
$hbox 0 "general Pelvis" -5.2 -6.55 -7.4 3.52 4.35 7.38
$hbox 0 "general Spine" -1.142318 -1.3 -7.15 4.597839 5.62 7.13
$hbox 0 "general Spine1" 0 -10.37 -6.66 4.597425 4.52 6.63
$hbox 0 "general Spine2" 0 -0.003783 -5.96 5.886613 6.21 5.95
$hbox 0 "general Spine3" 0 -11.66 -5.94 6.17 6.16 5.91
$hbox 0 "general Neck" -0.19 -2.96 -2.85 3.501647 2.75 2.84
$hbox 0 "general Head" 0 -3.39 -3.26 10.44 7.92 3.24
$hbox 0 "Bone01" -2.81 -4.72 -4.47 2.82 0.07 0
$hbox 0 "general L Clavicle" 0 -4.82 -0.63 7.079494 1.08 1.85
$hbox 0 "general L UpperArm" -3.02 -3.69 -3.78 12.202712 3.48 3.2
$hbox 0 "general L Forearm" -0.5 -2.59 -2.09 9.734908 3.44 3.04
$hbox 0 "general L Hand" -1.26 -2.49 -13.57 4.92 2.52 6.68
$hbox 0 "general R Clavicle" 0 -4.82 -1.51 7.09 1.08 1.06
$hbox 0 "general R UpperArm" -2.48 -3.68 -2.93 12.22 3.48 4.05
$hbox 0 "general R Forearm" 0 -2.58 -2.78 10.02 3.44 2.36
$hbox 0 "general R Hand" -0.57 -2.35 -2.26 11.81 1.59 7.16
$hbox 0 "general L Thigh" 0 -5.35 -3.73 19.453598 4.21 3.73
$hbox 0 "general L Calf" -0.94 -4.27 -3.48 14.808088 3.54 3.99
$hbox 0 "general L Foot" -0.19 -2.37 -2.54 5.1 9.475155 2.28
$hbox 0 "general L Toe0" -2.03 -0.06 -2.62 0.64 3.06 2.11
$hbox 0 "general R Thigh" 0 -5.35 -3.71 19.453596 4.21 4.99
$hbox 0 "general R Calf" -0.94 -4.27 -3.97 14.808087 3.54 3.5
$hbox 0 "general R Foot" -0.19 -2.37 -2.26 5.15 10.12 2.64

$controller 4 "Bone01" XR 0 30
$controller 0 "general Head" XR -40 40


$sectionframes 30 123

$sequence "ragdoll" {
	"gcgunman_hw_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle" {
	"gcgunman_hw_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "walk" {
	"gcgunman_hw_anims\walk.smd"
	activity "ACT_WALK" 1
	{ event 1004 5 "gcsfx/npc/gunman/walk1.wav" }
	{ event 1004 20 "gcsfx/npc/gunman/walk2.wav" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 30 LX
}

$sequence "run" {
	"gcgunman_hw_anims\run.smd"
	activity "ACT_RUN" 1
	{ event 1004 8 "gcsfx/npc/gunman/run1.wav" }
	{ event 1004 16 "gcsfx/npc/gunman/run2.wav" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 17 LX
}

$sequence "diesimple" {
	"gcgunman_hw_anims\diesimple.smd"
	activity "ACT_DIESIMPLE" 10
	{ event 1004 0 "gcsfx/npc/gunman/die1.wav" }
	fadein 0.2
	fadeout 0.2
	fps 39
}

$sequence "dieviolent" {
	"gcgunman_hw_anims\dieviolent.smd"
	activity "ACT_DIESIMPLE" 10
	{ event 1004 0 "gcsfx/npc/gunman/die2.wav" }
	{ event 11 12 "" }
	{ event 2001 19 "" }
	{ event 1100 27 "event_dropdead" }
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "injured#idle" {
	"gcgunman_hw_anims\injured#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "injured#fine" {
	"gcgunman_hw_anims\injured#fine.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "falling" {
	"gcgunman_hw_anims\falling.smd"
	fadein 0.2
	fadeout 0.2
	fps 5
}

$sequence "dead#idle" {
	"gcgunman_hw_anims\dead#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "wallup#idle" {
	"gcgunman_hw_anims\wallup#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "walldown#idle" {
	"gcgunman_hw_anims\walldown#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "salute#idle" {
	"gcgunman_hw_anims\salute#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "salute" {
	"gcgunman_hw_anims\salute.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "floating#idle" {
	"gcgunman_hw_anims\floating#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "sitrelax#idle" {
	"gcgunman_hw_anims\sitrelax#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitrelax#wave" {
	"gcgunman_hw_anims\sitrelax#wave.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "sittype#idle" {
	"gcgunman_hw_anims\sittype#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sittype#look" {
	"gcgunman_hw_anims\sittype#look.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "crawl" {
	"gcgunman_hw_anims\crawl.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump" {
	"gcgunman_hw_anims\jump.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "ladder#looking" {
	"gcgunman_hw_anims\ladder#looking.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "ladder#idle" {
	"gcgunman_hw_anims\ladder#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "laddertoidle" {
	"gcgunman_hw_anims\laddertoidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "mousecrash#idle" {
	"gcgunman_hw_anims\mousecrash#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "mousecrashpoint" {
	"gcgunman_hw_anims\mousecrashpoint.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "followme" {
	"gcgunman_hw_anims\followme.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "repair#fromidle" {
	"gcgunman_hw_anims\repair#fromidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "repair#idle" {
	"gcgunman_hw_anims\repair#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "reapingtoidle" {
	"gcgunman_hw_anims\reapingtoidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "wondering" {
	"gcgunman_hw_anims\wondering.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "cower#idle" {
	"gcgunman_hw_anims\cower#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "space#death" {
	"gcgunman_hw_anims\space#death.smd"
	fadein 0.2
	fadeout 0.2
	fps 28
}

$sequence "space#idle" {
	"gcgunman_hw_anims\space#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "flashlight#idle" {
	"gcgunman_hw_anims\flashlight#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "couch#idle" {
	"gcgunman_hw_anims\couch#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "couchstand" {
	"gcgunman_hw_anims\couchstand.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "shrug" {
	"gcgunman_hw_anims\shrug.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "gesture" {
	"gcgunman_hw_anims\gesture.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "pressbutton" {
	"gcgunman_hw_anims\pressbutton.smd"
	fadein 0.2
	fadeout 0.2
	fps 18
}

$sequence "shouting" {
	"gcgunman_hw_anims\shouting.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "jumpdown" {
	"gcgunman_hw_anims\jumpdown.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pointstatue" {
	"gcgunman_hw_anims\pointstatue.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "pointplayer" {
	"gcgunman_hw_anims\pointplayer.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "wall#towall" {
	"gcgunman_hw_anims\wall#towall.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "wall#idle" {
	"gcgunman_hw_anims\wall#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "walltoidle" {
	"gcgunman_hw_anims\walltoidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "talk" {
	"gcgunman_hw_anims\talk.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "talk2" {
	"gcgunman_hw_anims\talk2.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "study" {
	"gcgunman_hw_anims\study.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "sideways#idle" {
	"gcgunman_hw_anims\sideways#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "aboutface" {
	"gcgunman_hw_anims\aboutface.smd"
	fadein 0.2
	fadeout 0.2
	fps 20
}

$collisionjoints "gcgunman_hw_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "
	$concave
	$maxconvexpieces 1


	$jointconstrain "general L Thigh" x limit -12 12 0
	$jointconstrain "general L Thigh" y limit -73 6 0
	$jointconstrain "general L Thigh" z limit -93 30 0

	$jointconstrain "general L Calf" x limit 0 0 0
	$jointconstrain "general L Calf" y limit 0 0 0
	$jointconstrain "general L Calf" z limit -149 0 0

	$jointconstrain "general R Thigh" x limit -12 12 0
	$jointconstrain "general R Thigh" y limit -8 75 0
	$jointconstrain "general R Thigh" z limit -97 32 0

	$jointconstrain "general R Calf" x limit 0 0 0
	$jointconstrain "general R Calf" y limit 0 0 0
	$jointconstrain "general R Calf" z limit -149 0 0

	$jointconstrain "general R Foot" x limit 0 0 0
	$jointconstrain "general R Foot" y limit -25 6 0
	$jointconstrain "general R Foot" z limit -15 35 0

	$jointconstrain "general Spine2" x limit -48 48 0
	$jointconstrain "general Spine2" y limit -25 25 0
	$jointconstrain "general Spine2" z limit -25 50 0

	$jointconstrain "general L UpperArm" x limit -30 30 0
	$jointconstrain "general L UpperArm" y limit -95 84 0
	$jointconstrain "general L UpperArm" z limit -86 26 0

	$jointconstrain "general L Forearm" x limit 0 0 0
	$jointconstrain "general L Forearm" y limit 0 0 0
	$jointconstrain "general L Forearm" z limit -149 4 0

	$jointconstrain "general R UpperArm" x limit -39 39 0
	$jointconstrain "general R UpperArm" y limit -79 95 0
	$jointconstrain "general R UpperArm" z limit -93 23 0

	$jointconstrain "general R Forearm" x limit 0 0 0
	$jointconstrain "general R Forearm" y limit 0 0 0
	$jointconstrain "general R Forearm" z limit -149 4 0

	$jointconstrain "general R Hand" x limit -60 60 0
	$jointconstrain "general R Hand" y limit 0 0 0
	$jointconstrain "general R Hand" z limit -57 70 0

	$jointconstrain "general Head" x limit -20 20 0
	$jointconstrain "general Head" y limit -25 25 0
	$jointconstrain "general Head" z limit -13 30 0

	$jointconstrain "general L Hand" x limit -37 37 0
	$jointconstrain "general L Hand" y limit 0 0 0
	$jointconstrain "general L Hand" z limit -57 59 0

	$jointconstrain "general L Foot" x limit 0 0 0
	$jointconstrain "general L Foot" y limit -19 19 0
	$jointconstrain "general L Foot" z limit -15 35 0
}
