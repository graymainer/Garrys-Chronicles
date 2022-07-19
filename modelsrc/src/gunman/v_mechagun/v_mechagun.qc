// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf\v_mechagun.mdl"
$modelname "gunman\v_mechagun.mdl"

$cdmaterials "models\gunman\weapons\mechagun\"

$body "Mecha-Gun" "mecha_ref"

$bodygroup "Coolers"
{
	blank
	studio "mecha_mod_ref"
}


$attachment "Muzzle0" "Bone14" 0 0 0 rotate 0 0 0 //top barrel
$attachment "Muzzle1" "Bone16" 0 0 0 rotate 0 0 0 //bottom


$sequence "idle" {
	"v_mechagun_anims\idle"
	ACT_VM_IDLE 1
	fps 15
}
$sequence "idleinspect" {
	"v_mechagun_anims\idleinspect"
	ACT_VM_FIDGET 1
	fps 20
}
$sequence "firenormal" {
	"v_mechagun_anims\firenormal"
	{ event 5011 0 "70" }
	ACT_VM_PRIMARYATTACK 1
	fps 15
}
$sequence "spinup" {
	"v_mechagun_anims\spinup"
	{ event 1004 17 "*weapons/mechaspinup.wav" }
	fps 15
}
$sequence "fireloop" {
	"v_mechagun_anims\fireloop"
	{ event 5001 0 "70" }
	{ event 5011 8 "60" }
	{ event 5001 15 "60" }
	{ event 5011 23 "70" }
	{ event 5011 0 "70" }
	{ event 5001 8 "60" }
	{ event 5011 15 "60" }
	{ event 5001 23 "70" }
	fps 45
}
$sequence "spindown" {
	"v_mechagun_anims\spindown"
	{ event 1004 17 "*weapons/mechaspindown.wav" }
	fps 15
}
$sequence "arming" {
	"v_mechagun_anims\arming"
	ACT_VM_DRAW 1
	fps 20
}
$sequence "idleloop" {
	"v_mechagun_anims\idleloop"
	fps 45
}
$sequence "holster" {
	"v_mechagun_anims\holster"
	ACT_VM_HOLSTER 1
	fps 20
}
