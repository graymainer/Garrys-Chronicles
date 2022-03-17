// Created by Crowbar 0.49.0.0

$modelname "Humans\male_ss.mdl"

$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\humans\male_animations\"

$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -3.602 -11.671 0.419 5.034 11.678 65.998

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 -0.533615 38.566917 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000005 3.345128 -2.981901 4.944224 89.999983 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.018331 0 0 0 -1.675443 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.518565 0 0 0 5.74883 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 8.942642 0 0 0 11.120881 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.307271 0 0 0 22.945695 179.999856 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.593712 -0.000001 0 -0.000057 23.295723 0 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 1.999997 -3.000001 0 0 -76 -90.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.03335 1.000771 -1.93761 73.712031 168.61878 -95.596496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028143 0.000002 0 -0.46209 -33.623802 93.935237 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692549 0 0.000002 -0.000007 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481698 0 0 6.108069 2.532072 -89.664286 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676087 -1.71244 0 0 -89.999976 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.033342 1.000767 1.93766 -73.71186 168.619272 91.480542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028142 0.000002 0 2.738795 -33.527944 -90.505157 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692555 0 0.000005 -0.000007 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481671 0 -0.00003 -6.108482 2.532072 90.136744 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.676088 -1.712441 0 -0.000019 90.000024 90.000024 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 0.000004 0.000007 2.9705 -90.29935 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.848171 0 0 0 1.958771 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525253 0 0 2.336451 -61.4 2.212226 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879454 0 0 -0.16906 -33.482131 -4.660049 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890452 -0.000004 -0.000003 2.970156 -89.700793 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848175 0 0 0 1.959516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525249 0 0 -2.336618 -61.400341 -1.599413 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879452 0 0 -0.169039 -33.482137 -0.418217 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859704 -0.142404 -1.191975 8.719849 -50.41306 -27.452933 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312563 0.000001 0.000001 0.553764 -25.194097 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729362 0.000002 0 0.284816 -13.997302 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942327 0.046774 -0.431443 4.201386 -46.446697 -8.881647 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539092 0.000002 0 0.255539 -14.197714 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196319 -0.000001 0 0.421753 -24.683138 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883689 -0.046767 0.431443 1.250767 -33.682282 4.921822 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719575 0.000002 0 0.316046 -20.997626 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209182 -0.000001 0 0.176703 -12.398794 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859859 -0.13795 1.332466 -2.449396 -30.465185 20.308434 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719429 0.000003 0 0.233431 -20.79887 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099668 0.000001 0 0.148748 -13.999125 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.806048 -0.348923 1.321258 -38.931809 -45.224011 -69.147647 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789785 0 0.000002 0.423234 13.093399 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.206998 0 0 0.645542 20.790345 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.859672 -0.132566 1.193108 -9.083957 -50.365341 27.452701 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.31256 0 -0.000001 -0.683651 -25.191353 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729361 0.000002 0 -0.351451 -13.995692 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942293 0.05033 0.431043 -4.543841 -46.421333 8.880789 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539095 0.000003 0 -0.335409 -14.196232 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196323 0 0 -0.553649 -24.680776 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883655 -0.050326 -0.431043 -1.512837 -33.672447 -4.921995 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719575 -0.000005 0 -0.456876 -20.99524 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209182 -0.000001 0 -0.255596 -12.397432 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.859828 -0.148935 -1.331282 2.209727 -30.48142 -20.306719 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719425 0 0 -0.378896 -20.796657 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099665 0 0 -0.241272 -13.998055 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806014 -0.359835 -1.318334 38.595463 -45.490331 68.995573 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789783 0.000001 0 -0.361024 13.095241 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207003 0 0.000004 -0.551073 20.792923 -0.000002 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Anim_Attachment_RH"


// The 32 below is a guess until further is known about the format.
$animblocksize 32

