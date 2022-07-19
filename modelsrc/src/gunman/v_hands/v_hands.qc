// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf\v_hands.mdl"
$modelname "gunman\v_melee.mdl"

$cdmaterials "models\gunman\weapons\melee\"

$body "Melee" "hands_ref"

$bodygroup "knife"
{
	studio "knife_ref"
	blank
}


$sequence "idle" {
	"v_hands_anims\idle"
	
	fps 15
}
$sequence "idlejudo" {
	"v_hands_anims\idlejudo"
	fps 10
}
$sequence "idlekickass" {
	"v_hands_anims\idlekickass"
	{ event 4 13 }
	{ event 4 26 }
	fps 15
}
$sequence "rightpunch" {
	"v_hands_anims\rightpunch"
	{ event 1 5 }
	fps 31
}
$sequence "leftpunch" {
	"v_hands_anims\leftpunch"
	{ event 2 5 }
	fps 31
}
$sequence "doublepunch" {
	"v_hands_anims\doublepunch"
	{ event 3 4 }
	{ event 3 10 }
	fps 23
}
$sequence "ready" {
	"v_hands_anims\ready"
	{ event 4 13 }
	fps 15
}
$sequence "holster" {
	"v_hands_anims\holster"
	fps 20
}
$sequence "knifedraw" {
	"v_hands_anims\knifedraw"
	ACT_VM_DRAW 1
	fps 20
}
$sequence "knifeholster" {
	"v_hands_anims\knifeholster"
	ACT_VM_HOLSTER 1
	fps 20
}
$sequence "idleknife" {
	"v_hands_anims\idleknife"
	ACT_VM_IDLE 1
	fps 15
}
$sequence "idleknifeinspect" {
	"v_hands_anims\idleknifeinspect"
	ACT_VM_FIDGET 1
	fps 15
}
$sequence "knifeattack1" {
	"v_hands_anims\knifeattack1"
	ACT_VM_PRIMARYATTACK 1
	{ event 5 6 }
	fps 19
}
$sequence "knifeattack2" {
	"v_hands_anims\knifeattack2"
	ACT_VM_PRIMARYATTACK 1
	{ event 6 8 }
	fps 19
}
$sequence "pushbutton" {
	"v_hands_anims\pushbutton"
	fps 15
}
