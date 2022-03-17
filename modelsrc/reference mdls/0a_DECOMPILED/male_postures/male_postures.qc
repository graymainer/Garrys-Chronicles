// Created by Crowbar 0.49.0.0

$modelname "humans\male_postures.mdl"

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

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$weightlist "weights_shiftrightin" {
	 "ValveBiped.Bip01_Pelvis" 1
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine1" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_Spine4" 1
	 "ValveBiped.Bip01_Neck1" 1
	 "ValveBiped.Bip01_Head1" 1
	 "ValveBiped.forward" 1
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Anim_Attachment_RH" 0
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Anim_Attachment_LH" 0
	 "ValveBiped.Bip01_R_Thigh" 1
	 "ValveBiped.Bip01_R_Calf" 1
	 "ValveBiped.Bip01_R_Foot" 1
	 "ValveBiped.Bip01_R_Toe0" 1
	 "ValveBiped.Bip01_L_Thigh" 1
	 "ValveBiped.Bip01_L_Calf" 1
	 "ValveBiped.Bip01_L_Foot" 1
	 "ValveBiped.Bip01_L_Toe0" 1
	 "ValveBiped.Bip01_L_Finger4" 0
	 "ValveBiped.Bip01_L_Finger41" 0
	 "ValveBiped.Bip01_L_Finger42" 0
	 "ValveBiped.Bip01_L_Finger3" 0
	 "ValveBiped.Bip01_L_Finger31" 0
	 "ValveBiped.Bip01_L_Finger32" 0
	 "ValveBiped.Bip01_L_Finger2" 0
	 "ValveBiped.Bip01_L_Finger21" 0
	 "ValveBiped.Bip01_L_Finger22" 0
	 "ValveBiped.Bip01_L_Finger1" 0
	 "ValveBiped.Bip01_L_Finger11" 0
	 "ValveBiped.Bip01_L_Finger12" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
	 "ValveBiped.Bip01_R_Finger4" 0
	 "ValveBiped.Bip01_R_Finger41" 0
	 "ValveBiped.Bip01_R_Finger42" 0
	 "ValveBiped.Bip01_R_Finger3" 0
	 "ValveBiped.Bip01_R_Finger31" 0
	 "ValveBiped.Bip01_R_Finger32" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
}

$weightlist "weights_shiftright" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.forward" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Anim_Attachment_RH" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Anim_Attachment_LH" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_L_Finger4" 0
	 "ValveBiped.Bip01_L_Finger41" 0
	 "ValveBiped.Bip01_L_Finger42" 0
	 "ValveBiped.Bip01_L_Finger3" 0
	 "ValveBiped.Bip01_L_Finger31" 0
	 "ValveBiped.Bip01_L_Finger32" 0
	 "ValveBiped.Bip01_L_Finger2" 0
	 "ValveBiped.Bip01_L_Finger21" 0
	 "ValveBiped.Bip01_L_Finger22" 0
	 "ValveBiped.Bip01_L_Finger1" 0
	 "ValveBiped.Bip01_L_Finger11" 0
	 "ValveBiped.Bip01_L_Finger12" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
	 "ValveBiped.Bip01_R_Finger4" 0
	 "ValveBiped.Bip01_R_Finger41" 0
	 "ValveBiped.Bip01_R_Finger42" 0
	 "ValveBiped.Bip01_R_Finger3" 0
	 "ValveBiped.Bip01_R_Finger31" 0
	 "ValveBiped.Bip01_R_Finger32" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
}

$sequence "reference" {
	"male_postures_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "shiftrightloop" {
	"male_postures_anims\shiftrightloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "shiftrightin" {
	"male_postures_anims\shiftrightin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftrightout" {
	"male_postures_anims\shiftrightout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftright" {
	"male_postures_anims\shiftright.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "15"
			"loop" "40"
			"end" "70"
		}
		"endmatch" "loop"
		"thumbnail_frame" "40"
	}
}
	blendlayer "shiftrightloop" 0 0.40404 0.707071 1.010101 spline
	addlayer "shiftrightin"
	addlayer "shiftrightout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftrightbigloop" {
	"male_postures_anims\shiftrightbigloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
}

$sequence "shiftrightbigin" {
	"male_postures_anims\shiftrightbigin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftrightbigout" {
	"male_postures_anims\shiftrightbigout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftrightbig" {
	"male_postures_anims\shiftrightbig.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "20"
			"loop" "30"
			"end" "50"
		}
		"endmatch" "loop"
		"thumbnail_frame" "30"
	}
}
	blendlayer "shiftrightbigloop" 0 0.379747 0.632911 1.012658 spline
	addlayer "shiftrightbigin"
	addlayer "shiftrightbigout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftleftloop" {
	"male_postures_anims\shiftleftloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
}

