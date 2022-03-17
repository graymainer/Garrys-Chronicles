// Created by Crowbar 0.49.0.0

$modelname "v_knife.mdl"

$bodygroup "studio"
{
	studio "v_knife_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "hlof\models\v_knife\"
$cdmaterials "hlof\models\v_hand\"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

// $hboxset "default"
// $hbox 0 "Bip01 R Forearm" -7.69 -3.65 -3.59 11.368423 3.17 3.81 ""
// $hbox 0 "Bip01 R Hand" -1.84 -1.71 -1.86 3.789474 2.8 2.18 ""
// $hbox 0 "Bip01 R Finger31" 0 -0.75 -0.55 1.136844 0.4 0.46 ""
// $hbox 0 "Knife" -0.69 -1.82 -3.59 0.69 1.82 13.2 ""

$definebone "Bip01" "" 0 3.72426 39.395706 0 -89.999928 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980216 -89.999928 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 1.326317 -0.003921 0.000002 -0.000057 0.045607 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 4.926308 -0.003923 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 4.926315 -0.003923 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Spine3" "Bip01 Spine2" 4.926311 -0.003923 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine3" 4.926365 -0.001508 0 0 1.718873 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000004 0.001514 -1.894737 74.726075 -91.764521 89.999983 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 4.926316 0 0 -55.171424 22.917453 -34.903957 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 11.368423 0.000004 0.000004 -0.000004 -79.729079 0.000002 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 11.368423 0.000002 0.000004 30.48908 31.682673 78.696327 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 3.789473 -0.0009 1.136842 3.205235 54.487889 -0.923781 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.136845 -0.000002 0 -0.000003 52.596374 -0.000007 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.136848 0.000002 0.000001 0.000007 74.462224 -0.000004 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 3.789474 -0.000298 0.378947 5.577911 62.361472 1.24131 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.326317 0 0.000002 0 66.33992 -0.000006 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.326321 0 0 0.000006 86.955918 0.000002 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 3.789472 0.000305 -0.378947 8.307311 69.077856 6.582423 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.136848 -0.000004 -0.000001 -0.000001 51.473891 -0.000004 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.136845 0 0.000001 0.000005 80.832551 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 3.789475 0.000908 -1.136842 12.681617 71.551935 14.932592 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 0.947369 -0.000002 0 0.000002 57.470872 -0.000005 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 0.947369 0 0 0.000005 66.090304 -0.000001 0 0 0 0 0 0
$definebone "Knife" "Bip01 R Hand" 3.213383 0.934364 -0.053405 0.439401 114.971892 18.230651 0 0 0 0 0 0


$sequence "idle1" {
	"v_knife_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0
	fadeout 0
	fps 13
	loop
}

$sequence "draw" {
	"v_knife_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0
	fps 24
}

$sequence "holster" {
	"v_knife_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0
	fadeout 0
	fps 24
}

$sequence "attack1" {
	"v_knife_anims\attack1.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0
	fadeout 0
	fps 22
}

$sequence "attack1miss" {
	"v_knife_anims\attack1miss.smd"
	activity "ACT_VM_MISSCENTER" 1
	{ event 1004 1 "Weapon_HLOF_Knife.Single" }
	fadein 0
	fadeout 0
	fps 22
}

$sequence "attack2" {
	"v_knife_anims\attack2.smd"
	activity "ACT_VM_MISSCENTER" 1
	{ event 1004 1 "Weapon_HLOF_Knife.Single" }
	fadein 0
	fadeout 0
	fps 22
}

$sequence "attack2hit" {
	"v_knife_anims\attack2hit.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0
	fadeout 0
	fps 22
}

$sequence "attack3" {
	"v_knife_anims\attack3.smd"
	activity "ACT_VM_MISSCENTER" 1
	{ event 1004 1 "Weapon_HLOF_Knife.Single" }
	fadein 0
	fadeout 0
	fps 24
}

$sequence "attack3hit" {
	"v_knife_anims\attack3hit.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0
	fadeout 0
	fps 24
}

$sequence "idle2" {
	"v_knife_anims\idle2.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0
	fadeout 0
	fps 15
	loop
}

$sequence "idle3" {
	"v_knife_anims\idle3.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0
	fadeout 0
	fps 15
	loop
}

$sequence "charge" {
	"v_knife_anims\charge.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0
	fadeout 0
	fps 30
}

$sequence "stab" {
	"v_knife_anims\stab.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0
	fadeout 0
	fps 30
}