$sectionframes 30 120

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "idle_reference" {
	"male_ss_anims\idle_reference.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "roofidle1" {
	"male_ss_anims\roofidle1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "roofidle2" {
	"male_ss_anims\roofidle2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "roofwatch1" {
	"male_ss_anims\roofwatch1.smd"
	{ event 1003 324 "1" }
	{ event 1003 366 "2" }
	{ event 1003 376 "3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "forcescanner" {
	"male_ss_anims\forcescanner.smd"
	{ event 1003 70 "1" }
	{ event 1003 75 "2" }
	{ event 1003 85 "3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "preforcescanner" {
	"male_ss_anims\preforcescanner.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "postforcescanner" {
	"male_ss_anims\postforcescanner.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitchair1" {
	"male_ss_anims\sitchair1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitchairtable1" {
	"male_ss_anims\sitchairtable1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitcouchfeet1" {
	"male_ss_anims\sitcouchfeet1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitcouchknees1" {
	"male_ss_anims\sitcouchknees1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitcouch1" {
	"male_ss_anims\sitcouch1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sitccouchtv1" {
	"male_ss_anims\sitccouchtv1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "laycouch1" {
	"male_ss_anims\laycouch1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "laycouch1_exit" {
	"male_ss_anims\laycouch1_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "drinker_sit" {
	"male_ss_anims\drinker_sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "drinker_sit_idle" {
	"male_ss_anims\drinker_sit_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "drinker_sit_ss" {
	"male_ss_anims\drinker_sit_ss.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "drinker_sit_idle_ss" {
	"male_ss_anims\drinker_sit_idle_ss.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "takepackage" {
	"male_ss_anims\takepackage.smd"
	{ event AE_CITIZEN_GET_PACKAGE 45 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idlepackage" {
	"male_ss_anims\idlepackage.smd"
	activity "ACT_IDLE_PACKAGE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "spreadwallidle" {
	"male_ss_anims\spreadwallidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "roofwatch2" {
	"male_ss_anims\roofwatch2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "lookoutidle" {
	"male_ss_anims\lookoutidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "lookoutrun" {
	"male_ss_anims\lookoutrun.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "roofslide" {
	"male_ss_anims\roofslide.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plazaidle1" {
	"male_ss_anims\plazaidle1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "plazaidle2" {
	"male_ss_anims\plazaidle2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "plazaidle3" {
	"male_ss_anims\plazaidle3.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "plazaidle4" {
	"male_ss_anims\plazaidle4.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "plazastand1" {
	"male_ss_anims\plazastand1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plazastand2" {
	"male_ss_anims\plazastand2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plazastand3" {
	"male_ss_anims\plazastand3.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plazastand4" {
	"male_ss_anims\plazastand4.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "apcarrestidle" {
	"male_ss_anims\apcarrestidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "apcarrestslam" {
	"male_ss_anims\apcarrestslam.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "arrestidle" {
	"male_ss_anims\arrestidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "arrestcurious" {
	"male_ss_anims\arrestcurious.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_TrainRide_Sit_Idle" {
	"male_ss_anims\d1_t01_TrainRide_Sit_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t01_TrainRide_Sit_Exit" {
	"male_ss_anims\d1_t01_TrainRide_Sit_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_TrainRide_Stand" {
	"male_ss_anims\d1_t01_TrainRide_Stand.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t01_TrainRide_Stand_Exit" {
	"male_ss_anims\d1_t01_TrainRide_Stand_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_Luggage_Idle" {
	"male_ss_anims\d1_t01_Luggage_Idle.smd"
	activity "ACT_IDLE_SUITCASE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t01_Luggage_Drop" {
	"male_ss_anims\d1_t01_Luggage_Drop.smd"
	{ event 1003 35 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Idle_to_d1_t01_BreakRoom_Sit01" {
	"male_ss_anims\Idle_to_d1_t01_BreakRoom_Sit01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_BreakRoom_Sit01_Idle" {
	"male_ss_anims\d1_t01_BreakRoom_Sit01_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t01_BreakRoom_Sit01_to_Idle" {
	"male_ss_anims\d1_t01_BreakRoom_Sit01_to_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_BreakRoom_Sit02_Entry" {
	"male_ss_anims\d1_t01_BreakRoom_Sit02_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_BreakRoom_Sit02" {
	"male_ss_anims\d1_t01_BreakRoom_Sit02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t01_BreakRoom_Sit02_Exit" {
	"male_ss_anims\d1_t01_BreakRoom_Sit02_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idlenoise" {
	"male_ss_anims\idlenoise.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	realtime
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "d1_t01_BreakRoom_WatchClock" {
	"male_ss_anims\d1_t01_BreakRoom_WatchClock.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise"
	fps 30
	loop
}

$sequence "d1_t01_BreakRoom_WatchBreen" {
	"male_ss_anims\d1_t01_BreakRoom_WatchBreen.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise"
	fps 30
	loop
}

$sequence "d1_t01_BreakRoom_WatchClock_Sit_Entry" {
	"male_ss_anims\d1_t01_BreakRoom_WatchClock_Sit_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_BreakRoom_WatchClock_Sit" {
	"male_ss_anims\d1_t01_BreakRoom_WatchClock_Sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t01_Interrogation_Idle" {
	"male_ss_anims\d1_t01_Interrogation_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t02_Plaza_Scan_ID" {
	"male_ss_anims\d1_t02_Plaza_Scan_ID.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t02_Playground_Cit1_Arms_Crossed" {
	"male_ss_anims\d1_t02_Playground_Cit1_Arms_Crossed.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise2"
	fps 30
	loop
}

$sequence "d1_t02_Playground_Cit2_Pockets" {
	"male_ss_anims\d1_t02_Playground_Cit2_Pockets.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise2"
	fps 30
	loop
}

$sequence "d1_t02_Plaza_Sit02" {
	"male_ss_anims\d1_t02_Plaza_Sit02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t02_Plaza_Sit01_Idle" {
	"male_ss_anims\d1_t02_Plaza_Sit01_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t03_Tenements_Look_Out_Door_Idle" {
	"male_ss_anims\d1_t03_Tenements_Look_Out_Door_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t03_Tenements_Look_Out_Door_Close" {
	"male_ss_anims\d1_t03_Tenements_Look_Out_Door_Close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t03_Tenements_Look_Out_Window_Idle" {
	"male_ss_anims\d1_t03_Tenements_Look_Out_Window_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t03_PreRaid_Peek_Idle" {
	"male_ss_anims\d1_t03_PreRaid_Peek_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_t03_PreRaid_Peek_Exit" {
	"male_ss_anims\d1_t03_PreRaid_Peek_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "doorBracer_PreIdle" {
	"male_ss_anims\doorBracer_PreIdle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "doorBracer_ShutDoor" {
	"male_ss_anims\doorBracer_ShutDoor.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "doorBracer_Closed" {
	"male_ss_anims\doorBracer_Closed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "doorBracer_Struggle" {
	"male_ss_anims\doorBracer_Struggle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "doorBracer_BustThru" {
	"male_ss_anims\doorBracer_BustThru.smd"
	{ event 1003 11 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_t03_sit_couch_consoling" {
	"male_ss_anims\d1_t03_sit_couch_consoling.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "luggageidle" {
	"male_ss_anims\luggageidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "luggageshrug" {
	"male_ss_anims\luggageshrug.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "luggagepush" {
	"male_ss_anims\luggagepush.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ts_luggageShove_all" {
	"male_ss_anims\ts_luggageShove_all.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Streetwar_CoverShoot_L" {
	"male_ss_anims\Streetwar_CoverShoot_L.smd"
	{ event 3002 24 "" }
	{ event 3002 37 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Trainstation_Int" {
	"male_ss_anims\Trainstation_Int.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Lying_Down" {
	"male_ss_anims\Lying_Down.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "podpose" {
	"male_ss_anims\podpose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "arrestpreidle" {
	"male_ss_anims\arrestpreidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "arrestpunch" {
	"male_ss_anims\arrestpunch.smd"
	{ event AE_CL_PLAYSOUND 2 "d1_canals.citizenpunch_pain_0" }
	{ event AE_CL_PLAYSOUND 51 "d1_canals.citizenpunch_punch_1" }
	{ event AE_CL_PLAYSOUND 56 "d1_canals.citizenpunch_pain_1" }
	{ event AE_CL_PLAYSOUND 58 "d1_canals.citizenpunch_fall_1" }
	{ event AE_CL_PLAYSOUND 70 "d1_canals.citizenpunch_pain_2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "arrestpostidle" {
	"male_ss_anims\arrestpostidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "boxcaropen" {
	"male_ss_anims\boxcaropen.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Canals_Matt_laydown" {
	"male_ss_anims\Canals_Matt_laydown.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Canals_Matt_whoareyou" {
	"male_ss_anims\Canals_Matt_whoareyou.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Canals_Matt_sitonedge" {
	"male_ss_anims\Canals_Matt_sitonedge.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Canals_Matt_beglad" {
	"male_ss_anims\Canals_Matt_beglad.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Canals_Matt_OhShit" {
	"male_ss_anims\Canals_Matt_OhShit.smd"
	{ event 1003 22 "1" }
	{ event 1003 114 "2" }
	{ event 1003 168 "3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_canals_06_bridge_check" {
	"male_ss_anims\d1_canals_06_bridge_check.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "mapcircle" {
	"male_ss_anims\mapcircle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idlenoise2" {
	"male_ss_anims\idlenoise2.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	realtime
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "d1_town05_Winston_Down" {
	"male_ss_anims\d1_town05_Winston_Down.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_town05_Wounded_Idle_1" {
	"male_ss_anims\d1_town05_Wounded_Idle_1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_town05_Wounded_Idle_2" {
	"male_ss_anims\d1_town05_Wounded_Idle_2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_town05_Daniels_Kneel_Entry" {
	"male_ss_anims\d1_town05_Daniels_Kneel_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_town05_Daniels_Kneel_Idle" {
	"male_ss_anims\d1_town05_Daniels_Kneel_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_town05_Leon_Idle_SMG1" {
	"male_ss_anims\d1_town05_Leon_Idle_SMG1.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise2"
	fps 30
	loop
}

$sequence "d1_town05_Leon_Door_Knock" {
	"male_ss_anims\d1_town05_Leon_Door_Knock.smd"
	{ event 1003 48 "1" }
	{ event 1003 62 "1" }
	{ event 1003 76 "1" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "d1_town05_Leon_Lean_Table_Entry" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_town05_Leon_Lean_Table_Idle" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d1_town05_Leon_Lean_Table_Exit" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_town05_Leon_Lean_Table_Entry_NoGun" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Entry_NoGun.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_town05_Leon_Lean_Table_Posture_Entry" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Posture_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d1_town05_Leon_Lean_Table_Posture_Idle" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Posture_Idle.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise2"
	fps 30
	loop
}

$sequence "d1_town05_Leon_Lean_Table_Posture_Exit" {
	"male_ss_anims\d1_town05_Leon_Lean_Table_Posture_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 35
}

$sequence "headcrabbed" {
	"male_ss_anims\headcrabbed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "headcrabbedpost" {
	"male_ss_anims\headcrabbedpost.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_Odessa_RPG_Give" {
	"male_ss_anims\d2_coast03_Odessa_RPG_Give.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d2_coast03_Odessa_RPG_Give_Idle" {
	"male_ss_anims\d2_coast03_Odessa_RPG_Give_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_Odessa_RPG_Give_Exit" {
	"male_ss_anims\d2_coast03_Odessa_RPG_Give_Exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d2_coast03_Odessa_Stand_RPG" {
	"male_ss_anims\d2_coast03_Odessa_Stand_RPG.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_alert_01" {
	"male_ss_anims\idle_alert_01.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise2"
	fps 30
	loop
}

$sequence "idle_alert_02" {
	"male_ss_anims\idle_alert_02.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idlenoise2"
	fps 30
	loop
}

$sequence "d2_coast03_PreBattle_Scan_Skies" {
	"male_ss_anims\d2_coast03_PreBattle_Scan_Skies.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_PreBattle_Scan_Skies02" {
	"male_ss_anims\d2_coast03_PreBattle_Scan_Skies02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_PreBattle_Scan_Skies03" {
	"male_ss_anims\d2_coast03_PreBattle_Scan_Skies03.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_PreBattle_Scan_Skies_Respond" {
	"male_ss_anims\d2_coast03_PreBattle_Scan_Skies_Respond.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d2_coast03_PreBattle_Kneel_Idle" {
	"male_ss_anims\d2_coast03_PreBattle_Kneel_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_PreBattle_Stand_Look" {
	"male_ss_anims\d2_coast03_PreBattle_Stand_Look.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_PostBattle_Idle01_Entry" {
	"male_ss_anims\d2_coast03_PostBattle_Idle01_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d2_coast03_PostBattle_Idle01" {
	"male_ss_anims\d2_coast03_PostBattle_Idle01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast03_PostBattle_Idle02_Entry" {
	"male_ss_anims\d2_coast03_PostBattle_Idle02_Entry.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d2_coast03_PostBattle_Idle02" {
	"male_ss_anims\d2_coast03_PostBattle_Idle02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "d2_coast_03_antlion_shove" {
	"male_ss_anims\d2_coast_03_antlion_shove.smd"
	{ event 1003 20 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d2_coast11_Tobias" {
	"male_ss_anims\d2_coast11_Tobias.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "antmanidle" {
	"male_ss_anims\antmanidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "antmanstand" {
	"male_ss_anims\antmanstand.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d3_c17_03_tower_idle" {
	"male_ss_anims\d3_c17_03_tower_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d3_c17_03_tower_wave" {
	"male_ss_anims\d3_c17_03_tower_wave.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d3_c17_03_throw_from_tower" {
	"male_ss_anims\d3_c17_03_throw_from_tower.smd"
	{ event 1003 30 "1" }
	{ event 1003 70 "2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d3_c17_03_climb_rope" {
	"male_ss_anims\d3_c17_03_climb_rope.smd"
	{ event 1003 205 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "d3_c17_03_climb_edge" {
	"male_ss_anims\d3_c17_03_climb_edge.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pullrope1idle" {
	"male_ss_anims\pullrope1idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "pullrope2idle" {
	"male_ss_anims\pullrope2idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "pullrope3idle" {
	"male_ss_anims\pullrope3idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "droprope1" {
	"male_ss_anims\droprope1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "droprope3" {
	"male_ss_anims\droprope3.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "cheer1" {
	"male_ss_anims\cheer1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "cheer2" {
	"male_ss_anims\cheer2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sniper_victim_pre" {
	"male_ss_anims\sniper_victim_pre.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sniper_victim_die" {
	"male_ss_anims\sniper_victim_die.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sniper_victim_post" {
	"male_ss_anims\sniper_victim_post.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$bonesaveframe "ValveBiped.Bip01_Pelvis" position rotation
$bonesaveframe "ValveBiped.Bip01_Spine" rotation
$bonesaveframe "ValveBiped.Bip01_Spine1" rotation
$bonesaveframe "ValveBiped.Bip01_Spine2" rotation
$bonesaveframe "ValveBiped.Bip01_Spine4" rotation
$bonesaveframe "ValveBiped.Bip01_Neck1" rotation
$bonesaveframe "ValveBiped.Bip01_Head1" rotation
$bonesaveframe "ValveBiped.Bip01_R_Clavicle" rotation
$bonesaveframe "ValveBiped.Bip01_R_UpperArm" rotation
$bonesaveframe "ValveBiped.Bip01_R_Forearm" rotation
$bonesaveframe "ValveBiped.Bip01_R_Hand" rotation
$bonesaveframe "ValveBiped.Bip01_L_Clavicle" rotation
$bonesaveframe "ValveBiped.Bip01_L_UpperArm" rotation
$bonesaveframe "ValveBiped.Bip01_L_Forearm" rotation
$bonesaveframe "ValveBiped.Bip01_L_Hand" rotation
$bonesaveframe "ValveBiped.Bip01_R_Thigh" rotation
$bonesaveframe "ValveBiped.Bip01_R_Calf" rotation
$bonesaveframe "ValveBiped.Bip01_R_Foot" rotation
$bonesaveframe "ValveBiped.Bip01_L_Thigh" rotation
$bonesaveframe "ValveBiped.Bip01_L_Calf" rotation
$bonesaveframe "ValveBiped.Bip01_L_Foot" rotation
