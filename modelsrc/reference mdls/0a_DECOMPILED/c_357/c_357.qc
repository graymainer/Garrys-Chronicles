// Created by Crowbar 0.65

$modelname "hl1/c_357.mdl"

$bodygroup "gun"
{
	studio "c_357_v_357_python_gun.smd"
}
$bodygroup "bullets"
{
	studio "c_357_v_357_python_bullets.smd"
}
$bodygroup "speedload"
{
	studio "c_357_v_357_python_speedload.smd"
}
$bodygroup "scope"
{
	blank
	studio "c_357_v_357_python_lasersight.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.247 -5.787 -34.244

$cdmaterials "models\v_python\"

$attachment "0" "Bip01 R Hand" 16.2 0.32 4.63 rotate -5.77 90.11 -1.09

$cbox 0 0 0 0 0 0

$bbox -12.71 -8.678 -66.18 26.498 9.101 -1.939

$bonemerge "Hands biped"
$bonemerge "Bip01 Pelvis"
$bonemerge "Bip01 Spine"
$bonemerge "Bip01 Spine1"
$bonemerge "Bip01 Spine2"
$bonemerge "Bip01 Spine3"
$bonemerge "Bip01 Neck"
$bonemerge "Bip01 R Arm"
$bonemerge "Bip01 R Arm1"
$bonemerge "Bip01 R Arm2"
$bonemerge "Bip01 R Hand"
$bonemerge "Bip01 L Arm"
$bonemerge "Bip01 L Arm1"
$bonemerge "Bip01 L Arm2"
$bonemerge "Bip01 L Hand"
$bonemerge "Bip01 L Finger0"
$bonemerge "Bip01 L Finger01"
$bonemerge "Bip01 L Finger02"
$bonemerge "Bip01 L Finger1"
$bonemerge "Bip01 L Finger11"
$bonemerge "Bip01 L Finger12"
$bonemerge "Bip01 L Finger2"
$bonemerge "Bip01 L Finger21"
$bonemerge "Bip01 L Finger22"
$bonemerge "Bip01 L Finger3"
$bonemerge "Bip01 L Finger31"
$bonemerge "Bip01 L Finger32"
$bonemerge "Bip01 L Finger4"
$bonemerge "Bip01 L Finger41"
$bonemerge "Bip01 L Finger42"
$bonemerge "Bip01 R Finger0"
$bonemerge "Bip01 R Finger01"
$bonemerge "Bip01 R Finger02"
$bonemerge "Bip01 R Finger1"
$bonemerge "Bip01 R Finger11"
$bonemerge "Bip01 R Finger12"
$bonemerge "Bip01 R Finger2"
$bonemerge "Bip01 R Finger21"
$bonemerge "Bip01 R Finger22"
$bonemerge "Bip01 R Finger3"
$bonemerge "Bip01 R Finger31"
$bonemerge "Bip01 R Finger32"
$bonemerge "Bip01 R Finger4"
$bonemerge "Bip01 R Finger41"
$bonemerge "Bip01 R Finger42"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"


$sectionframes 30 170

$sequence "idle1" {
	"c_357_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fidget1" {
	"c_357_anims\fidget1.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire1" {
	"c_357_anims\fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "31" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload" {
	"c_357_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 72 "Weapon_357.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 36
}

$sequence "holster" {
	"c_357_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"c_357_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle2" {
	"c_357_anims\idle2.smd"
	activity "ACT_VM_IDLE" 2
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle3" {
	"c_357_anims\idle3.smd"
	activity "ACT_VM_IDLE" 3
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