$sequence "shiftleftin" {
	"male_postures_anims\shiftleftin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftleftout" {
	"male_postures_anims\shiftleftout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "shiftleft" {
	"male_postures_anims\shiftleft.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "14"
			"loop" "22"
			"end" "40"
		}
		"endmatch" "loop"
		"thumbnail_frame" "22"
	}
}
	blendlayer "shiftleftloop" 0 0.372881 0.677966 1.016949 spline
	addlayer "shiftleftin"
	addlayer "shiftleftout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_Drinker_lookrightloop" {
	"male_postures_anims\P_Drinker_lookrightloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "P_Drinker_lookrightin" {
	"male_postures_anims\P_Drinker_lookrightin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_Drinker_lookrightout" {
	"male_postures_anims\P_Drinker_lookrightout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_Drinker_lookright" {
	"male_postures_anims\P_Drinker_lookright.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "20"
			"loop" "24"
			"end" "34"
		}
		"endmatch" "loop"
		"thumbnail_frame" "24"
	}
}
	blendlayer "P_Drinker_lookrightloop" 0 0.40678 0.576271 1.016949 spline
	addlayer "P_Drinker_lookrightin"
	addlayer "P_Drinker_lookrightout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_Drinker_lookleftloop" {
	"male_postures_anims\P_Drinker_lookleftloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "P_Drinker_lookleftin" {
	"male_postures_anims\P_Drinker_lookleftin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_Drinker_lookleftout" {
	"male_postures_anims\P_Drinker_lookleftout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_Drinker_lookleft" {
	"male_postures_anims\P_Drinker_lookleft.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "16"
			"loop" "20"
			"end" "25"
		}
		"endmatch" "loop"
		"thumbnail_frame" "20"
	}
}
	blendlayer "P_Drinker_lookleftloop" 0 0.408163 0.510204 1.020408 spline
	addlayer "P_Drinker_lookleftin"
	addlayer "P_Drinker_lookleftout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_BreakRoom_WatchClockloop" {
	"male_postures_anims\P_BreakRoom_WatchClockloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "P_BreakRoom_WatchClockin" {
	"male_postures_anims\P_BreakRoom_WatchClockin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_BreakRoom_WatchClockout" {
	"male_postures_anims\P_BreakRoom_WatchClockout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_BreakRoom_WatchClock" {
	"male_postures_anims\P_BreakRoom_WatchClock.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "30"
			"end" "40"
		}
		"endmatch" "loop"
		"thumbnail_frame" "30"
	}
}
	blendlayer "P_BreakRoom_WatchClockloop" 0 0.434783 0.57971 1.014493 spline
	addlayer "P_BreakRoom_WatchClockin"
	addlayer "P_BreakRoom_WatchClockout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_BreakRoom_Sit_01loop" {
	"male_postures_anims\P_BreakRoom_Sit_01loop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "P_BreakRoom_Sit_01in" {
	"male_postures_anims\P_BreakRoom_Sit_01in.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_BreakRoom_Sit_01out" {
	"male_postures_anims\P_BreakRoom_Sit_01out.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_BreakRoom_Sit_01" {
	"male_postures_anims\P_BreakRoom_Sit_01.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "40"
			"end" "50"
		}
		"endmatch" "loop"
		"thumbnail_frame" "40"
	}
}
	blendlayer "P_BreakRoom_Sit_01loop" 0 0.506329 0.632911 1.012658 spline
	addlayer "P_BreakRoom_Sit_01in"
	addlayer "P_BreakRoom_Sit_01out"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "Scan_Skies_Respondloop" {
	"male_postures_anims\Scan_Skies_Respondloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
}

