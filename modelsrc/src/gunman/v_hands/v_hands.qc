// Created by Crowbar 0.49.0.0

$modelname "v_melee.mdl"
$cd "."
$cliptotextures
$scale 1.0

$contents "solid"

$bodygroup "body"
{
	studio "v_hands_base"
}

$cdmaterials "models/gcweapons/misc/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bip01 L Forearm" -7.81 -5.84 -5.04 21.167316 6.22 4.67
$hbox 0 "Bip01 L Hand" 0 -2.8 -5.4 13.42 2.78 4.55
$hbox 0 "Bip01 L Finger0" 0 -2.37 -3.03 4.89 1.23 1.85
$hbox 0 "Bip01 L Finger01" 0 -1.55 -1.11 3.33 1.19 1.17
$hbox 0 "Bip01 L Finger02" 0 -0.89 -0.71 2.56 0.73 1.11
$hbox 0 "Bip01 L Finger1" 0 -0.96 -0.78 3.66 1.54 0.75
$hbox 0 "Bip01 L Finger11" 0 -0.72 -1.18 3.021077 0.6 1.08
$hbox 0 "Bip01 L Finger12" -0.04 -0.66 -1.06 3.08 1.22 1.07
$hbox 0 "Bip01 L Finger2" 0 -1.03 -0.81 4.752652 1.59 0.92
$hbox 0 "Bip01 L Finger21" 0 -0.68 -1.31 3.036192 0.55 1.09
$hbox 0 "Bip01 L Finger22" 0 -0.49 -1.21 3.7 1.4 0.88
$hbox 0 "Bip01 L Finger3" 0 -0.78 -0.6 4.66 2.13 0.9
$hbox 0 "Bip01 L Finger31" 0 -0.28 -1.08 2.605356 1.05 1.21
$hbox 0 "Bip01 L Finger32" 0 -0.55 -0.97 3.55 1.75 0.93
$hbox 0 "Bip01 L Finger4" -0.06 -1.8 -0.41 3.16 1.32 0.64
$hbox 0 "Bip01 L Finger41" 0 -1.01 -0.88 2.567595 0.51 1
$hbox 0 "Bip01 L Finger42" -0.02 -0.54 -0.9 2.51 1.27 0.83
$hbox 0 "Bone11" -4 -1.46 -6.79 3.31 2.61 5.03
$hbox 0 "Bip01 R Forearm" -7.81 -5.81 -4.95 21.167318 6.24 4.76
$hbox 0 "Bip01 R Hand" 0 -3.09 -4.56 13.42 2.5 9.857376
$hbox 0 "Bip01 R Finger0" 0 -2.37 -2.11 4.81 1.23 2.77
$hbox 0 "Bip01 R Finger01" 0 -1.52 -1.43 3.290678 1.22 0.85
$hbox 0 "Bip01 R Finger02" 0 -0.88 -1.38 2.48 0.74 0.45
$hbox 0 "Bip01 R Finger1" 0 -1.24 -0.76 3.63 1.26 0.78
$hbox 0 "Bip01 R Finger11" 0 -0.99 -1.08 3.021081 0.33 1.18
$hbox 0 "Bip01 R Finger12" -0.06 -0.92 -1.07 2.52 0.96 1.06
$hbox 0 "Bip01 R Finger2" 0 -1.3 -0.93 4.752651 1.31 0.81
$hbox 0 "Bip01 R Finger21" 0 -0.94 -1.1 3.036194 0.28 1.3
$hbox 0 "Bip01 R Finger22" 0 -0.74 -0.88 3.16 1.14 1.21
$hbox 0 "Bip01 R Finger3" 0 -1.06 -0.9 4.653891 1.85 0.6
$hbox 0 "Bip01 R Finger31" 0 -0.55 -1.21 2.605356 0.78 1.08
$hbox 0 "Bip01 R Finger32" 0 -0.58 -0.93 2.82 1.5 0.97
$hbox 0 "Bip01 R Finger4" -0.05 -2.08 -0.64 3.17 1.04 0.41
$hbox 0 "Bip01 R Finger41" 0 -1.28 -1.01 2.567596 0.23 0.88
$hbox 0 "Bip01 R Finger42" -0.12 -0.79 -0.83 2.01 1.02 0.89
$hbox 0 "Bone13" -3.31 -1.46 -6.79 4 2.61 5.04

$sequence "idle" {
	"v_hands_anims\idle"
	ACT_VM_IDLE 1
	fps 15
	loop
}
$sequence "idlejudo" {
	"v_hands_anims\idlejudo"
	ACT_VM_IDLE 1
	fps 10
	loop
}
$sequence "idlekickass" {
	"v_hands_anims\idlekickass"
	ACT_VM_RELOAD 1
	{ event 4 13 }
	{ event 4 26 }
	fps 15
}
$sequence "rightpunch" {
	"v_hands_anims\rightpunch"
	ACT_VM_PRIMARYATTACK 1
	{ event 1 5 }
	fps 31
}
$sequence "leftpunch" {
	"v_hands_anims\leftpunch"
	ACT_VM_PRIMARYATTACK 1
	{ event 2 5 }
	fps 31
}
$sequence "ready" {
	"v_hands_anims\ready"
	ACT_VM_DRAW 1
	{ event 4 13 }
	fps 15
}
$sequence "holster" {
	"v_hands_anims\holster"
	ACT_VM_DRYFIRE 1
	fps 20
}
