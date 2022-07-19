// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf/v_grenade.mdl"
$modelname "gunman/v_grenade.mdl"

$cdmaterials "models\gunman\weapons\grenade\"

$body "studio" "v_grenade_ref-arm"

$bodygroup "explosive"
{
	studio "v_grenade_ref-grenade"
	studio "v_grenade_ref-cone"
	blank
}


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bip01 L Hand" 0 0 0 9.988959 6.412003 1.028395
$hbox 0 "Dummy12" -3.444712 -39.372478 -3.52555 0.057951 0 0.009051
$hbox 0 "Bone15" -5.86 -5.86 -7.42 5.87 5.89 8.87
$hbox 0 "Bone01" -5.91 -5.91 -8.34 5.93 5.94 16.120001
$hbox 0 "Bip01 R Forearm" -7.81 -5.82 -4.95 21.167315 6.24 4.76
$hbox 0 "Bip01 R Hand" 0 -3.08 -25.190001 16.41 8.2 10.63
$hbox 0 "Bip01 R Finger0" 0 -2.37 -2.12 4.82 1.22 2.76
$hbox 0 "Bip01 R Finger01" 0 -1.53 -1.44 3.290678 1.21 0.84
$hbox 0 "Bip01 R Finger02" 0 -0.9 -1.39 2.48 0.72 0.44
$hbox 0 "Bip01 R Finger1" 0 -1.24 -0.75 3.64 1.26 0.79
$hbox 0 "Bip01 R Finger11" 0 -0.99 -1.07 3.02108 0.33 1.19
$hbox 0 "Bip01 R Finger12" -0.06 -0.92 -1.06 2.52 0.96 1.07
$hbox 0 "Bip01 R Finger2" 0 -1.3 -0.92 4.75265 1.31 0.82
$hbox 0 "Bip01 R Finger21" 0 -0.95 -1.08 3.036193 0.28 1.31
$hbox 0 "Bip01 R Finger22" 0 -0.74 -0.87 3.16 1.14 1.22
$hbox 0 "Bip01 R Finger3" 0 -1.06 -0.89 4.653887 1.85 0.61
$hbox 0 "Bip01 R Finger31" 0 -0.55 -1.2 2.605356 0.78 1.09
$hbox 0 "Bip01 R Finger32" 0 -0.59 -0.92 2.81 1.5 0.98
$hbox 0 "Bip01 R Finger4" -0.04 -2.07 -0.63 3.17 1.05 0.42
$hbox 0 "Bip01 R Finger41" 0 -1.28 -0.99 2.567595 0.23 0.89
$hbox 0 "Bip01 R Finger42" -0.12 -0.79 -0.82 2.01 1.02 0.91
$hbox 0 "Bone13" -3.32 -1.46 -6.79 3.99 2.61 5.04
$hbox 0 "Bone17" -4.08 -4.07 -20.549999 4.09 4.09 16.139999

$sequence "idle" {
	"v_grenade_anims\idle"
	ACT_VM_IDLE 1
	fps 15
}
$sequence "idle2" {
	"v_grenade_anims\idle2"
	ACT_VM_IDLE 1
	fps 15
}
$sequence "idlefidget" {
	"v_grenade_anims\idlefidget"
	ACT_VM_FIDGET 1
	fps 25
}
$sequence "takeout" {
	"v_grenade_anims\takeout"
	
	fps 30
}
$sequence "arming" {
	"v_grenade_anims\arming"
	fps 15
}
$sequence "throw" {
	"v_grenade_anims\throw"
	ACT_VM_THROW 1
	fps 16
}
$sequence "tripmine" {
	"v_grenade_anims\tripmine"
	fps 15
}
$sequence "draw" {
	"v_grenade_anims\draw"
	ACT_VM_DRAW 1
	fps 17
}
