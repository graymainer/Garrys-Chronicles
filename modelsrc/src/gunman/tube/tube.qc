// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf\tube.mdl"
$modelname "gunman/tube.mdl"

$cdmaterials "models/gunman/tube/"


$model "Tube" "tube_base"

$attachment 0 "Bip01 Spine2" 24 -34 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bip01 Spine" -7.58 -6.14 -5.57 10.126272 5.67 5.71
$hbox 0 "Bip01 Spine1" 0 -10.42 -15.97 9.84413 5.93 16.110001
$hbox 0 "Bip01 Spine2" -7.59 -35.650002 -27.02 26.469999 4.35 27.17
$hbox 0 "Bip01 Neck" 0 -4.859866 -1.513056 8.58181 1.67 1.513029
$hbox 0 "Bip01 Neck1" 0 -1.13 -1.09 7.430021 1.42 1.02
$hbox 0 "Bip01 Head" -1.04 -0.81 -3.17 5.19 12.11 3.1
$hbox 0 "Bip01 L UpperArm" -2.57 -0.69 -0.42 9.184887 1.33 1.58
$hbox 0 "Bip01 L Forearm" -9.34 -9.44 -0.86 11.55 1.15 2.28
$hbox 0 "Bip01 L Hand" 0 -2.6 -1.79 6.73 1.73 1.16
$hbox 0 "Bip01 R UpperArm" -2.63 -0.43 -1.07 9.184888 1.49 0.84
$hbox 0 "Bip01 R Forearm" -0.82 -1.29 -1.78 11.43 1.16 1.36
$hbox 0 "Bip01 R Hand" 0 -2.09 -1.27 6.52 2.05 1.71
$hbox 0 "Bip01 L Thigh" 0 -3.14 -3.25 36.029999 6.48 3.59
$hbox 0 "Bip01 L Calf" -0.28 -2.27 -2.41 23.742935 5.41 2.43
$hbox 0 "Bip01 L Foot" 0 0 -3.92 8.16 12.97 5.27
$hbox 0 "Bip01 R Thigh" 0 -2.75 -3.19 35.98 6.45 3.45
$hbox 0 "Bip01 R Calf" -0.14 -2.53 -2.21 23.742935 5.1 2.36
$hbox 0 "Bip01 R Foot" 0 0 -4.29 8.27 13.17 4.71

$surfaceprop "flesh"
$contents "solid"

$collisionmodel "tube_base" {

	$automass

}

$sequence "idle" {
	"tube_anims\idle"
	ACT_IDLE 1
	fps 10
	loop
}
$sequence "walk" {
	"tube_anims\walk"
	ACT_WALK 1
	{ event 1004 6 "tube/Tube_Footstep_Left1.wav" }
	{ event 1004 13 "tube/Tube_Footstep_Right1.wav" }
	fps 10
	loop
	LX
}
$sequence "flinch" {
	"tube_anims\flinch"
	ACT_SMALL_FLINCH 1
	{ event 1004 0 "tube/Tube_Flinch.wav" }
	fps 12
	loop
}
$sequence "arming" {
	"tube_anims\arming"
	ACT_ARM 1
	{ event 1004 0 "tube/Tube_Arming.wav" }
	fps 10
}
$sequence "shoot" {
	"tube_anims\shoot"
	ACT_RANGE_ATTACK1 1
	{ event 1 3 }
	{ event 2 12 }
	{ event 1004 3 "tube/Tube_Shoot.wav" }
	{ event 1004 12 "tube/Tube_Shoot.wav" }
	fps 13
}
$sequence "qkfire" {
	"tube_anims\qkfire"
	ACT_RANGE_ATTACK2 1
	{ event 3 9 }
	{ event 1004 9 "tube/Tube_Qkfire.wav" }
	fps 10
}
$sequence "diesimple" {
	"tube_anims\diesimple"
	ACT_DIESIMPLE 1
	{ event 1004 0 "tube/Tube_DieSimple.wav" }
	fps 10
}
$sequence "dieback" {
	"tube_anims\dieback"
	ACT_DIESIMPLE 2
	{ event 1004 0 "tube/Tube_DieBack.wav" }
	fps 10
}
$sequence "wallscript" {
	"tube_anims\wallscript"
	fps 15
	loop
}
$sequence "dropped" {
	"tube_anims\dropped"
	fps 15
}
$sequence "mourn" {
	"tube_anims\mourn"
	{ event 4 0 }
	fps 15
}
$sequence "eating#idle" {
	"tube_anims\eating#idle"
	fps 15
	loop
}
$sequence "eating#hiss" {
	"tube_anims\eating#hiss"
	fps 20
}
