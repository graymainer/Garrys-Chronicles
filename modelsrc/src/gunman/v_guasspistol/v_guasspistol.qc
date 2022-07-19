// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf/v_guasspistol.mdl"
$modelname "gunman\v_pistol.mdl"

$cdmaterials "models\gunman\weapons\gausspistol\"

$body "studio" "v_hands"

$bodygroup "Sniper Mode"
{
	studio "v_pistol"
	studio "v_pistol_sniper"
}


$attachment "Muzzle0" "Bone17" 0 0 0 rotate 0 0 0
$attachment "Muzzle1" "Bone20" 0 0 0 rotate 0 0 0 //sniper muzzle

$sequence "idle" {
	"v_guasspistol_anims\idle"
	ACT_VM_IDLE 1 //legacy
	fps 8
}
$sequence "idlerestless" {
	"v_guasspistol_anims\idlerestless"
	ACT_VM_FIDGET 1 //legacy
	fps 10
}
$sequence "singleshot" {
	"v_guasspistol_anims\singleshot"
	{ event 5001 0 "42" }
	ACT_VM_PRIMARYATTACK 1 //legacy
	//ACT_VM_GUNMAN_ATK_MODE0 1 // this is what cust sys implementation would look like here
	fps 11
}
$sequence "rapidfire" {
	"v_guasspistol_anims\rapidfire"
	{ event 5001 0 "42" }
	//ACT_VM_GUNMAN_ATK_MODE1 1
	fps 40
}
$sequence "chargefire" {
	"v_guasspistol_anims\chargefire"
	{ event 5001 0 "42" }
	//ACT_VM_GUNMAN_ATK_MODE2 1
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