$sequence "Scan_Skies_Respondin" {
	"male_postures_anims\Scan_Skies_Respondin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "Scan_Skies_Respondout" {
	"male_postures_anims\Scan_Skies_Respondout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "Scan_Skies_Respond" {
	"male_postures_anims\Scan_Skies_Respond.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "30"
			"end" "40"
		}
		"endmatch" "loop"
		"thumbnail_frame" "30"
	}
}
	blendlayer "Scan_Skies_Respondloop" 0 0.434783 0.57971 1.014493 spline
	addlayer "Scan_Skies_Respondin"
	addlayer "Scan_Skies_Respondout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ConsoleType_Rifleloop" {
	"male_postures_anims\p_ConsoleType_Rifleloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_ConsoleType_Riflein" {
	"male_postures_anims\p_ConsoleType_Riflein.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ConsoleType_Rifleout" {
	"male_postures_anims\p_ConsoleType_Rifleout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ConsoleType_Rifle" {
	"male_postures_anims\p_ConsoleType_Rifle.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "47"
			"end" "60"
		}
		"endmatch" "loop"
		"thumbnail_frame" "47"
	}
}
	blendlayer "p_ConsoleType_Rifleloop" 0 0.54023 0.689655 1.011494 spline
	addlayer "p_ConsoleType_Riflein"
	addlayer "p_ConsoleType_Rifleout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_town05_RadioLeanloop" {
	"male_postures_anims\p_town05_RadioLeanloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_town05_RadioLeanin" {
	"male_postures_anims\p_town05_RadioLeanin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_town05_RadioLeanout" {
	"male_postures_anims\p_town05_RadioLeanout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_town05_RadioLean" {
	"male_postures_anims\p_town05_RadioLean.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "6"
			"loop" "50"
			"end" "111"
		}
		"endmatch" "loop"
		"thumbnail_frame" "50"
	}
}
	blendlayer "p_town05_RadioLeanloop" 0 0.295858 0.656805 1.005917 spline
	addlayer "p_town05_RadioLeanin"
	addlayer "p_town05_RadioLeanout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_bouncingloop" {
	"male_postures_anims\p_bouncingloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_bouncingin" {
	"male_postures_anims\p_bouncingin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_bouncingout" {
	"male_postures_anims\p_bouncingout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_bouncing" {
	"male_postures_anims\p_bouncing.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "12"
			"loop" "28"
			"end" "39"
		}
		"endmatch" "loop"
		"thumbnail_frame" "28"
	}
}
	blendlayer "p_bouncingloop" 0 0.538462 0.75 1.019231 spline
	addlayer "p_bouncingin"
	addlayer "p_bouncingout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_stepleftloop" {
	"male_postures_anims\p_stepleftloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_stepleftin" {
	"male_postures_anims\p_stepleftin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_stepleftout" {
	"male_postures_anims\p_stepleftout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_stepleft" {
	"male_postures_anims\p_stepleft.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "30"
			"loop" "44"
			"end" "68"
		}
		"endmatch" "loop"
		"thumbnail_frame" "44"
	}
}
	blendlayer "p_stepleftloop" 0 0.505747 0.781609 1.011494 spline
	addlayer "p_stepleftin"
	addlayer "p_stepleftout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_jumpuploop" {
	"male_postures_anims\p_jumpuploop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_jumpupin" {
	"male_postures_anims\p_jumpupin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_jumpupout" {
	"male_postures_anims\p_jumpupout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_jumpup" {
	"male_postures_anims\p_jumpup.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "4"
			"loop" "7"
			"end" "32"
		}
		"endmatch" "loop"
		"thumbnail_frame" "7"
	}
}
	blendlayer "p_jumpuploop" 0 0.184211 0.842105 1.026316 spline
	addlayer "p_jumpupin"
	addlayer "p_jumpupout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_balance_toesloop" {
	"male_postures_anims\p_balance_toesloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_balance_toesin" {
	"male_postures_anims\p_balance_toesin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_balance_toesout" {
	"male_postures_anims\p_balance_toesout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_balance_toes" {
	"male_postures_anims\p_balance_toes.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "18"
			"loop" "30"
			"end" "68"
		}
		"endmatch" "loop"
		"thumbnail_frame" "30"
	}
}
	blendlayer "p_balance_toesloop" 0 0.337079 0.764045 1.011236 spline
	addlayer "p_balance_toesin"
	addlayer "p_balance_toesout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_bendoverloop" {
	"male_postures_anims\p_bendoverloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_bendoverin" {
	"male_postures_anims\p_bendoverin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_bendoverout" {
	"male_postures_anims\p_bendoverout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_bendover" {
	"male_postures_anims\p_bendover.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "15"
			"loop" "20"
			"end" "20"
		}
		"endmatch" "loop"
		"thumbnail_frame" "20"
	}
}
	blendlayer "p_bendoverloop" 0 0.3125 0.3125 1.015625 spline
	addlayer "p_bendoverin"
	addlayer "p_bendoverout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_stepinloop" {
	"male_postures_anims\p_stepinloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_stepinin" {
	"male_postures_anims\p_stepinin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_stepinout" {
	"male_postures_anims\p_stepinout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_stepin" {
	"male_postures_anims\p_stepin.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "19"
			"loop" "30"
			"end" "50"
		}
		"endmatch" "loop"
		"thumbnail_frame" "30"
	}
}
	blendlayer "p_stepinloop" 0 0.434783 0.724638 1.014493 spline
	addlayer "p_stepinin"
	addlayer "p_stepinout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_lean_on_carloop" {
	"male_postures_anims\P_lean_on_carloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
}

$sequence "P_lean_on_carin" {
	"male_postures_anims\P_lean_on_carin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_lean_on_carout" {
	"male_postures_anims\P_lean_on_carout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "P_lean_on_car" {
	"male_postures_anims\P_lean_on_car.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "20"
			"loop" "30"
			"end" "60"
		}
		"endmatch" "loop"
		"thumbnail_frame" "30"
	}
}
	blendlayer "P_lean_on_carloop" 0 0.337079 0.674157 1.011236 spline
	addlayer "P_lean_on_carin"
	addlayer "P_lean_on_carout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_kickloop" {
	"male_postures_anims\p_kickloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
}

$sequence "p_kickin" {
	"male_postures_anims\p_kickin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_kickout" {
	"male_postures_anims\p_kickout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_kick" {
	"male_postures_anims\p_kick.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "20"
			"end" "40"
		}
		"endmatch" "loop"
		"thumbnail_frame" "20"
	}
}
	blendlayer "p_kickloop" 0 0.338983 0.677966 1.016949 spline
	addlayer "p_kickin"
	addlayer "p_kickout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ar2_step_lloop" {
	"male_postures_anims\p_ar2_step_lloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
}

$sequence "p_ar2_step_lin" {
	"male_postures_anims\p_ar2_step_lin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ar2_step_lout" {
	"male_postures_anims\p_ar2_step_lout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ar2_step_l" {
	"male_postures_anims\p_ar2_step_l.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "41"
			"end" "61"
		}
		"endmatch" "loop"
		"thumbnail_frame" "41"
	}
}
	blendlayer "p_ar2_step_lloop" 0 0.482353 0.717647 1.011765 spline
	addlayer "p_ar2_step_lin"
	addlayer "p_ar2_step_lout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ar2_relaxedloop" {
	"male_postures_anims\p_ar2_relaxedloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
}

$sequence "p_ar2_relaxedin" {
	"male_postures_anims\p_ar2_relaxedin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ar2_relaxedout" {
	"male_postures_anims\p_ar2_relaxedout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ar2_relaxed" {
	"male_postures_anims\p_ar2_relaxed.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "5"
			"loop" "38"
			"end" "70"
		}
		"endmatch" "loop"
		"thumbnail_frame" "38"
	}
}
	blendlayer "p_ar2_relaxedloop" 0 0.383838 0.707071 1.010101 spline
	addlayer "p_ar2_relaxedin"
	addlayer "p_ar2_relaxedout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_point_down_leftloop" {
	"male_postures_anims\p_point_down_leftloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_point_down_leftin" {
	"male_postures_anims\p_point_down_leftin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_point_down_leftout" {
	"male_postures_anims\p_point_down_leftout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_point_down_left" {
	"male_postures_anims\p_point_down_left.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "36"
			"end" "40"
		}
		"endmatch" "loop"
		"thumbnail_frame" "36"
	}
}
	blendlayer "p_point_down_leftloop" 0 0.48 0.533333 1.013333 spline
	addlayer "p_point_down_leftin"
	addlayer "p_point_down_leftout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_fingerpointuploop" {
	"male_postures_anims\p_fingerpointuploop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_fingerpointupin" {
	"male_postures_anims\p_fingerpointupin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_fingerpointupout" {
	"male_postures_anims\p_fingerpointupout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_fingerpointup" {
	"male_postures_anims\p_fingerpointup.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "25"
			"loop" "40"
			"end" "41"
		}
		"endmatch" "loop"
		"thumbnail_frame" "40"
	}
}
	blendlayer "p_fingerpointuploop" 0 0.57971 0.594203 1.014493 spline
	addlayer "p_fingerpointupin"
	addlayer "p_fingerpointupout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_readyloop" {
	"male_postures_anims\p_readyloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_readyin" {
	"male_postures_anims\p_readyin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_readyout" {
	"male_postures_anims\p_readyout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_ready" {
	"male_postures_anims\p_ready.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "10"
			"loop" "40"
			"end" "80"
		}
		"endmatch" "loop"
		"thumbnail_frame" "40"
	}
}
	blendlayer "p_readyloop" 0 0.384615 0.769231 1.009615 spline
	addlayer "p_readyin"
	addlayer "p_readyout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_foot_forwloop" {
	"male_postures_anims\p_L_foot_forwloop.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
}

$sequence "p_L_foot_forwin" {
	"male_postures_anims\p_L_foot_forwin.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_foot_forwout" {
	"male_postures_anims\p_L_foot_forwout.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_foot_forw" {
	"male_postures_anims\p_L_foot_forw.smd"
	fadein 0.2
	fadeout 0.2

keyvalues
{
	faceposer 
	{
		"type" "posture"
		 "tags" 
		{
			"apex" "25"
			"loop" "45"
			"end" "80"
		}
		"endmatch" "loop"
		"thumbnail_frame" "45"
	}
}
	blendlayer "p_L_foot_forwloop" 0 0.378151 0.672269 1.008403 spline
	addlayer "p_L_foot_forwin"
	addlayer "p_L_foot_forwout"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
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
