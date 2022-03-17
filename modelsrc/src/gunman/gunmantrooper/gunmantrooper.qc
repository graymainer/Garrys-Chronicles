// Created by Crowbar 0.49.0.0

$modelname "gcgunman.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "flesh"

$bodygroup "body"
{
	studio "gunmantrooper_soldier"
}
$bodygroup "weapons"
{
	studio "gunmantrooper_shotgun"
	blank
}

$cdmaterials "models/gcgunman/"

$eyeposition 0 0 70

$surfaceprop "Flesh"
$contents (Solid)

$attachment 0 "general R Hand" 24 -2 8.5

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "general Spine" -5.67 -5.75 -7.36 5.28 5.84 7.34
$hbox 0 "general Spine1" 0 -10.37 -4.24 4.599161 0 4.22
$hbox 0 "general Spine2" 0 -0.003771 -5.96 5.886642 6.22 5.95
$hbox 0 "general Spine3" 0 -11.65 -5.94 6.17 6.17 5.91
$hbox 0 "general Neck" -0.19 -2.95 -2.85 3.501647 2.75 2.84
$hbox 0 "general Head" 0 -3.38 -3.26 10.44 7.93 3.24
$hbox 0 "Bone01" -2.81 -4.72 -4.47 2.82 0.06 0
$hbox 0 "general L Clavicle" 0 -4.83 -0.63 8.141418 3.89 2.06
$hbox 0 "general L UpperArm" -3.11 -3.68 -3.3 12.202708 3.91 3.69
$hbox 0 "general L Forearm" -0.31 -2.49 -1.91 9.734908 2.65 3.59
$hbox 0 "general L Hand" -1.26 -2.49 -3.03 4.92 1.45 2.2
$hbox 0 "general R Clavicle" 0 -4.83 -1.73 8.141419 3.89 1.07
$hbox 0 "general R UpperArm" -2.48 -3.68 -3.39 12.33 3.91 3.61
$hbox 0 "general R Forearm" 0 -2.48 -3.28 10.25 2.66 2.22
$hbox 0 "general R Hand" -10.61 -3.55 -3.49 23.200001 3.06 10.05
$hbox 0 "general L Thigh" 0 -4.89 -3.81 19.453596 4.2 3.74
$hbox 0 "general L Calf" 0 -4.97 -3.4 14.808085 2.76 3.91
$hbox 0 "general L Foot" -0.5 -2.71 -3.11 5.03 10.37 3.15
$hbox 0 "general R Thigh" 0 -4.89 -3.72 19.453598 4.2 3.83
$hbox 0 "general R Calf" 0 -4.98 -3.89 14.808088 2.76 3.42
$hbox 0 "general R Foot" -0.51 -2.72 -3.13 5.03 10.37 3.14

//$controller Mouth "Bone01" XR 0 30
//$controller 0 "general Head" XR -40 40

$sequence "shotgunidle1" {
	"gunmantrooper_anims\shotgunidle"
	ACT_IDLE 6
	fps 20
	loop
}
$sequence "shotgunidle2" {
	"gunmantrooper_anims\shotgunidle_2"
	ACT_IDLE 1
	fps 20
	loop
}
$sequence "shotgunwalk1" {
	"gunmantrooper_anims\shotgunwalk"
	ACT_WALK 5
	fps 25
	loop
	LX
}
$sequence "shotgunwalk2" {
	"gunmantrooper_anims\shotgunwalk_2"
	ACT_WALK 1
	fps 25
	loop
	LX
}
$sequence "shotgunrun" {
	"gunmantrooper_anims\shotgunrun"
	ACT_RUN 1
	fps 30
	loop
	LX
}
$sequence "shooting" {
	"gunmantrooper_anims\shooting_blend01"
	"gunmantrooper_anims\shooting_blend02"
	ACT_RANGE_ATTACK1 1
	blend XR -45 45
	{ event 1 0 }
	{ event 5001 0 "51" }
	fps 25
}
$sequence "diesimple" {
	"gunmantrooper_anims\diesimple"
	ACT_DIESIMPLE 1
	fps 39
}
$sequence "dieviolent" {
	"gunmantrooper_anims\dieviolent"
	ACT_DIEVIOLENT 1
	fps 22
}
$sequence "jumpdropship" {
	"gunmantrooper_anims\jumpdropship"
	fps 41
}
$sequence "petting#idle" {
	"gunmantrooper_anims\petting#idle"
	fps 15
	loop
}
$sequence "pettingstop" {
	"gunmantrooper_anims\pettingstop"
	fps 30
}
$sequence "whatwasthat" {
	"gunmantrooper_anims\whatwasthat"
	fps 15
}
$sequence "yikes" {
	"gunmantrooper_anims\yikes"
	fps 15
}
$sequence "getout" {
	"gunmantrooper_anims\getout"
	fps 30
}
$sequence "comehere" {
	"gunmantrooper_anims\comehere"
	fps 20
}
$sequence "duck#comehere" {
	"gunmantrooper_anims\duck#comehere"
	fps 20
}
$sequence "duck#idle" {
	"gunmantrooper_anims\duck#idle"
	fps 20
}
$sequence "ducktoidle" {
	"gunmantrooper_anims\ducktoidle"
	fps 15
}
$sequence "salute" {
	"gunmantrooper_anims\salute"
	fps 30
}
$sequence "point" {
	"gunmantrooper_anims\point"
	fps 20
}
$sequence "radiodeath#death" {
	"gunmantrooper_anims\radiodeath#death"
	fps 50
}
$sequence "radiodeath#idle" {
	"gunmantrooper_anims\radiodeath#idle"
	fps 10
	loop
}
$sequence "mayanfalling#fall" {
	"gunmantrooper_anims\mayanfalling#fall"
	fps 20
}
$sequence "mayanfalling#idle" {
	"gunmantrooper_anims\mayanfalling#idle"
	fps 1
}
$sequence "onground#idle" {
	"gunmantrooper_anims\onground#idle"
	fps 15
	loop
}
$sequence "raptorchomp" {
	"gunmantrooper_anims\raptorchomp"
	fps 24
}
$sequence "pointforward" {
	"gunmantrooper_anims\pointforward"
	fps 20
}
