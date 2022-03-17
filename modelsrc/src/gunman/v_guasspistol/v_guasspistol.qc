// Created by Crowbar 0.49.0.0

$modelname "v_gausspistol.mdl"
$cd "."
$cliptotextures
$scale 1.0

$bodygroup "body"
{
	studio "v_guasspistol_handsbase"
}
$bodygroup "pistolchange"
{
	studio "v_guasspistol_pistolbase"
	studio "v_guasspistol_sniperbase"
}

$cdmaterials "models/gcweapons/gauss_pistol/"
$cdmaterials "models/gcweapons/misc/"


$attachment 0 "Bone17" 0 0 0
$attachment 1 "Bone20" 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bip01 L Forearm" -3.9 -2.91 -2.52 10.583658 3.11 2.33
$hbox 0 "Bip01 L Hand" 0 -1.4 -2.7 6.71 1.39 2.27
$hbox 0 "Bip01 L Finger0" 0 -1.18 -1.51 2.45 0.61 0.92
$hbox 0 "Bip01 L Finger01" 0 -0.77 -0.55 1.67 0.59 0.58
$hbox 0 "Bone11" -2 -0.73 -3.39 1.65 1.3 2.51
$hbox 0 "Bip01 R Forearm" -3.9 -2.9 -2.47 10.583656 3.12 2.38
$hbox 0 "Bip01 R Hand" 0 -1.54 -2.27 7.638093 1.25 4.252883
$hbox 0 "Bip01 R Finger0" 0 -1.19 -1.05 2.41 0.61 1.38
$hbox 0 "Bip01 R Finger01" 0 -0.76 -0.71 1.645339 0.61 0.42
$hbox 0 "Bone13" -1.65 -0.73 -3.39 2 1.3 2.52
$hbox 0 "Bone17" -0.8 -21.256271 -7.16 1.06 14.18 1.84
$hbox 0 "Bone15" -0.96 -1.12 -1.12 0.92 1.15 1.14
$hbox 0 "Bone20" -1.26 0 -10.95 1.41 35.419998 5.45

$sequence "idle" {
	"v_guasspistol_anims\idle"
	ACT_VM_IDLE 1
	fadein 0
	fadeout 0
	fps 8
	loop
}
$sequence "idlerestless" {
	"v_guasspistol_anims\idlerestless"
	ACT_VM_IDLE 1
	fadein 0
	fadeout 0
	fps 10
	loop
}
$sequence "singleshot" {
	"v_guasspistol_anims\singleshot"
	ACT_VM_PRIMARYATTACK 1
	{ event 5001 0 "42" }
	fps 11
}
$sequence "rapidfire" {
	"v_guasspistol_anims\rapidfire"
	ACT_VM_SECONDARYATTACK 1
	{ event 5001 0 "42" }
	fps 40
}
$sequence "chargefire" {
	"v_guasspistol_anims\chargefire"
	{ event 5001 0 "42" }
	fps 8
}
$sequence "draw" {
	"v_guasspistol_anims\draw"
	ACT_VM_DRAW 1
	fps 14
}
$sequence "holster" {
	"v_guasspistol_anims\holster"
	ACT_VM_HOLSTER 1
	fps 16
}
$sequence "sniperidle" {
	"v_guasspistol_anims\sniperidle"
	fps 10
}
$sequence "sniperidlerestless" {
	"v_guasspistol_anims\sniperidlerestless"
	fps 10
}
$sequence "sniperidlefidget" {
	"v_guasspistol_anims\sniperidlefidget"
	fps 10
}
$sequence "snipershoot" {
	"v_guasspistol_anims\snipershoot"
	{ event 5011 1 "42" }
	fps 14
}
$sequence "sniperdraw" {
	"v_guasspistol_anims\sniperdraw"
	fps 16
}
$sequence "sniperholster" {
	"v_guasspistol_anims\sniperholster"
	fps 9
}
