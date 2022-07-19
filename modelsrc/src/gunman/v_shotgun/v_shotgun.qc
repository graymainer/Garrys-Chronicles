// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf\v_shotgun.mdl"
$modelname "gunman\v_shotgun.mdl"

$cdmaterials "models\gunman\weapons\shotgun\"

$body "Combat Shotgun" "v_shotgun"


$attachment "Muzzle" "Bone03" 0 0 0 rotate 0 0 0


$sequence "draw" {
	"v_shotgun_anims\draw"
	ACT_VM_DRAW 1
	fps 22
}
$sequence "idle" {
	"v_shotgun_anims\idle"
	ACT_VM_IDLE 1
	fps 15
}
$sequence "idleinspect" {
	"v_shotgun_anims\idleinspect"
	ACT_VM_FIDGET 1
	fps 15
}
$sequence "shoot" {
	"v_shotgun_anims\shoot"
	{ event 5001 0 "31" }
	{ event 1004 0 "weapons\shotgun_cock_heavy.wav" }
	ACT_VM_PRIMARYATTACK 1
	fps 13
}
$sequence "shoot2" {
	"v_shotgun_anims\shoot2"
	{ event 5001 0 "51" }
	{ event 1004 0 "weapons\shotgun_cock_heavy.wav" }
	ACT_VM_PRIMARYATTACK 1
	fps 13
}
$sequence "shoot3" {
	"v_shotgun_anims\shoot3"
	{ event 5001 0 "71" }
	{ event 1004 0 "weapons\shotgun_cock_heavy.wav" }
	ACT_VM_PRIMARYATTACK 1
	fps 13
}
$sequence "shoot4" {
	"v_shotgun_anims\shoot4"
	{ event 5001 0 "91" }
	{ event 1004 0 "weapons\shotgun_cock_heavy.wav" }
	ACT_VM_PRIMARYATTACK 1
	fps 13
}
$sequence "customize" {
	"v_shotgun_anims\customize"
	fps 20
}
