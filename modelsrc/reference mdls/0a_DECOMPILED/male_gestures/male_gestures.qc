// Created by Crowbar 0.49.0.0

$modelname "humans\male_gestures.mdl"

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

$poseparameter "gesture_height" 1 -1 0
$poseparameter "gesture_width" 1 -1 0

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$weightlist "weights_g_placeholderapexArms" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.forward" 0
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Anim_Attachment_RH" 1
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Anim_Attachment_LH" 1
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_L_Finger4" 1
	 "ValveBiped.Bip01_L_Finger41" 1
	 "ValveBiped.Bip01_L_Finger42" 1
	 "ValveBiped.Bip01_L_Finger3" 1
	 "ValveBiped.Bip01_L_Finger31" 1
	 "ValveBiped.Bip01_L_Finger32" 1
	 "ValveBiped.Bip01_L_Finger2" 1
	 "ValveBiped.Bip01_L_Finger21" 1
	 "ValveBiped.Bip01_L_Finger22" 1
	 "ValveBiped.Bip01_L_Finger1" 1
	 "ValveBiped.Bip01_L_Finger11" 1
	 "ValveBiped.Bip01_L_Finger12" 1
	 "ValveBiped.Bip01_L_Finger0" 1
	 "ValveBiped.Bip01_L_Finger01" 1
	 "ValveBiped.Bip01_L_Finger02" 1
	 "ValveBiped.Bip01_R_Finger4" 1
	 "ValveBiped.Bip01_R_Finger41" 1
	 "ValveBiped.Bip01_R_Finger42" 1
	 "ValveBiped.Bip01_R_Finger3" 1
	 "ValveBiped.Bip01_R_Finger31" 1
	 "ValveBiped.Bip01_R_Finger32" 1
	 "ValveBiped.Bip01_R_Finger2" 1
	 "ValveBiped.Bip01_R_Finger21" 1
	 "ValveBiped.Bip01_R_Finger22" 1
	 "ValveBiped.Bip01_R_Finger1" 1
	 "ValveBiped.Bip01_R_Finger11" 1
	 "ValveBiped.Bip01_R_Finger12" 1
	 "ValveBiped.Bip01_R_Finger0" 1
	 "ValveBiped.Bip01_R_Finger01" 1
	 "ValveBiped.Bip01_R_Finger02" 1
}

$weightlist "weights_g_placeholderapexSpine" {
	 "ValveBiped.Bip01_Pelvis" 1
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine1" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_Spine4" 1
	 "ValveBiped.Bip01_Neck1" 1
	 "ValveBiped.Bip01_Head1" 1
	 "ValveBiped.forward" 1
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

$weightlist "weights_g_placeholderapexDelta" {
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
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Anim_Attachment_RH" 1
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Anim_Attachment_LH" 1
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_L_Finger4" 1
	 "ValveBiped.Bip01_L_Finger41" 1
	 "ValveBiped.Bip01_L_Finger42" 1
	 "ValveBiped.Bip01_L_Finger3" 1
	 "ValveBiped.Bip01_L_Finger31" 1
	 "ValveBiped.Bip01_L_Finger32" 1
	 "ValveBiped.Bip01_L_Finger2" 1
	 "ValveBiped.Bip01_L_Finger21" 1
	 "ValveBiped.Bip01_L_Finger22" 1
	 "ValveBiped.Bip01_L_Finger1" 1
	 "ValveBiped.Bip01_L_Finger11" 1
	 "ValveBiped.Bip01_L_Finger12" 1
	 "ValveBiped.Bip01_L_Finger0" 1
	 "ValveBiped.Bip01_L_Finger01" 1
	 "ValveBiped.Bip01_L_Finger02" 1
	 "ValveBiped.Bip01_R_Finger4" 1
	 "ValveBiped.Bip01_R_Finger41" 1
	 "ValveBiped.Bip01_R_Finger42" 1
	 "ValveBiped.Bip01_R_Finger3" 1
	 "ValveBiped.Bip01_R_Finger31" 1
	 "ValveBiped.Bip01_R_Finger32" 1
	 "ValveBiped.Bip01_R_Finger2" 1
	 "ValveBiped.Bip01_R_Finger21" 1
	 "ValveBiped.Bip01_R_Finger22" 1
	 "ValveBiped.Bip01_R_Finger1" 1
	 "ValveBiped.Bip01_R_Finger11" 1
	 "ValveBiped.Bip01_R_Finger12" 1
	 "ValveBiped.Bip01_R_Finger0" 1
	 "ValveBiped.Bip01_R_Finger01" 1
	 "ValveBiped.Bip01_R_Finger02" 1
}

$weightlist "weights_g_placeholder" {
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

$weightlist "weights_g_fist_LapexArms" {
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
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Anim_Attachment_LH" 1
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_L_Finger4" 1
	 "ValveBiped.Bip01_L_Finger41" 1
	 "ValveBiped.Bip01_L_Finger42" 1
	 "ValveBiped.Bip01_L_Finger3" 1
	 "ValveBiped.Bip01_L_Finger31" 1
	 "ValveBiped.Bip01_L_Finger32" 1
	 "ValveBiped.Bip01_L_Finger2" 1
	 "ValveBiped.Bip01_L_Finger21" 1
	 "ValveBiped.Bip01_L_Finger22" 1
	 "ValveBiped.Bip01_L_Finger1" 1
	 "ValveBiped.Bip01_L_Finger11" 1
	 "ValveBiped.Bip01_L_Finger12" 1
	 "ValveBiped.Bip01_L_Finger0" 1
	 "ValveBiped.Bip01_L_Finger01" 1
	 "ValveBiped.Bip01_L_Finger02" 1
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

$weightlist "weights_g_fist_LapexDelta" {
	 "ValveBiped.Bip01_Pelvis" 1
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine1" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_Spine4" 1
	 "ValveBiped.Bip01_Neck1" 1
	 "ValveBiped.Bip01_Head1" 1
	 "ValveBiped.forward" 1
	 "ValveBiped.Bip01_R_Clavicle" 0.2
	 "ValveBiped.Bip01_R_UpperArm" 0.2
	 "ValveBiped.Bip01_R_Forearm" 0.2
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Anim_Attachment_RH" 0
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Anim_Attachment_LH" 1
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_L_Finger4" 1
	 "ValveBiped.Bip01_L_Finger41" 1
	 "ValveBiped.Bip01_L_Finger42" 1
	 "ValveBiped.Bip01_L_Finger3" 1
	 "ValveBiped.Bip01_L_Finger31" 1
	 "ValveBiped.Bip01_L_Finger32" 1
	 "ValveBiped.Bip01_L_Finger2" 1
	 "ValveBiped.Bip01_L_Finger21" 1
	 "ValveBiped.Bip01_L_Finger22" 1
	 "ValveBiped.Bip01_L_Finger1" 1
	 "ValveBiped.Bip01_L_Finger11" 1
	 "ValveBiped.Bip01_L_Finger12" 1
	 "ValveBiped.Bip01_L_Finger0" 1
	 "ValveBiped.Bip01_L_Finger01" 1
	 "ValveBiped.Bip01_L_Finger02" 1
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

$weightlist "weights_GestureButton_rightapexArms" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.forward" 0
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Anim_Attachment_RH" 1
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
	 "ValveBiped.Bip01_R_Finger4" 1
	 "ValveBiped.Bip01_R_Finger41" 1
	 "ValveBiped.Bip01_R_Finger42" 1
	 "ValveBiped.Bip01_R_Finger3" 1
	 "ValveBiped.Bip01_R_Finger31" 1
	 "ValveBiped.Bip01_R_Finger32" 1
	 "ValveBiped.Bip01_R_Finger2" 1
	 "ValveBiped.Bip01_R_Finger21" 1
	 "ValveBiped.Bip01_R_Finger22" 1
	 "ValveBiped.Bip01_R_Finger1" 1
	 "ValveBiped.Bip01_R_Finger11" 1
	 "ValveBiped.Bip01_R_Finger12" 1
	 "ValveBiped.Bip01_R_Finger0" 1
	 "ValveBiped.Bip01_R_Finger01" 1
	 "ValveBiped.Bip01_R_Finger02" 1
}

$weightlist "weights_GestureButton_rightapexDelta" {
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
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Anim_Attachment_RH" 1
	 "ValveBiped.Bip01_L_Clavicle" 0.2
	 "ValveBiped.Bip01_L_UpperArm" 0.2
	 "ValveBiped.Bip01_L_Forearm" 0.2
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
	 "ValveBiped.Bip01_R_Finger4" 1
	 "ValveBiped.Bip01_R_Finger41" 1
	 "ValveBiped.Bip01_R_Finger42" 1
	 "ValveBiped.Bip01_R_Finger3" 1
	 "ValveBiped.Bip01_R_Finger31" 1
	 "ValveBiped.Bip01_R_Finger32" 1
	 "ValveBiped.Bip01_R_Finger2" 1
	 "ValveBiped.Bip01_R_Finger21" 1
	 "ValveBiped.Bip01_R_Finger22" 1
	 "ValveBiped.Bip01_R_Finger1" 1
	 "ValveBiped.Bip01_R_Finger11" 1
	 "ValveBiped.Bip01_R_Finger12" 1
	 "ValveBiped.Bip01_R_Finger0" 1
	 "ValveBiped.Bip01_R_Finger01" 1
	 "ValveBiped.Bip01_R_Finger02" 1
}

$sequence "reference" {
	"male_gestures_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "g_placeholderapexArms" {
	"male_gestures_anims\g_placeholderapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_placeholderapexSpine" {
	"male_gestures_anims\g_placeholderapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_placeholderapexDelta" {
	"male_gestures_anims\g_placeholderapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_placeholderloopArms" {
	"male_gestures_anims\g_placeholderloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_placeholderloopSpine" {
	"male_gestures_anims\g_placeholderloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_placeholderaccentDelta" {
	"male_gestures_anims\g_placeholderaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_placeholder" {
	"male_gestures_anims\g_placeholder.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "20"
			"accent" "24"
			"loop" "25"
			"end" "34"
		}
		"entrytag" "apex"
		"thumbnail_frame" "24"
	}
}
	blendlayer "g_placeholderapexArms" 0 0.338983 0.338983 0.423729 xfade spline
	blendlayer "g_placeholderapexSpine" 0 0.338983 0.338983 0.423729 spline
	blendlayer "g_placeholderloopArms" 0.338983 0.423729 0.576271 1.016949 spline
	blendlayer "g_placeholderloopSpine" 0.338983 0.423729 0.576271 1.016949 spline
	addlayer "g_placeholderapexDelta"
	addlayer "g_placeholderaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_preRaid_BeckonapexArms" {
	"male_gestures_anims\g_preRaid_BeckonapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_preRaid_BeckonapexSpine" {
	"male_gestures_anims\g_preRaid_BeckonapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_preRaid_BeckonapexDelta" {
	"male_gestures_anims\g_preRaid_BeckonapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_preRaid_BeckonloopArms" {
	"male_gestures_anims\g_preRaid_BeckonloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_preRaid_BeckonloopSpine" {
	"male_gestures_anims\g_preRaid_BeckonloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_preRaid_BeckonaccentDelta" {
	"male_gestures_anims\g_preRaid_BeckonaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_preRaid_Beckon" {
	"male_gestures_anims\g_preRaid_Beckon.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "16"
			"accent" "30"
			"loop" "52"
			"end" "60"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "g_preRaid_BeckonapexArms" 0 0.271186 0.271186 0.881356 xfade spline
	blendlayer "g_preRaid_BeckonapexSpine" 0 0.271186 0.271186 0.881356 spline
	blendlayer "g_preRaid_BeckonloopArms" 0.271186 0.881356 1.016949 1.016949 spline
	blendlayer "g_preRaid_BeckonloopSpine" 0.271186 0.881356 1.016949 1.016949 spline
	addlayer "g_preRaid_BeckonapexDelta"
	addlayer "g_preRaid_BeckonaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_WatchClockapexArms" {
	"male_gestures_anims\g_BreakRoom_WatchClockapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_BreakRoom_WatchClockapexSpine" {
	"male_gestures_anims\g_BreakRoom_WatchClockapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_WatchClockapexDelta" {
	"male_gestures_anims\g_BreakRoom_WatchClockapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_WatchClockloopArms" {
	"male_gestures_anims\g_BreakRoom_WatchClockloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_BreakRoom_WatchClockloopSpine" {
	"male_gestures_anims\g_BreakRoom_WatchClockloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_WatchClockaccentDelta" {
	"male_gestures_anims\g_BreakRoom_WatchClockaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_WatchClock" {
	"male_gestures_anims\g_BreakRoom_WatchClock.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "29"
			"loop" "52"
			"end" "77"
		}
		"entrytag" "apex"
		"thumbnail_frame" "29"
	}
}
	blendlayer "g_BreakRoom_WatchClockapexArms" 0 0.086207 0.086207 0.448276 xfade spline
	blendlayer "g_BreakRoom_WatchClockapexSpine" 0 0.086207 0.086207 0.448276 spline
	blendlayer "g_BreakRoom_WatchClockloopArms" 0.086207 0.448276 0.663793 1.008621 spline
	blendlayer "g_BreakRoom_WatchClockloopSpine" 0.086207 0.448276 0.663793 1.008621 spline
	addlayer "g_BreakRoom_WatchClockapexDelta"
	addlayer "g_BreakRoom_WatchClockaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_Sit_01apexArms" {
	"male_gestures_anims\g_BreakRoom_Sit_01apexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_BreakRoom_Sit_01apexSpine" {
	"male_gestures_anims\g_BreakRoom_Sit_01apexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_Sit_01apexDelta" {
	"male_gestures_anims\g_BreakRoom_Sit_01apexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_Sit_01loopArms" {
	"male_gestures_anims\g_BreakRoom_Sit_01loopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_BreakRoom_Sit_01loopSpine" {
	"male_gestures_anims\g_BreakRoom_Sit_01loopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_Sit_01accentDelta" {
	"male_gestures_anims\g_BreakRoom_Sit_01accentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_BreakRoom_Sit_01" {
	"male_gestures_anims\g_BreakRoom_Sit_01.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "39"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "39"
	}
}
	blendlayer "g_BreakRoom_Sit_01apexArms" 0 0.126582 0.126582 0.506329 xfade spline
	blendlayer "g_BreakRoom_Sit_01apexSpine" 0 0.126582 0.126582 0.506329 spline
	blendlayer "g_BreakRoom_Sit_01loopArms" 0.126582 0.506329 0.632911 1.012658 spline
	blendlayer "g_BreakRoom_Sit_01loopSpine" 0.126582 0.506329 0.632911 1.012658 spline
	addlayer "g_BreakRoom_Sit_01apexDelta"
	addlayer "g_BreakRoom_Sit_01accentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Breencast_Watcher_ResponseapexArms" {
	"male_gestures_anims\g_Breencast_Watcher_ResponseapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Breencast_Watcher_ResponseapexSpine" {
	"male_gestures_anims\g_Breencast_Watcher_ResponseapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Breencast_Watcher_ResponseapexDelta" {
	"male_gestures_anims\g_Breencast_Watcher_ResponseapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Breencast_Watcher_ResponseloopArms" {
	"male_gestures_anims\g_Breencast_Watcher_ResponseloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Breencast_Watcher_ResponseloopSpine" {
	"male_gestures_anims\g_Breencast_Watcher_ResponseloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Breencast_Watcher_ResponseaccentDelta" {
	"male_gestures_anims\g_Breencast_Watcher_ResponseaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Breencast_Watcher_Response" {
	"male_gestures_anims\g_Breencast_Watcher_Response.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "20"
			"loop" "35"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "g_Breencast_Watcher_ResponseapexArms" 0 0.126582 0.126582 0.443038 xfade spline
	blendlayer "g_Breencast_Watcher_ResponseapexSpine" 0 0.126582 0.126582 0.443038 spline
	blendlayer "g_Breencast_Watcher_ResponseloopArms" 0.126582 0.443038 0.632911 1.012658 spline
	blendlayer "g_Breencast_Watcher_ResponseloopSpine" 0.126582 0.443038 0.632911 1.012658 spline
	addlayer "g_Breencast_Watcher_ResponseapexDelta"
	addlayer "g_Breencast_Watcher_ResponseaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Pacer_ArmsCrossedapexArms" {
	"male_gestures_anims\g_Pacer_ArmsCrossedapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Pacer_ArmsCrossedapexSpine" {
	"male_gestures_anims\g_Pacer_ArmsCrossedapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Pacer_ArmsCrossedapexDelta" {
	"male_gestures_anims\g_Pacer_ArmsCrossedapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Pacer_ArmsCrossedloopArms" {
	"male_gestures_anims\g_Pacer_ArmsCrossedloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Pacer_ArmsCrossedloopSpine" {
	"male_gestures_anims\g_Pacer_ArmsCrossedloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Pacer_ArmsCrossedaccentDelta" {
	"male_gestures_anims\g_Pacer_ArmsCrossedaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Pacer_ArmsCrossed" {
	"male_gestures_anims\g_Pacer_ArmsCrossed.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "8"
			"accent" "13"
			"loop" "18"
			"end" "25"
		}
		"entrytag" "apex"
		"thumbnail_frame" "13"
	}
}
	blendlayer "g_Pacer_ArmsCrossedapexArms" 0 0.275862 0.275862 0.62069 xfade spline
	blendlayer "g_Pacer_ArmsCrossedapexSpine" 0 0.275862 0.275862 0.62069 spline
	blendlayer "g_Pacer_ArmsCrossedloopArms" 0.275862 0.62069 0.862069 1.034483 spline
	blendlayer "g_Pacer_ArmsCrossedloopSpine" 0.275862 0.62069 0.862069 1.034483 spline
	addlayer "g_Pacer_ArmsCrossedapexDelta"
	addlayer "g_Pacer_ArmsCrossedaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_RespondapexArms" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_RespondapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Tenements_Look_Out_Window_RespondapexSpine" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_RespondapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_RespondapexDelta" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_RespondapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_RespondloopArms" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_RespondloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Tenements_Look_Out_Window_RespondloopSpine" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_RespondloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_RespondaccentDelta" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_RespondaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_Respond" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "19"
			"loop" "20"
			"end" "35"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_Tenements_Look_Out_Window_RespondapexArms" 0 0.15625 0.15625 0.3125 xfade spline
	blendlayer "g_Tenements_Look_Out_Window_RespondapexSpine" 0 0.15625 0.15625 0.3125 spline
	blendlayer "g_Tenements_Look_Out_Window_RespondloopArms" 0.15625 0.3125 0.546875 1.015625 spline
	blendlayer "g_Tenements_Look_Out_Window_RespondloopSpine" 0.15625 0.3125 0.546875 1.015625 spline
	addlayer "g_Tenements_Look_Out_Window_RespondapexDelta"
	addlayer "g_Tenements_Look_Out_Window_RespondaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_Respond_bapexArms" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_bapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Tenements_Look_Out_Window_Respond_bapexSpine" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_bapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_Respond_bapexDelta" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_bapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_Respond_bloopArms" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_bloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Tenements_Look_Out_Window_Respond_bloopSpine" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_bloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_Respond_baccentDelta" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_baccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Tenements_Look_Out_Window_Respond_b" {
	"male_gestures_anims\g_Tenements_Look_Out_Window_Respond_b.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "20"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "g_Tenements_Look_Out_Window_Respond_bapexArms" 0 0.144928 0.144928 0.434783 xfade spline
	blendlayer "g_Tenements_Look_Out_Window_Respond_bapexSpine" 0 0.144928 0.144928 0.434783 spline
	blendlayer "g_Tenements_Look_Out_Window_Respond_bloopArms" 0.144928 0.434783 0.57971 1.014493 spline
	blendlayer "g_Tenements_Look_Out_Window_Respond_bloopSpine" 0.144928 0.434783 0.57971 1.014493 spline
	addlayer "g_Tenements_Look_Out_Window_Respond_bapexDelta"
	addlayer "g_Tenements_Look_Out_Window_Respond_baccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_scan_IDapexArms" {
	"male_gestures_anims\g_scan_IDapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_scan_IDapexSpine" {
	"male_gestures_anims\g_scan_IDapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_scan_IDapexDelta" {
	"male_gestures_anims\g_scan_IDapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_scan_IDloopArms" {
	"male_gestures_anims\g_scan_IDloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_scan_IDloopSpine" {
	"male_gestures_anims\g_scan_IDloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_scan_IDaccentDelta" {
	"male_gestures_anims\g_scan_IDaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_scan_ID" {
	"male_gestures_anims\g_scan_ID.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "8"
			"accent" "20"
			"loop" "60"
			"end" "65"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "g_scan_IDapexArms" 0 0.125 0.125 0.9375 xfade spline
	blendlayer "g_scan_IDapexSpine" 0 0.125 0.125 0.9375 spline
	blendlayer "g_scan_IDloopArms" 0.125 0.9375 1.015625 1.015625 spline
	blendlayer "g_scan_IDloopSpine" 0.125 0.9375 1.015625 1.015625 spline
	addlayer "g_scan_IDapexDelta"
	addlayer "g_scan_IDaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01apexArms" {
	"male_gestures_anims\g_plead_01apexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_plead_01apexSpine" {
	"male_gestures_anims\g_plead_01apexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01apexDelta" {
	"male_gestures_anims\g_plead_01apexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01loopArms" {
	"male_gestures_anims\g_plead_01loopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_plead_01loopSpine" {
	"male_gestures_anims\g_plead_01loopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01accentDelta" {
	"male_gestures_anims\g_plead_01accentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01" {
	"male_gestures_anims\g_plead_01.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "16"
			"accent" "26"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "26"
	}
}
	blendlayer "g_plead_01apexArms" 0 0.271186 0.271186 0.677966 xfade spline
	blendlayer "g_plead_01apexSpine" 0 0.271186 0.271186 0.677966 spline
	blendlayer "g_plead_01loopArms" 0.271186 0.677966 0.847458 1.016949 spline
	blendlayer "g_plead_01loopSpine" 0.271186 0.677966 0.847458 1.016949 spline
	addlayer "g_plead_01apexDelta"
	addlayer "g_plead_01accentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medpuct_midapexArms" {
	"male_gestures_anims\G_medpuct_midapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_medpuct_midapexSpine" {
	"male_gestures_anims\G_medpuct_midapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medpuct_midapexDelta" {
	"male_gestures_anims\G_medpuct_midapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medpuct_midloopArms" {
	"male_gestures_anims\G_medpuct_midloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_medpuct_midloopSpine" {
	"male_gestures_anims\G_medpuct_midloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medpuct_midaccentDelta" {
	"male_gestures_anims\G_medpuct_midaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medpuct_mid" {
	"male_gestures_anims\G_medpuct_mid.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "8"
			"accent" "15"
			"loop" "23"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "15"
	}
}
	blendlayer "G_medpuct_midapexArms" 0 0.135593 0.135593 0.38983 xfade spline
	blendlayer "G_medpuct_midapexSpine" 0 0.135593 0.135593 0.38983 spline
	blendlayer "G_medpuct_midloopArms" 0.135593 0.38983 0.508475 1.016949 spline
	blendlayer "G_medpuct_midloopSpine" 0.135593 0.38983 0.508475 1.016949 spline
	addlayer "G_medpuct_midapexDelta"
	addlayer "G_medpuct_midaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_smallapexArms" {
	"male_gestures_anims\G_noway_smallapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_noway_smallapexSpine" {
	"male_gestures_anims\G_noway_smallapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_smallapexDelta" {
	"male_gestures_anims\G_noway_smallapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_smallloopArms" {
	"male_gestures_anims\G_noway_smallloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_noway_smallloopSpine" {
	"male_gestures_anims\G_noway_smallloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_smallaccentDelta" {
	"male_gestures_anims\G_noway_smallaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_small" {
	"male_gestures_anims\G_noway_small.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "19"
			"loop" "30"
			"end" "38"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "G_noway_smallapexArms" 0 0.149254 0.149254 0.447761 xfade spline
	blendlayer "G_noway_smallapexSpine" 0 0.149254 0.149254 0.447761 spline
	blendlayer "G_noway_smallloopArms" 0.149254 0.447761 0.567164 1.014925 spline
	blendlayer "G_noway_smallloopSpine" 0.149254 0.447761 0.567164 1.014925 spline
	addlayer "G_noway_smallapexDelta"
	addlayer "G_noway_smallaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_bigapexArms" {
	"male_gestures_anims\G_noway_bigapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_noway_bigapexSpine" {
	"male_gestures_anims\G_noway_bigapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_bigapexDelta" {
	"male_gestures_anims\G_noway_bigapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_bigloopArms" {
	"male_gestures_anims\G_noway_bigloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_noway_bigloopSpine" {
	"male_gestures_anims\G_noway_bigloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_bigaccentDelta" {
	"male_gestures_anims\G_noway_bigaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_noway_big" {
	"male_gestures_anims\G_noway_big.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "18"
			"loop" "28"
			"end" "38"
		}
		"entrytag" "apex"
		"thumbnail_frame" "18"
	}
}
	blendlayer "G_noway_bigapexArms" 0 0.149254 0.149254 0.41791 xfade spline
	blendlayer "G_noway_bigapexSpine" 0 0.149254 0.149254 0.41791 spline
	blendlayer "G_noway_bigloopArms" 0.149254 0.41791 0.567164 1.014925 spline
	blendlayer "G_noway_bigloopSpine" 0.149254 0.41791 0.567164 1.014925 spline
	addlayer "G_noway_bigapexDelta"
	addlayer "G_noway_bigaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_shrugapexArms" {
	"male_gestures_anims\G_shrugapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_shrugapexSpine" {
	"male_gestures_anims\G_shrugapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_shrugapexDelta" {
	"male_gestures_anims\G_shrugapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_shrugloopArms" {
	"male_gestures_anims\G_shrugloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_shrugloopSpine" {
	"male_gestures_anims\G_shrugloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_shrugaccentDelta" {
	"male_gestures_anims\G_shrugaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_shrug" {
	"male_gestures_anims\G_shrug.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "8"
			"accent" "12"
			"loop" "16"
			"end" "22"
		}
		"entrytag" "apex"
		"thumbnail_frame" "12"
	}
}
	blendlayer "G_shrugapexArms" 0 0.156863 0.156863 0.313726 xfade spline
	blendlayer "G_shrugapexSpine" 0 0.156863 0.156863 0.313726 spline
	blendlayer "G_shrugloopArms" 0.156863 0.313726 0.431373 1.019608 spline
	blendlayer "G_shrugloopSpine" 0.156863 0.313726 0.431373 1.019608 spline
	addlayer "G_shrugapexDelta"
	addlayer "G_shrugaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medurgent_midapexArms" {
	"male_gestures_anims\G_medurgent_midapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_medurgent_midapexSpine" {
	"male_gestures_anims\G_medurgent_midapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medurgent_midapexDelta" {
	"male_gestures_anims\G_medurgent_midapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medurgent_midloopArms" {
	"male_gestures_anims\G_medurgent_midloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_medurgent_midloopSpine" {
	"male_gestures_anims\G_medurgent_midloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medurgent_midaccentDelta" {
	"male_gestures_anims\G_medurgent_midaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_medurgent_mid" {
	"male_gestures_anims\G_medurgent_mid.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "9"
			"accent" "15"
			"loop" "24"
			"end" "32"
		}
		"entrytag" "apex"
		"thumbnail_frame" "15"
	}
}
	blendlayer "G_medurgent_midapexArms" 0 0.147541 0.147541 0.393443 xfade spline
	blendlayer "G_medurgent_midapexSpine" 0 0.147541 0.147541 0.393443 spline
	blendlayer "G_medurgent_midloopArms" 0.147541 0.393443 0.52459 1.016393 spline
	blendlayer "G_medurgent_midloopSpine" 0.147541 0.393443 0.52459 1.016393 spline
	addlayer "G_medurgent_midapexDelta"
	addlayer "G_medurgent_midaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_whatapexArms" {
	"male_gestures_anims\G_whatapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_whatapexSpine" {
	"male_gestures_anims\G_whatapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_whatapexDelta" {
	"male_gestures_anims\G_whatapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_whatloopArms" {
	"male_gestures_anims\G_whatloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_whatloopSpine" {
	"male_gestures_anims\G_whatloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_whataccentDelta" {
	"male_gestures_anims\G_whataccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_what" {
	"male_gestures_anims\G_what.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "8"
			"accent" "12"
			"loop" "22"
			"end" "32"
		}
		"entrytag" "apex"
		"thumbnail_frame" "12"
	}
}
	blendlayer "G_whatapexArms" 0 0.131148 0.131148 0.360656 xfade spline
	blendlayer "G_whatapexSpine" 0 0.131148 0.131148 0.360656 spline
	blendlayer "G_whatloopArms" 0.131148 0.360656 0.52459 1.016393 spline
	blendlayer "G_whatloopSpine" 0.131148 0.360656 0.52459 1.016393 spline
	addlayer "G_whatapexDelta"
	addlayer "G_whataccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookapexArms" {
	"male_gestures_anims\G_lookapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_lookapexSpine" {
	"male_gestures_anims\G_lookapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookapexDelta" {
	"male_gestures_anims\G_lookapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookloopArms" {
	"male_gestures_anims\G_lookloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_lookloopSpine" {
	"male_gestures_anims\G_lookloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookaccentDelta" {
	"male_gestures_anims\G_lookaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_look" {
	"male_gestures_anims\G_look.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "15"
			"loop" "20"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "15"
	}
}
	blendlayer "G_lookapexArms" 0 0.169492 0.169492 0.338983 xfade spline
	blendlayer "G_lookapexSpine" 0 0.169492 0.169492 0.338983 spline
	blendlayer "G_lookloopArms" 0.169492 0.338983 0.508475 1.016949 spline
	blendlayer "G_lookloopSpine" 0.169492 0.338983 0.508475 1.016949 spline
	addlayer "G_lookapexDelta"
	addlayer "G_lookaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_look_smallapexArms" {
	"male_gestures_anims\G_look_smallapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_look_smallapexSpine" {
	"male_gestures_anims\G_look_smallapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_look_smallapexDelta" {
	"male_gestures_anims\G_look_smallapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_look_smallloopArms" {
	"male_gestures_anims\G_look_smallloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_look_smallloopSpine" {
	"male_gestures_anims\G_look_smallloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_look_smallaccentDelta" {
	"male_gestures_anims\G_look_smallaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_look_small" {
	"male_gestures_anims\G_look_small.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "14"
			"accent" "20"
			"loop" "26"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "G_look_smallapexArms" 0 0.318182 0.318182 0.590909 xfade spline
	blendlayer "G_look_smallapexSpine" 0 0.318182 0.318182 0.590909 spline
	blendlayer "G_look_smallloopArms" 0.318182 0.590909 0.681818 1.022727 spline
	blendlayer "G_look_smallloopSpine" 0.318182 0.590909 0.681818 1.022727 spline
	addlayer "G_look_smallapexDelta"
	addlayer "G_look_smallaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookatthisapexArms" {
	"male_gestures_anims\G_lookatthisapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_lookatthisapexSpine" {
	"male_gestures_anims\G_lookatthisapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookatthisapexDelta" {
	"male_gestures_anims\G_lookatthisapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookatthisloopArms" {
	"male_gestures_anims\G_lookatthisloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_lookatthisloopSpine" {
	"male_gestures_anims\G_lookatthisloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookatthisaccentDelta" {
	"male_gestures_anims\G_lookatthisaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lookatthis" {
	"male_gestures_anims\G_lookatthis.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "7"
			"accent" "16"
			"loop" "18"
			"end" "18"
		}
		"entrytag" "apex"
		"thumbnail_frame" "16"
	}
}
	blendlayer "G_lookatthisapexArms" 0 0.179487 0.179487 0.461538 xfade spline
	blendlayer "G_lookatthisapexSpine" 0 0.179487 0.179487 0.461538 spline
	blendlayer "G_lookatthisloopArms" 0.179487 0.461538 0.461538 1.025641 spline
	blendlayer "G_lookatthisloopSpine" 0.179487 0.461538 0.461538 1.025641 spline
	addlayer "G_lookatthisapexDelta"
	addlayer "G_lookatthisaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandrollapexArms" {
	"male_gestures_anims\G_righthandrollapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandrollapexSpine" {
	"male_gestures_anims\G_righthandrollapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandrollapexDelta" {
	"male_gestures_anims\G_righthandrollapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandrollloopArms" {
	"male_gestures_anims\G_righthandrollloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandrollloopSpine" {
	"male_gestures_anims\G_righthandrollloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandrollaccentDelta" {
	"male_gestures_anims\G_righthandrollaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandroll" {
	"male_gestures_anims\G_righthandroll.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "22"
			"accent" "31"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "31"
	}
}
	blendlayer "G_righthandrollapexArms" 0 0.278481 0.278481 0.506329 xfade spline
	blendlayer "G_righthandrollapexSpine" 0 0.278481 0.278481 0.506329 spline
	blendlayer "G_righthandrollloopArms" 0.278481 0.506329 0.632911 1.012658 spline
	blendlayer "G_righthandrollloopSpine" 0.278481 0.506329 0.632911 1.012658 spline
	addlayer "G_righthandrollapexDelta"
	addlayer "G_righthandrollaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandheavyapexArms" {
	"male_gestures_anims\G_righthandheavyapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandheavyapexSpine" {
	"male_gestures_anims\G_righthandheavyapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandheavyapexDelta" {
	"male_gestures_anims\G_righthandheavyapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandheavyloopArms" {
	"male_gestures_anims\G_righthandheavyloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandheavyloopSpine" {
	"male_gestures_anims\G_righthandheavyloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandheavyaccentDelta" {
	"male_gestures_anims\G_righthandheavyaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandheavy" {
	"male_gestures_anims\G_righthandheavy.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"accent" "28"
			"loop" "35"
			"end" "42"
		}
		"entrytag" "apex"
		"thumbnail_frame" "28"
	}
}
	blendlayer "G_righthandheavyapexArms" 0 0.217391 0.217391 0.507246 xfade spline
	blendlayer "G_righthandheavyapexSpine" 0 0.217391 0.217391 0.507246 spline
	blendlayer "G_righthandheavyloopArms" 0.217391 0.507246 0.608696 1.014493 spline
	blendlayer "G_righthandheavyloopSpine" 0.217391 0.507246 0.608696 1.014493 spline
	addlayer "G_righthandheavyapexDelta"
	addlayer "G_righthandheavyaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandpointapexArms" {
	"male_gestures_anims\G_righthandpointapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandpointapexSpine" {
	"male_gestures_anims\G_righthandpointapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandpointapexDelta" {
	"male_gestures_anims\G_righthandpointapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandpointloopArms" {
	"male_gestures_anims\G_righthandpointloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandpointloopSpine" {
	"male_gestures_anims\G_righthandpointloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandpointaccentDelta" {
	"male_gestures_anims\G_righthandpointaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandpoint" {
	"male_gestures_anims\G_righthandpoint.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "14"
			"accent" "30"
			"loop" "32"
			"end" "46"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "G_righthandpointapexArms" 0 0.202899 0.202899 0.463768 xfade spline
	blendlayer "G_righthandpointapexSpine" 0 0.202899 0.202899 0.463768 spline
	blendlayer "G_righthandpointloopArms" 0.202899 0.463768 0.666667 1.014493 spline
	blendlayer "G_righthandpointloopSpine" 0.202899 0.463768 0.666667 1.014493 spline
	addlayer "G_righthandpointapexDelta"
	addlayer "G_righthandpointaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lefthandmotionapexArms" {
	"male_gestures_anims\G_lefthandmotionapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_lefthandmotionapexSpine" {
	"male_gestures_anims\G_lefthandmotionapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lefthandmotionapexDelta" {
	"male_gestures_anims\G_lefthandmotionapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lefthandmotionloopArms" {
	"male_gestures_anims\G_lefthandmotionloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_lefthandmotionloopSpine" {
	"male_gestures_anims\G_lefthandmotionloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lefthandmotionaccentDelta" {
	"male_gestures_anims\G_lefthandmotionaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_lefthandmotion" {
	"male_gestures_anims\G_lefthandmotion.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "13"
			"accent" "28"
			"loop" "30"
			"end" "42"
		}
		"entrytag" "apex"
		"thumbnail_frame" "28"
	}
}
	blendlayer "G_lefthandmotionapexArms" 0 0.220339 0.220339 0.508475 xfade spline
	blendlayer "G_lefthandmotionapexSpine" 0 0.220339 0.220339 0.508475 spline
	blendlayer "G_lefthandmotionloopArms" 0.220339 0.508475 0.711864 1.016949 spline
	blendlayer "G_lefthandmotionloopSpine" 0.220339 0.508475 0.711864 1.016949 spline
	addlayer "G_lefthandmotionapexDelta"
	addlayer "G_lefthandmotionaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandmotionapexArms" {
	"male_gestures_anims\G_righthandmotionapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandmotionapexSpine" {
	"male_gestures_anims\G_righthandmotionapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandmotionapexDelta" {
	"male_gestures_anims\G_righthandmotionapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandmotionloopArms" {
	"male_gestures_anims\G_righthandmotionloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_righthandmotionloopSpine" {
	"male_gestures_anims\G_righthandmotionloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandmotionaccentDelta" {
	"male_gestures_anims\G_righthandmotionaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_righthandmotion" {
	"male_gestures_anims\G_righthandmotion.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "14"
			"accent" "30"
			"loop" "40"
			"end" "45"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "G_righthandmotionapexArms" 0 0.237288 0.237288 0.677966 xfade spline
	blendlayer "G_righthandmotionapexSpine" 0 0.237288 0.237288 0.677966 spline
	blendlayer "G_righthandmotionloopArms" 0.237288 0.677966 0.762712 1.016949 spline
	blendlayer "G_righthandmotionloopSpine" 0.237288 0.677966 0.762712 1.016949 spline
	addlayer "G_righthandmotionapexDelta"
	addlayer "G_righthandmotionaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_puncuateapexArms" {
	"male_gestures_anims\G_puncuateapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_puncuateapexSpine" {
	"male_gestures_anims\G_puncuateapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_puncuateapexDelta" {
	"male_gestures_anims\G_puncuateapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_puncuateloopArms" {
	"male_gestures_anims\G_puncuateloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "G_puncuateloopSpine" {
	"male_gestures_anims\G_puncuateloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_puncuateaccentDelta" {
	"male_gestures_anims\G_puncuateaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "G_puncuate" {
	"male_gestures_anims\G_puncuate.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "20"
			"loop" "27"
			"end" "35"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "G_puncuateapexArms" 0 0.244898 0.244898 0.55102 xfade spline
	blendlayer "G_puncuateapexSpine" 0 0.244898 0.244898 0.55102 spline
	blendlayer "G_puncuateloopArms" 0.244898 0.55102 0.714286 1.020408 spline
	blendlayer "G_puncuateloopSpine" 0.244898 0.55102 0.714286 1.020408 spline
	addlayer "G_puncuateapexDelta"
	addlayer "G_puncuateaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButtonapexArms" {
	"male_gestures_anims\GestureButtonapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "GestureButtonapexSpine" {
	"male_gestures_anims\GestureButtonapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButtonapexDelta" {
	"male_gestures_anims\GestureButtonapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButtonloopArms" {
	"male_gestures_anims\GestureButtonloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "GestureButtonloopSpine" {
	"male_gestures_anims\GestureButtonloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButtonaccentDelta" {
	"male_gestures_anims\GestureButtonaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButton" {
	"male_gestures_anims\GestureButton.smd"
	{ event AE_CL_PLAYSOUND 21 "NPC_Alyx.PushButton1" }
	{ event AE_CL_PLAYSOUND 28 "NPC_Alyx.PushButton1" }
	{ event AE_CL_PLAYSOUND 21 "NPC_Alyx.PushButton1" }
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "14"
			"accent" "57"
			"loop" "58"
			"end" "59"
		}
		"entrytag" "apex"
		"thumbnail_frame" "57"
	}
}
	blendlayer "GestureButtonapexArms" 0 0.21875 0.21875 0.90625 xfade spline
	blendlayer "GestureButtonapexSpine" 0 0.21875 0.21875 0.90625 spline
	blendlayer "GestureButtonloopArms" 0.21875 0.90625 0.921875 1.015625 spline
	blendlayer "GestureButtonloopSpine" 0.21875 0.90625 0.921875 1.015625 spline
	addlayer "GestureButtonapexDelta"
	addlayer "GestureButtonaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_SMG1_StopapexArms" {
	"male_gestures_anims\g_SMG1_StopapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_SMG1_StopapexSpine" {
	"male_gestures_anims\g_SMG1_StopapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_SMG1_StopapexDelta" {
	"male_gestures_anims\g_SMG1_StopapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_SMG1_StoploopArms" {
	"male_gestures_anims\g_SMG1_StoploopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_SMG1_StoploopSpine" {
	"male_gestures_anims\g_SMG1_StoploopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_SMG1_StopaccentDelta" {
	"male_gestures_anims\g_SMG1_StopaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_SMG1_Stop" {
	"male_gestures_anims\g_SMG1_Stop.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "13"
			"accent" "18"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "18"
	}
}
	blendlayer "g_SMG1_StopapexArms" 0 0.175676 0.175676 0.540541 xfade spline
	blendlayer "g_SMG1_StopapexSpine" 0 0.175676 0.175676 0.540541 spline
	blendlayer "g_SMG1_StoploopArms" 0.175676 0.540541 0.675676 1.013514 spline
	blendlayer "g_SMG1_StoploopSpine" 0.175676 0.540541 0.675676 1.013514 spline
	addlayer "g_SMG1_StopapexDelta"
	addlayer "g_SMG1_StopaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_staybackdefault" {
	"male_gestures_anims\g_antman_staybackdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "g_antman_staybackapexDelta" {
	"male_gestures_anims\g_antman_staybackapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_staybackloopDelta" {
	"male_gestures_anims\g_antman_staybackloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_stayback" {
	"male_gestures_anims\g_antman_stayback.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "44"
			"loop" "48"
			"end" "58"
		}
		"entrytag" "apex"
		"thumbnail_frame" "44"
	}
}
	addlayer "g_antman_staybackapexDelta"
	blendlayer "g_antman_staybackloopDelta" 0 0.676056 0.816901 1.014084 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_dontmovedefault" {
	"male_gestures_anims\g_antman_dontmovedefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "g_antman_dontmoveapexDelta" {
	"male_gestures_anims\g_antman_dontmoveapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_dontmoveloopDelta" {
	"male_gestures_anims\g_antman_dontmoveloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_dontmove" {
	"male_gestures_anims\g_antman_dontmove.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "45"
			"loop" "50"
			"end" "58"
		}
		"entrytag" "apex"
		"thumbnail_frame" "45"
	}
}
	addlayer "g_antman_dontmoveapexDelta"
	blendlayer "g_antman_dontmoveloopDelta" 0 0.724638 0.84058 1.014493 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_punctuatedefault" {
	"male_gestures_anims\g_antman_punctuatedefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "g_antman_punctuateapexDelta" {
	"male_gestures_anims\g_antman_punctuateapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_punctuateloopDelta" {
	"male_gestures_anims\g_antman_punctuateloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_antman_punctuate" {
	"male_gestures_anims\g_antman_punctuate.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"extreme" "25"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "25"
	}
}
	addlayer "g_antman_punctuateapexDelta"
	blendlayer "g_antman_punctuateloopDelta" 0 0.555556 0.740741 1.018519 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistapexArms" {
	"male_gestures_anims\g_fistapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_fistapexSpine" {
	"male_gestures_anims\g_fistapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistapexDelta" {
	"male_gestures_anims\g_fistapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistloopArms" {
	"male_gestures_anims\g_fistloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_fistloopSpine" {
	"male_gestures_anims\g_fistloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistaccentDelta" {
	"male_gestures_anims\g_fistaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist" {
	"male_gestures_anims\g_fist.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "17"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_fistapexArms" 0 0.173913 0.173913 0.434783 xfade spline
	blendlayer "g_fistapexSpine" 0 0.173913 0.173913 0.434783 spline
	blendlayer "g_fistloopArms" 0.173913 0.434783 0.57971 1.014493 spline
	blendlayer "g_fistloopSpine" 0.173913 0.434783 0.57971 1.014493 spline
	addlayer "g_fistapexDelta"
	addlayer "g_fistaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_LapexArms" {
	"male_gestures_anims\g_fist_LapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_fist_LapexSpine" {
	"male_gestures_anims\g_fist_LapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_LapexDelta" {
	"male_gestures_anims\g_fist_LapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_LloopArms" {
	"male_gestures_anims\g_fist_LloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_fist_LloopSpine" {
	"male_gestures_anims\g_fist_LloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_LaccentDelta" {
	"male_gestures_anims\g_fist_LaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_L" {
	"male_gestures_anims\g_fist_L.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "17"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_fist_LapexArms" 0 0.173913 0.173913 0.434783 xfade spline
	blendlayer "g_fist_LapexSpine" 0 0.173913 0.173913 0.434783 spline
	blendlayer "g_fist_LloopArms" 0.173913 0.434783 0.57971 1.014493 spline
	blendlayer "g_fist_LloopSpine" 0.173913 0.434783 0.57971 1.014493 spline
	addlayer "g_fist_LapexDelta"
	addlayer "g_fist_LaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_swing_acrossapexArms" {
	"male_gestures_anims\g_fist_swing_acrossapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_fist_swing_acrossapexSpine" {
	"male_gestures_anims\g_fist_swing_acrossapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_swing_acrossapexDelta" {
	"male_gestures_anims\g_fist_swing_acrossapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_swing_acrossloopArms" {
	"male_gestures_anims\g_fist_swing_acrossloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_fist_swing_acrossloopSpine" {
	"male_gestures_anims\g_fist_swing_acrossloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_swing_acrossaccentDelta" {
	"male_gestures_anims\g_fist_swing_acrossaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_swing_across" {
	"male_gestures_anims\g_fist_swing_across.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "17"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_fist_swing_acrossapexArms" 0 0.173913 0.173913 0.434783 xfade spline
	blendlayer "g_fist_swing_acrossapexSpine" 0 0.173913 0.173913 0.434783 spline
	blendlayer "g_fist_swing_acrossloopArms" 0.173913 0.434783 0.57971 1.014493 spline
	blendlayer "g_fist_swing_acrossloopSpine" 0.173913 0.434783 0.57971 1.014493 spline
	addlayer "g_fist_swing_acrossapexDelta"
	addlayer "g_fist_swing_acrossaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swingapexArms" {
	"male_gestures_anims\g_point_swingapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_point_swingapexSpine" {
	"male_gestures_anims\g_point_swingapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swingapexDelta" {
	"male_gestures_anims\g_point_swingapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swingloopArms" {
	"male_gestures_anims\g_point_swingloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_point_swingloopSpine" {
	"male_gestures_anims\g_point_swingloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swingaccentDelta" {
	"male_gestures_anims\g_point_swingaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swing" {
	"male_gestures_anims\g_point_swing.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "17"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_point_swingapexArms" 0 0.173913 0.173913 0.434783 xfade spline
	blendlayer "g_point_swingapexSpine" 0 0.173913 0.173913 0.434783 spline
	blendlayer "g_point_swingloopArms" 0.173913 0.434783 0.57971 1.014493 spline
	blendlayer "g_point_swingloopSpine" 0.173913 0.434783 0.57971 1.014493 spline
	addlayer "g_point_swingapexDelta"
	addlayer "g_point_swingaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swing_acrossapexArms" {
	"male_gestures_anims\g_point_swing_acrossapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_point_swing_acrossapexSpine" {
	"male_gestures_anims\g_point_swing_acrossapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swing_acrossapexDelta" {
	"male_gestures_anims\g_point_swing_acrossapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swing_acrossloopArms" {
	"male_gestures_anims\g_point_swing_acrossloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_point_swing_acrossloopSpine" {
	"male_gestures_anims\g_point_swing_acrossloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swing_acrossaccentDelta" {
	"male_gestures_anims\g_point_swing_acrossaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_swing_across" {
	"male_gestures_anims\g_point_swing_across.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "24"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "24"
	}
}
	blendlayer "g_point_swing_acrossapexArms" 0 0.173913 0.173913 0.434783 xfade spline
	blendlayer "g_point_swing_acrossapexSpine" 0 0.173913 0.173913 0.434783 spline
	blendlayer "g_point_swing_acrossloopArms" 0.173913 0.434783 0.57971 1.014493 spline
	blendlayer "g_point_swing_acrossloopSpine" 0.173913 0.434783 0.57971 1.014493 spline
	addlayer "g_point_swing_acrossapexDelta"
	addlayer "g_point_swing_acrossaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_mid_relaxed_fist_accentapexArms" {
	"male_gestures_anims\g_mid_relaxed_fist_accentapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_mid_relaxed_fist_accentapexSpine" {
	"male_gestures_anims\g_mid_relaxed_fist_accentapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_mid_relaxed_fist_accentapexDelta" {
	"male_gestures_anims\g_mid_relaxed_fist_accentapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_mid_relaxed_fist_accentloopArms" {
	"male_gestures_anims\g_mid_relaxed_fist_accentloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_mid_relaxed_fist_accentloopSpine" {
	"male_gestures_anims\g_mid_relaxed_fist_accentloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_mid_relaxed_fist_accentaccentDelta" {
	"male_gestures_anims\g_mid_relaxed_fist_accentaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_mid_relaxed_fist_accent" {
	"male_gestures_anims\g_mid_relaxed_fist_accent.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "16"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "16"
	}
}
	blendlayer "g_mid_relaxed_fist_accentapexArms" 0 0.173913 0.173913 0.434783 xfade spline
	blendlayer "g_mid_relaxed_fist_accentapexSpine" 0 0.173913 0.173913 0.434783 spline
	blendlayer "g_mid_relaxed_fist_accentloopArms" 0.173913 0.434783 0.57971 1.014493 spline
	blendlayer "g_mid_relaxed_fist_accentloopSpine" 0.173913 0.434783 0.57971 1.014493 spline
	addlayer "g_mid_relaxed_fist_accentapexDelta"
	addlayer "g_mid_relaxed_fist_accentaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_presentapexArms" {
	"male_gestures_anims\g_presentapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_presentapexSpine" {
	"male_gestures_anims\g_presentapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_presentapexDelta" {
	"male_gestures_anims\g_presentapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_presentloopArms" {
	"male_gestures_anims\g_presentloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_presentloopSpine" {
	"male_gestures_anims\g_presentloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_presentaccentDelta" {
	"male_gestures_anims\g_presentaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_present" {
	"male_gestures_anims\g_present.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"accent" "37"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "37"
	}
}
	blendlayer "g_presentapexArms" 0 0.189873 0.189873 0.506329 xfade spline
	blendlayer "g_presentapexSpine" 0 0.189873 0.189873 0.506329 spline
	blendlayer "g_presentloopArms" 0.189873 0.506329 0.632911 1.012658 spline
	blendlayer "g_presentloopSpine" 0.189873 0.506329 0.632911 1.012658 spline
	addlayer "g_presentapexDelta"
	addlayer "g_presentaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_Kneel_CallapexArms" {
	"male_gestures_anims\g_d2_coast03_Kneel_CallapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_d2_coast03_Kneel_CallapexSpine" {
	"male_gestures_anims\g_d2_coast03_Kneel_CallapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_Kneel_CallapexDelta" {
	"male_gestures_anims\g_d2_coast03_Kneel_CallapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_Kneel_CallloopArms" {
	"male_gestures_anims\g_d2_coast03_Kneel_CallloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_d2_coast03_Kneel_CallloopSpine" {
	"male_gestures_anims\g_d2_coast03_Kneel_CallloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_Kneel_CallaccentDelta" {
	"male_gestures_anims\g_d2_coast03_Kneel_CallaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_Kneel_Call" {
	"male_gestures_anims\g_d2_coast03_Kneel_Call.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"accent" "78"
			"loop" "79"
			"end" "80"
		}
		"entrytag" "apex"
		"thumbnail_frame" "78"
	}
}
	blendlayer "g_d2_coast03_Kneel_CallapexArms" 0 0.05618 0.05618 0.88764 xfade spline
	blendlayer "g_d2_coast03_Kneel_CallapexSpine" 0 0.05618 0.05618 0.88764 spline
	blendlayer "g_d2_coast03_Kneel_CallloopArms" 0.05618 0.88764 0.898876 1.011236 spline
	blendlayer "g_d2_coast03_Kneel_CallloopSpine" 0.05618 0.88764 0.898876 1.011236 spline
	addlayer "g_d2_coast03_Kneel_CallapexDelta"
	addlayer "g_d2_coast03_Kneel_CallaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle01apexArms" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01apexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_d2_coast03_PostBattle_Idle01apexSpine" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01apexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle01apexDelta" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01apexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle01loopArms" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01loopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_d2_coast03_PostBattle_Idle01loopSpine" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01loopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle01accentDelta" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01accentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle01" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle01.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "29"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "29"
	}
}
	blendlayer "g_d2_coast03_PostBattle_Idle01apexArms" 0 0.144928 0.144928 0.434783 xfade spline
	blendlayer "g_d2_coast03_PostBattle_Idle01apexSpine" 0 0.144928 0.144928 0.434783 spline
	blendlayer "g_d2_coast03_PostBattle_Idle01loopArms" 0.144928 0.434783 0.57971 1.014493 spline
	blendlayer "g_d2_coast03_PostBattle_Idle01loopSpine" 0.144928 0.434783 0.57971 1.014493 spline
	addlayer "g_d2_coast03_PostBattle_Idle01apexDelta"
	addlayer "g_d2_coast03_PostBattle_Idle01accentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle02apexArms" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02apexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_d2_coast03_PostBattle_Idle02apexSpine" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02apexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle02apexDelta" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02apexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle02loopArms" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02loopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_d2_coast03_PostBattle_Idle02loopSpine" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02loopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle02accentDelta" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02accentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_d2_coast03_PostBattle_Idle02" {
	"male_gestures_anims\g_d2_coast03_PostBattle_Idle02.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "29"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "29"
	}
}
	blendlayer "g_d2_coast03_PostBattle_Idle02apexArms" 0 0.144928 0.144928 0.434783 xfade spline
	blendlayer "g_d2_coast03_PostBattle_Idle02apexSpine" 0 0.144928 0.144928 0.434783 spline
	blendlayer "g_d2_coast03_PostBattle_Idle02loopArms" 0.144928 0.434783 0.57971 1.014493 spline
	blendlayer "g_d2_coast03_PostBattle_Idle02loopSpine" 0.144928 0.434783 0.57971 1.014493 spline
	addlayer "g_d2_coast03_PostBattle_Idle02apexDelta"
	addlayer "g_d2_coast03_PostBattle_Idle02accentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Leon_Lean_Table_Map_RespondapexArms" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_RespondapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Leon_Lean_Table_Map_RespondapexSpine" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_RespondapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Leon_Lean_Table_Map_RespondapexDelta" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_RespondapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Leon_Lean_Table_Map_RespondloopArms" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_RespondloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_Leon_Lean_Table_Map_RespondloopSpine" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_RespondloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Leon_Lean_Table_Map_RespondaccentDelta" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_RespondaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Leon_Lean_Table_Map_Respond" {
	"male_gestures_anims\g_Leon_Lean_Table_Map_Respond.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "20"
			"loop" "35"
			"end" "45"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "g_Leon_Lean_Table_Map_RespondapexArms" 0 0.169492 0.169492 0.59322 xfade spline
	blendlayer "g_Leon_Lean_Table_Map_RespondapexSpine" 0 0.169492 0.169492 0.59322 spline
	blendlayer "g_Leon_Lean_Table_Map_RespondloopArms" 0.169492 0.59322 0.762712 1.016949 spline
	blendlayer "g_Leon_Lean_Table_Map_RespondloopSpine" 0.169492 0.59322 0.762712 1.016949 spline
	addlayer "g_Leon_Lean_Table_Map_RespondapexDelta"
	addlayer "g_Leon_Lean_Table_Map_RespondaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_LeftapexArms" {
	"male_gestures_anims\g_OverHere_LeftapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_OverHere_LeftapexSpine" {
	"male_gestures_anims\g_OverHere_LeftapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_LeftapexDelta" {
	"male_gestures_anims\g_OverHere_LeftapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_LeftloopArms" {
	"male_gestures_anims\g_OverHere_LeftloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_OverHere_LeftloopSpine" {
	"male_gestures_anims\g_OverHere_LeftloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_LeftaccentDelta" {
	"male_gestures_anims\g_OverHere_LeftaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_Left" {
	"male_gestures_anims\g_OverHere_Left.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	blendlayer "g_OverHere_LeftapexArms" 0 0.185185 0.185185 0.796296 xfade spline
	blendlayer "g_OverHere_LeftapexSpine" 0 0.185185 0.185185 0.796296 spline
	blendlayer "g_OverHere_LeftloopArms" 0.185185 0.796296 0.814815 1.018519 spline
	blendlayer "g_OverHere_LeftloopSpine" 0.185185 0.796296 0.814815 1.018519 spline
	addlayer "g_OverHere_LeftapexDelta"
	addlayer "g_OverHere_LeftaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_RightapexArms" {
	"male_gestures_anims\g_OverHere_RightapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_OverHere_RightapexSpine" {
	"male_gestures_anims\g_OverHere_RightapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_RightapexDelta" {
	"male_gestures_anims\g_OverHere_RightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_RightloopArms" {
	"male_gestures_anims\g_OverHere_RightloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_OverHere_RightloopSpine" {
	"male_gestures_anims\g_OverHere_RightloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_RightaccentDelta" {
	"male_gestures_anims\g_OverHere_RightaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_OverHere_Right" {
	"male_gestures_anims\g_OverHere_Right.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	blendlayer "g_OverHere_RightapexArms" 0 0.185185 0.185185 0.796296 xfade spline
	blendlayer "g_OverHere_RightapexSpine" 0 0.185185 0.185185 0.796296 spline
	blendlayer "g_OverHere_RightloopArms" 0.185185 0.796296 0.814815 1.018519 spline
	blendlayer "g_OverHere_RightloopSpine" 0.185185 0.796296 0.814815 1.018519 spline
	addlayer "g_OverHere_RightapexDelta"
	addlayer "g_OverHere_RightaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_backapexArms" {
	"male_gestures_anims\g_head_backapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_head_backapexSpine" {
	"male_gestures_anims\g_head_backapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_backapexDelta" {
	"male_gestures_anims\g_head_backapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_backloopArms" {
	"male_gestures_anims\g_head_backloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_head_backloopSpine" {
	"male_gestures_anims\g_head_backloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_backaccentDelta" {
	"male_gestures_anims\g_head_backaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_back" {
	"male_gestures_anims\g_head_back.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	blendlayer "g_head_backapexArms" 0 0.185185 0.185185 0.796296 xfade spline
	blendlayer "g_head_backapexSpine" 0 0.185185 0.185185 0.796296 spline
	blendlayer "g_head_backloopArms" 0.185185 0.796296 0.814815 1.018519 spline
	blendlayer "g_head_backloopSpine" 0.185185 0.796296 0.814815 1.018519 spline
	addlayer "g_head_backapexDelta"
	addlayer "g_head_backaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_forwardapexArms" {
	"male_gestures_anims\g_head_forwardapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_head_forwardapexSpine" {
	"male_gestures_anims\g_head_forwardapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_forwardapexDelta" {
	"male_gestures_anims\g_head_forwardapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_forwardloopArms" {
	"male_gestures_anims\g_head_forwardloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_head_forwardloopSpine" {
	"male_gestures_anims\g_head_forwardloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_forwardaccentDelta" {
	"male_gestures_anims\g_head_forwardaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_head_forward" {
	"male_gestures_anims\g_head_forward.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	blendlayer "g_head_forwardapexArms" 0 0.185185 0.185185 0.796296 xfade spline
	blendlayer "g_head_forwardapexSpine" 0 0.185185 0.185185 0.796296 spline
	blendlayer "g_head_forwardloopArms" 0.185185 0.796296 0.814815 1.018519 spline
	blendlayer "g_head_forwardloopSpine" 0.185185 0.796296 0.814815 1.018519 spline
	addlayer "g_head_forwardapexDelta"
	addlayer "g_head_forwardaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_OverHere_Leftdefault" {
	"male_gestures_anims\b_OverHere_Leftdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "b_OverHere_LeftapexDelta" {
	"male_gestures_anims\b_OverHere_LeftapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_OverHere_LeftloopDelta" {
	"male_gestures_anims\b_OverHere_LeftloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_OverHere_Left" {
	"male_gestures_anims\b_OverHere_Left.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	addlayer "b_OverHere_LeftapexDelta"
	blendlayer "b_OverHere_LeftloopDelta" 0 0.796296 0.814815 1.018519 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_OverHere_Rightdefault" {
	"male_gestures_anims\b_OverHere_Rightdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "b_OverHere_RightapexDelta" {
	"male_gestures_anims\b_OverHere_RightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_OverHere_RightloopDelta" {
	"male_gestures_anims\b_OverHere_RightloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_OverHere_Right" {
	"male_gestures_anims\b_OverHere_Right.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	addlayer "b_OverHere_RightapexDelta"
	blendlayer "b_OverHere_RightloopDelta" 0 0.796296 0.814815 1.018519 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_head_backdefault" {
	"male_gestures_anims\b_head_backdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "b_head_backapexDelta" {
	"male_gestures_anims\b_head_backapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_head_backloopDelta" {
	"male_gestures_anims\b_head_backloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_head_back" {
	"male_gestures_anims\b_head_back.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	addlayer "b_head_backapexDelta"
	blendlayer "b_head_backloopDelta" 0 0.796296 0.814815 1.018519 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_head_forwarddefault" {
	"male_gestures_anims\b_head_forwarddefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "b_head_forwardapexDelta" {
	"male_gestures_anims\b_head_forwardapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_head_forwardloopDelta" {
	"male_gestures_anims\b_head_forwardloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_head_forward" {
	"male_gestures_anims\b_head_forward.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "42"
			"loop" "43"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "42"
	}
}
	addlayer "b_head_forwardapexDelta"
	blendlayer "b_head_forwardloopDelta" 0 0.796296 0.814815 1.018519 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_d2_coast03_PostBattle_Idle02default" {
	"male_gestures_anims\b_d2_coast03_PostBattle_Idle02default.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "b_d2_coast03_PostBattle_Idle02apexDelta" {
	"male_gestures_anims\b_d2_coast03_PostBattle_Idle02apexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_d2_coast03_PostBattle_Idle02loopDelta" {
	"male_gestures_anims\b_d2_coast03_PostBattle_Idle02loopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "b_d2_coast03_PostBattle_Idle02" {
	"male_gestures_anims\b_d2_coast03_PostBattle_Idle02.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "29"
			"loop" "30"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "29"
	}
}
	addlayer "b_d2_coast03_PostBattle_Idle02apexDelta"
	blendlayer "b_d2_coast03_PostBattle_Idle02loopDelta" 0 0.434783 0.57971 1.014493 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_rightdefault" {
	"male_gestures_anims\hg_nod_rightdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_nod_rightapexDelta" {
	"male_gestures_anims\hg_nod_rightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_rightloopDelta" {
	"male_gestures_anims\hg_nod_rightloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_right" {
	"male_gestures_anims\hg_nod_right.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "9"
			"extreme" "18"
			"loop" "22"
			"end" "22"
		}
		"entrytag" "apex"
		"thumbnail_frame" "18"
	}
}
	addlayer "hg_nod_rightapexDelta"
	blendlayer "hg_nod_rightloopDelta" 0 0.564103 0.564103 1.025641 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_leftdefault" {
	"male_gestures_anims\hg_nod_leftdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_nod_leftapexDelta" {
	"male_gestures_anims\hg_nod_leftapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_leftloopDelta" {
	"male_gestures_anims\hg_nod_leftloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_left" {
	"male_gestures_anims\hg_nod_left.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "9"
			"extreme" "18"
			"loop" "22"
			"end" "22"
		}
		"entrytag" "apex"
		"thumbnail_frame" "18"
	}
}
	addlayer "hg_nod_leftapexDelta"
	blendlayer "hg_nod_leftloopDelta" 0 0.564103 0.564103 1.025641 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_puncuate_downdefault" {
	"male_gestures_anims\hg_puncuate_downdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_puncuate_downapexDelta" {
	"male_gestures_anims\hg_puncuate_downapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_puncuate_downloopDelta" {
	"male_gestures_anims\hg_puncuate_downloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_puncuate_down" {
	"male_gestures_anims\hg_puncuate_down.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "16"
			"extreme" "26"
			"loop" "27"
			"end" "27"
		}
		"entrytag" "apex"
		"thumbnail_frame" "26"
	}
}
	addlayer "hg_puncuate_downapexDelta"
	blendlayer "hg_puncuate_downloopDelta" 0 0.55102 0.55102 1.020408 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_headshakedefault" {
	"male_gestures_anims\hg_headshakedefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_headshakeapexDelta" {
	"male_gestures_anims\hg_headshakeapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_headshakeloopDelta" {
	"male_gestures_anims\hg_headshakeloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_headshake" {
	"male_gestures_anims\hg_headshake.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "20"
			"loop" "13"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	addlayer "hg_headshakeapexDelta"
	blendlayer "hg_headshakeloopDelta" 0 0.265306 0.612245 1.020408 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_buttonpush_rifleapexArms" {
	"male_gestures_anims\g_buttonpush_rifleapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_buttonpush_rifleapexSpine" {
	"male_gestures_anims\g_buttonpush_rifleapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_buttonpush_rifleapexDelta" {
	"male_gestures_anims\g_buttonpush_rifleapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_buttonpush_rifleloopArms" {
	"male_gestures_anims\g_buttonpush_rifleloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_buttonpush_rifleloopSpine" {
	"male_gestures_anims\g_buttonpush_rifleloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_buttonpush_rifleaccentDelta" {
	"male_gestures_anims\g_buttonpush_rifleaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_buttonpush_rifle" {
	"male_gestures_anims\g_buttonpush_rifle.smd"
	{ event AE_CL_PLAYSOUND 21 "Buttons.snd27" }
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "14"
			"loop" "36"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "14"
	}
}
	blendlayer "g_buttonpush_rifleapexArms" 0 0.169492 0.169492 0.610169 xfade spline
	blendlayer "g_buttonpush_rifleapexSpine" 0 0.169492 0.169492 0.610169 spline
	blendlayer "g_buttonpush_rifleloopArms" 0.169492 0.610169 0.677966 1.016949 spline
	blendlayer "g_buttonpush_rifleloopSpine" 0.169492 0.610169 0.677966 1.016949 spline
	addlayer "g_buttonpush_rifleapexDelta"
	addlayer "g_buttonpush_rifleaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_drop_meleeweaponapexArms" {
	"male_gestures_anims\g_drop_meleeweaponapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_drop_meleeweaponapexSpine" {
	"male_gestures_anims\g_drop_meleeweaponapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_drop_meleeweaponapexDelta" {
	"male_gestures_anims\g_drop_meleeweaponapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_drop_meleeweaponloopArms" {
	"male_gestures_anims\g_drop_meleeweaponloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_drop_meleeweaponloopSpine" {
	"male_gestures_anims\g_drop_meleeweaponloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_drop_meleeweaponaccentDelta" {
	"male_gestures_anims\g_drop_meleeweaponaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_drop_meleeweapon" {
	"male_gestures_anims\g_drop_meleeweapon.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "28"
			"loop" "40"
			"end" "45"
		}
		"entrytag" "apex"
		"thumbnail_frame" "28"
	}
}
	blendlayer "g_drop_meleeweaponapexArms" 0 0.15625 0.15625 0.625 xfade spline
	blendlayer "g_drop_meleeweaponapexSpine" 0 0.15625 0.15625 0.625 spline
	blendlayer "g_drop_meleeweaponloopArms" 0.15625 0.625 0.703125 1.015625 spline
	blendlayer "g_drop_meleeweaponloopSpine" 0.15625 0.625 0.703125 1.015625 spline
	addlayer "g_drop_meleeweaponapexDelta"
	addlayer "g_drop_meleeweaponaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_righthand_flickapexArms" {
	"male_gestures_anims\g_righthand_flickapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_righthand_flickapexSpine" {
	"male_gestures_anims\g_righthand_flickapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_righthand_flickapexDelta" {
	"male_gestures_anims\g_righthand_flickapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_righthand_flickloopArms" {
	"male_gestures_anims\g_righthand_flickloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_righthand_flickloopSpine" {
	"male_gestures_anims\g_righthand_flickloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_righthand_flickaccentDelta" {
	"male_gestures_anims\g_righthand_flickaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_righthand_flick" {
	"male_gestures_anims\g_righthand_flick.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "17"
			"loop" "25"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_righthand_flickapexArms" 0 0.204082 0.204082 0.510204 xfade spline
	blendlayer "g_righthand_flickapexSpine" 0 0.204082 0.204082 0.510204 spline
	blendlayer "g_righthand_flickloopArms" 0.204082 0.510204 0.612245 1.020408 spline
	blendlayer "g_righthand_flickloopSpine" 0.204082 0.510204 0.612245 1.020408 spline
	addlayer "g_righthand_flickapexDelta"
	addlayer "g_righthand_flickaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accentUpdefault" {
	"male_gestures_anims\bg_accentUpdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_accentUpapexDelta" {
	"male_gestures_anims\bg_accentUpapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accentUploopDelta" {
	"male_gestures_anims\bg_accentUploopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accentUp" {
	"male_gestures_anims\bg_accentUp.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "9"
			"extreme" "22"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "22"
	}
}
	addlayer "bg_accentUpapexDelta"
	blendlayer "bg_accentUploopDelta" 0 0.547945 0.684932 1.013699 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accentFwddefault" {
	"male_gestures_anims\bg_accentFwddefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_accentFwdapexDelta" {
	"male_gestures_anims\bg_accentFwdapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accentFwdloopDelta" {
	"male_gestures_anims\bg_accentFwdloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accentFwd" {
	"male_gestures_anims\bg_accentFwd.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "26"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "26"
	}
}
	addlayer "bg_accentFwdapexDelta"
	blendlayer "bg_accentFwdloopDelta" 0 0.547945 0.684932 1.013699 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accent_leftdefault" {
	"male_gestures_anims\bg_accent_leftdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_accent_leftapexDelta" {
	"male_gestures_anims\bg_accent_leftapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accent_leftloopDelta" {
	"male_gestures_anims\bg_accent_leftloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_accent_left" {
	"male_gestures_anims\bg_accent_left.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "20"
			"loop" "25"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	addlayer "bg_accent_leftapexDelta"
	blendlayer "bg_accent_leftloopDelta" 0 0.510204 0.612245 1.020408 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveinDelta" {
	"male_gestures_anims\g_waveinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveinFrameArms" {
	"male_gestures_anims\g_waveinFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_waveinFrameSpine" {
	"male_gestures_anims\g_waveinFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveinLoopDelta" {
	"male_gestures_anims\g_waveinLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveloopFrameArms" {
	"male_gestures_anims\g_waveloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_waveloopFrameSpine" {
	"male_gestures_anims\g_waveloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveloopDelta" {
	"male_gestures_anims\g_waveloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveoutLoopDelta" {
	"male_gestures_anims\g_waveoutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveOutFrameArms" {
	"male_gestures_anims\g_waveOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_waveOutFrameSpine" {
	"male_gestures_anims\g_waveOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_waveoutDelta" {
	"male_gestures_anims\g_waveoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_wave" {
	"male_gestures_anims\g_wave.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "24"
			"loop" "53"
			"end" "54"
			"out" "55"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "53"
	}
}
	blendlayer "g_waveinFrameArms" 0 0.347826 0.347826 0.768116 xfade spline
	blendlayer "g_waveinFrameSpine" 0 0.347826 0.347826 0.768116 spline
	blendlayer "g_waveloopFrameArms" 0.347826 0.768116 0.782609 0.797101 xfade spline
	blendlayer "g_waveloopFrameSpine" 0.347826 0.768116 0.782609 0.797101 spline
	blendlayer "g_waveOutFrameArms" 0.782609 0.797101 0.797101 1.014493 spline
	blendlayer "g_waveOutFrameSpine" 0.782609 0.797101 0.797101 1.014493 spline
	addlayer "g_waveinDelta"
	addlayer "g_waveinLoopDelta"
	blendlayer "g_waveloopDelta" 0.347826 0.768116 0.782609 0.797101 spline
	addlayer "g_waveoutLoopDelta"
	addlayer "g_waveoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointinDelta" {
	"male_gestures_anims\g_frustrated_pointinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointinFrameArms" {
	"male_gestures_anims\g_frustrated_pointinFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_frustrated_pointinFrameSpine" {
	"male_gestures_anims\g_frustrated_pointinFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointinLoopDelta" {
	"male_gestures_anims\g_frustrated_pointinLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointloopFrameArms" {
	"male_gestures_anims\g_frustrated_pointloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_frustrated_pointloopFrameSpine" {
	"male_gestures_anims\g_frustrated_pointloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointloopDelta" {
	"male_gestures_anims\g_frustrated_pointloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 5
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointoutLoopDelta" {
	"male_gestures_anims\g_frustrated_pointoutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointOutFrameArms" {
	"male_gestures_anims\g_frustrated_pointOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_frustrated_pointOutFrameSpine" {
	"male_gestures_anims\g_frustrated_pointOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_pointoutDelta" {
	"male_gestures_anims\g_frustrated_pointoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point" {
	"male_gestures_anims\g_frustrated_point.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	iklock "rhand" 0.5 0.5

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "38"
			"end" "44"
			"out" "54"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "38"
	}
}
	blendlayer "g_frustrated_pointinFrameArms" 0 0.078125 0.078125 0.59375 xfade spline
	blendlayer "g_frustrated_pointinFrameSpine" 0 0.078125 0.078125 0.59375 spline
	blendlayer "g_frustrated_pointloopFrameArms" 0.078125 0.59375 0.6875 0.84375 xfade spline
	blendlayer "g_frustrated_pointloopFrameSpine" 0.078125 0.59375 0.6875 0.84375 spline
	blendlayer "g_frustrated_pointOutFrameArms" 0.6875 0.84375 0.84375 1.015625 spline
	blendlayer "g_frustrated_pointOutFrameSpine" 0.6875 0.84375 0.84375 1.015625 spline
	addlayer "g_frustrated_pointinDelta"
	addlayer "g_frustrated_pointinLoopDelta"
	blendlayer "g_frustrated_pointloopDelta" 0.078125 0.59375 0.6875 0.84375 spline
	addlayer "g_frustrated_pointoutLoopDelta"
	addlayer "g_frustrated_pointoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_RPGrightapexArms" {
	"male_gestures_anims\g_pumpleft_RPGrightapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pumpleft_RPGrightapexSpine" {
	"male_gestures_anims\g_pumpleft_RPGrightapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_RPGrightapexDelta" {
	"male_gestures_anims\g_pumpleft_RPGrightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_RPGrightloopArms" {
	"male_gestures_anims\g_pumpleft_RPGrightloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pumpleft_RPGrightloopSpine" {
	"male_gestures_anims\g_pumpleft_RPGrightloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_RPGrightaccentDelta" {
	"male_gestures_anims\g_pumpleft_RPGrightaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_RPGright" {
	"male_gestures_anims\g_pumpleft_RPGright.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "12"
			"accent" "19"
			"loop" "24"
			"end" "44"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_pumpleft_RPGrightapexArms" 0 0.230769 0.230769 0.461538 xfade spline
	blendlayer "g_pumpleft_RPGrightapexSpine" 0 0.230769 0.230769 0.461538 spline
	blendlayer "g_pumpleft_RPGrightloopArms" 0.230769 0.461538 0.846154 1.019231 spline
	blendlayer "g_pumpleft_RPGrightloopSpine" 0.230769 0.461538 0.846154 1.019231 spline
	addlayer "g_pumpleft_RPGrightapexDelta"
	addlayer "g_pumpleft_RPGrightaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_rpgdownapexArms" {
	"male_gestures_anims\g_pumpleft_rpgdownapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pumpleft_rpgdownapexSpine" {
	"male_gestures_anims\g_pumpleft_rpgdownapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_rpgdownapexDelta" {
	"male_gestures_anims\g_pumpleft_rpgdownapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_rpgdownloopArms" {
	"male_gestures_anims\g_pumpleft_rpgdownloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pumpleft_rpgdownloopSpine" {
	"male_gestures_anims\g_pumpleft_rpgdownloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_rpgdownaccentDelta" {
	"male_gestures_anims\g_pumpleft_rpgdownaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumpleft_rpgdown" {
	"male_gestures_anims\g_pumpleft_rpgdown.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "24"
			"accent" "30"
			"loop" "43"
			"end" "68"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "g_pumpleft_rpgdownapexArms" 0 0.3 0.3 0.5375 xfade spline
	blendlayer "g_pumpleft_rpgdownapexSpine" 0 0.3 0.3 0.5375 spline
	blendlayer "g_pumpleft_rpgdownloopArms" 0.3 0.5375 0.85 1.0125 spline
	blendlayer "g_pumpleft_rpgdownloopSpine" 0.3 0.5375 0.85 1.0125 spline
	addlayer "g_pumpleft_rpgdownapexDelta"
	addlayer "g_pumpleft_rpgdownaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsupapexArms" {
	"male_gestures_anims\g_armsupapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_armsupapexSpine" {
	"male_gestures_anims\g_armsupapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsupapexDelta" {
	"male_gestures_anims\g_armsupapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsuploopArms" {
	"male_gestures_anims\g_armsuploopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_armsuploopSpine" {
	"male_gestures_anims\g_armsuploopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsupaccentDelta" {
	"male_gestures_anims\g_armsupaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsup" {
	"male_gestures_anims\g_armsup.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "13"
			"accent" "30"
			"loop" "34"
			"end" "52"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "g_armsupapexArms" 0 0.185714 0.185714 0.485714 xfade spline
	blendlayer "g_armsupapexSpine" 0 0.185714 0.185714 0.485714 spline
	blendlayer "g_armsuploopArms" 0.185714 0.485714 0.742857 1.014286 spline
	blendlayer "g_armsuploopSpine" 0.185714 0.485714 0.742857 1.014286 spline
	addlayer "g_armsupapexDelta"
	addlayer "g_armsupaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_clapapexArms" {
	"male_gestures_anims\g_clapapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_clapapexSpine" {
	"male_gestures_anims\g_clapapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_clapapexDelta" {
	"male_gestures_anims\g_clapapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_claploopArms" {
	"male_gestures_anims\g_claploopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_claploopSpine" {
	"male_gestures_anims\g_claploopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_clapaccentDelta" {
	"male_gestures_anims\g_clapaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_clap" {
	"male_gestures_anims\g_clap.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "18"
			"accent" "25"
			"loop" "37"
			"end" "49"
		}
		"entrytag" "apex"
		"thumbnail_frame" "25"
	}
}
	blendlayer "g_clapapexArms" 0 0.243243 0.243243 0.5 xfade spline
	blendlayer "g_clapapexSpine" 0 0.243243 0.243243 0.5 spline
	blendlayer "g_claploopArms" 0.243243 0.5 0.662162 1.013514 spline
	blendlayer "g_claploopSpine" 0.243243 0.5 0.662162 1.013514 spline
	addlayer "g_clapapexDelta"
	addlayer "g_clapaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_rarmpumpapexArms" {
	"male_gestures_anims\g_rarmpumpapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_rarmpumpapexSpine" {
	"male_gestures_anims\g_rarmpumpapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_rarmpumpapexDelta" {
	"male_gestures_anims\g_rarmpumpapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_rarmpumploopArms" {
	"male_gestures_anims\g_rarmpumploopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_rarmpumploopSpine" {
	"male_gestures_anims\g_rarmpumploopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_rarmpumpaccentDelta" {
	"male_gestures_anims\g_rarmpumpaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_rarmpump" {
	"male_gestures_anims\g_rarmpump.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"accent" "25"
			"loop" "46"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "25"
	}
}
	blendlayer "g_rarmpumpapexArms" 0 0.217391 0.217391 0.666667 xfade spline
	blendlayer "g_rarmpumpapexSpine" 0 0.217391 0.217391 0.666667 spline
	blendlayer "g_rarmpumploopArms" 0.217391 0.666667 0.724638 1.014493 spline
	blendlayer "g_rarmpumploopSpine" 0.217391 0.666667 0.724638 1.014493 spline
	addlayer "g_rarmpumpapexDelta"
	addlayer "g_rarmpumpaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsoutapexArms" {
	"male_gestures_anims\g_armsoutapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_armsoutapexSpine" {
	"male_gestures_anims\g_armsoutapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsoutapexDelta" {
	"male_gestures_anims\g_armsoutapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsoutloopArms" {
	"male_gestures_anims\g_armsoutloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_armsoutloopSpine" {
	"male_gestures_anims\g_armsoutloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsoutaccentDelta" {
	"male_gestures_anims\g_armsoutaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsout" {
	"male_gestures_anims\g_armsout.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "6"
			"accent" "20"
			"loop" "37"
			"end" "67"
		}
		"entrytag" "apex"
		"thumbnail_frame" "20"
	}
}
	blendlayer "g_armsoutapexArms" 0 0.067416 0.067416 0.41573 xfade spline
	blendlayer "g_armsoutapexSpine" 0 0.067416 0.067416 0.41573 spline
	blendlayer "g_armsoutloopArms" 0.067416 0.41573 0.752809 1.011236 spline
	blendlayer "g_armsoutloopSpine" 0.067416 0.41573 0.752809 1.011236 spline
	addlayer "g_armsoutapexDelta"
	addlayer "g_armsoutaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsout_highapexArms" {
	"male_gestures_anims\g_armsout_highapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_armsout_highapexSpine" {
	"male_gestures_anims\g_armsout_highapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsout_highapexDelta" {
	"male_gestures_anims\g_armsout_highapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsout_highloopArms" {
	"male_gestures_anims\g_armsout_highloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_armsout_highloopSpine" {
	"male_gestures_anims\g_armsout_highloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsout_highaccentDelta" {
	"male_gestures_anims\g_armsout_highaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_armsout_high" {
	"male_gestures_anims\g_armsout_high.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "9"
			"accent" "19"
			"loop" "37"
			"end" "67"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_armsout_highapexArms" 0 0.101124 0.101124 0.41573 xfade spline
	blendlayer "g_armsout_highapexSpine" 0 0.101124 0.101124 0.41573 spline
	blendlayer "g_armsout_highloopArms" 0.101124 0.41573 0.752809 1.011236 spline
	blendlayer "g_armsout_highloopSpine" 0.101124 0.41573 0.752809 1.011236 spline
	addlayer "g_armsout_highapexDelta"
	addlayer "g_armsout_highaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumplowapexArms" {
	"male_gestures_anims\g_pumplowapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pumplowapexSpine" {
	"male_gestures_anims\g_pumplowapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumplowapexDelta" {
	"male_gestures_anims\g_pumplowapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumplowloopArms" {
	"male_gestures_anims\g_pumplowloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pumplowloopSpine" {
	"male_gestures_anims\g_pumplowloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumplowaccentDelta" {
	"male_gestures_anims\g_pumplowaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pumplow" {
	"male_gestures_anims\g_pumplow.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"accent" "57"
			"loop" "57"
			"end" "57"
		}
		"entrytag" "apex"
		"thumbnail_frame" "57"
	}
}
	blendlayer "g_pumplowapexArms" 0 0.234375 0.234375 0.890625 xfade spline
	blendlayer "g_pumplowapexSpine" 0 0.234375 0.234375 0.890625 spline
	blendlayer "g_pumplowloopArms" 0.234375 0.890625 0.890625 1.015625 spline
	blendlayer "g_pumplowloopSpine" 0.234375 0.890625 0.890625 1.015625 spline
	addlayer "g_pumplowapexDelta"
	addlayer "g_pumplowaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_R_typeapexArms" {
	"male_gestures_anims\g_R_typeapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_R_typeapexSpine" {
	"male_gestures_anims\g_R_typeapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_R_typeapexDelta" {
	"male_gestures_anims\g_R_typeapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_R_typeloopArms" {
	"male_gestures_anims\g_R_typeloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_R_typeloopSpine" {
	"male_gestures_anims\g_R_typeloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_R_typeaccentDelta" {
	"male_gestures_anims\g_R_typeaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_R_type" {
	"male_gestures_anims\g_R_type.smd"
	{ event AE_CL_PLAYSOUND 39 "NPC_Alyx.PushButton2" }
	{ event AE_CL_PLAYSOUND 45 "NPC_Alyx.PushButton2" }
	{ event AE_CL_PLAYSOUND 53 "NPC_Alyx.PushButton2" }
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "33"
			"accent" "45"
			"loop" "62"
			"end" "90"
		}
		"entrytag" "apex"
		"thumbnail_frame" "45"
	}
}
	blendlayer "g_R_typeapexArms" 0 0.302752 0.302752 0.568807 xfade spline
	blendlayer "g_R_typeapexSpine" 0 0.302752 0.302752 0.568807 spline
	blendlayer "g_R_typeloopArms" 0.302752 0.568807 0.825688 1.009174 spline
	blendlayer "g_R_typeloopSpine" 0.302752 0.568807 0.825688 1.009174 spline
	addlayer "g_R_typeapexDelta"
	addlayer "g_R_typeaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_saluteapexArms" {
	"male_gestures_anims\g_saluteapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_saluteapexSpine" {
	"male_gestures_anims\g_saluteapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_saluteapexDelta" {
	"male_gestures_anims\g_saluteapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_saluteloopArms" {
	"male_gestures_anims\g_saluteloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_saluteloopSpine" {
	"male_gestures_anims\g_saluteloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_saluteaccentDelta" {
	"male_gestures_anims\g_saluteaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_salute" {
	"male_gestures_anims\g_salute.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "20"
			"accent" "50"
			"loop" "52"
			"end" "65"
		}
		"entrytag" "apex"
		"thumbnail_frame" "50"
	}
}
	blendlayer "g_saluteapexArms" 0 0.253165 0.253165 0.658228 xfade spline
	blendlayer "g_saluteapexSpine" 0 0.253165 0.253165 0.658228 spline
	blendlayer "g_saluteloopArms" 0.253165 0.658228 0.822785 1.012658 spline
	blendlayer "g_saluteloopSpine" 0.253165 0.658228 0.822785 1.012658 spline
	addlayer "g_saluteapexDelta"
	addlayer "g_saluteaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_thumbsupapexArms" {
	"male_gestures_anims\g_thumbsupapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_thumbsupapexSpine" {
	"male_gestures_anims\g_thumbsupapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_thumbsupapexDelta" {
	"male_gestures_anims\g_thumbsupapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_thumbsuploopArms" {
	"male_gestures_anims\g_thumbsuploopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_thumbsuploopSpine" {
	"male_gestures_anims\g_thumbsuploopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_thumbsupaccentDelta" {
	"male_gestures_anims\g_thumbsupaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_thumbsup" {
	"male_gestures_anims\g_thumbsup.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "18"
			"accent" "34"
			"loop" "35"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "34"
	}
}
	blendlayer "g_thumbsupapexArms" 0 0.305085 0.305085 0.59322 xfade spline
	blendlayer "g_thumbsupapexSpine" 0 0.305085 0.305085 0.59322 spline
	blendlayer "g_thumbsuploopArms" 0.305085 0.59322 0.677966 1.016949 spline
	blendlayer "g_thumbsuploopSpine" 0.305085 0.59322 0.677966 1.016949 spline
	addlayer "g_thumbsupapexDelta"
	addlayer "g_thumbsupaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_chest_twistLdefault" {
	"male_gestures_anims\hg_chest_twistLdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_chest_twistLapexDelta" {
	"male_gestures_anims\hg_chest_twistLapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_chest_twistLloopDelta" {
	"male_gestures_anims\hg_chest_twistLloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_chest_twistL" {
	"male_gestures_anims\hg_chest_twistL.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "20"
			"extreme" "24"
			"loop" "25"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "24"
	}
}
	addlayer "hg_chest_twistLapexDelta"
	blendlayer "hg_chest_twistLloopDelta" 0 0.568182 0.681818 1.022727 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "sit_breathinDelta" {
	"male_gestures_anims\sit_breathinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "sit_breathinFrameArms" {
	"male_gestures_anims\sit_breathinFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "sit_breathinFrameSpine" {
	"male_gestures_anims\sit_breathinFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "sit_breathCoreDelta" {
	"male_gestures_anims\sit_breathCoreDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "sit_breathOutFrameArms" {
	"male_gestures_anims\sit_breathOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "sit_breathOutFrameSpine" {
	"male_gestures_anims\sit_breathOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "sit_breathoutDelta" {
	"male_gestures_anims\sit_breathoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "sit_breath" {
	"male_gestures_anims\sit_breath.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "30"
			"out" "60"
		}
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "30"
	}
}
	blendlayer "sit_breathinFrameArms" 0 0.4 0.4 0.8 xfade spline
	blendlayer "sit_breathinFrameSpine" 0 0.4 0.4 0.8 spline
	blendlayer "sit_breathOutFrameArms" 0.4 0.8 0.8 1.013333 spline
	blendlayer "sit_breathOutFrameSpine" 0.4 0.8 0.8 1.013333 spline
	addlayer "sit_breathinDelta"
	addlayer "sit_breathCoreDelta"
	addlayer "sit_breathoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_breath_lyingdowninDelta" {
	"male_gestures_anims\g_breath_lyingdowninDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_breath_lyingdowninFrameArms" {
	"male_gestures_anims\g_breath_lyingdowninFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_breath_lyingdowninFrameSpine" {
	"male_gestures_anims\g_breath_lyingdowninFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_breath_lyingdownCoreDelta" {
	"male_gestures_anims\g_breath_lyingdownCoreDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_breath_lyingdownOutFrameArms" {
	"male_gestures_anims\g_breath_lyingdownOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_breath_lyingdownOutFrameSpine" {
	"male_gestures_anims\g_breath_lyingdownOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_breath_lyingdownoutDelta" {
	"male_gestures_anims\g_breath_lyingdownoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_breath_lyingdown" {
	"male_gestures_anims\g_breath_lyingdown.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "50"
			"out" "51"
		}
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "50"
	}
}
	blendlayer "g_breath_lyingdowninFrameArms" 0 0.50505 0.50505 0.515152 xfade spline
	blendlayer "g_breath_lyingdowninFrameSpine" 0 0.50505 0.50505 0.515152 spline
	blendlayer "g_breath_lyingdownOutFrameArms" 0.50505 0.515152 0.515152 1.010101 spline
	blendlayer "g_breath_lyingdownOutFrameSpine" 0.50505 0.515152 0.515152 1.010101 spline
	addlayer "g_breath_lyingdowninDelta"
	addlayer "g_breath_lyingdownCoreDelta"
	addlayer "g_breath_lyingdownoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistshakeapexArms" {
	"male_gestures_anims\g_fistshakeapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_fistshakeapexSpine" {
	"male_gestures_anims\g_fistshakeapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistshakeapexDelta" {
	"male_gestures_anims\g_fistshakeapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistshakeloopArms" {
	"male_gestures_anims\g_fistshakeloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_fistshakeloopSpine" {
	"male_gestures_anims\g_fistshakeloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistshakeaccentDelta" {
	"male_gestures_anims\g_fistshakeaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fistshake" {
	"male_gestures_anims\g_fistshake.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "20"
			"accent" "30"
			"loop" "40"
			"end" "60"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "g_fistshakeapexArms" 0 0.27027 0.27027 0.540541 xfade spline
	blendlayer "g_fistshakeapexSpine" 0 0.27027 0.27027 0.540541 spline
	blendlayer "g_fistshakeloopArms" 0.27027 0.540541 0.810811 1.013514 spline
	blendlayer "g_fistshakeloopSpine" 0.27027 0.540541 0.810811 1.013514 spline
	addlayer "g_fistshakeapexDelta"
	addlayer "g_fistshakeaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_linDelta" {
	"male_gestures_anims\g_pointleft_linDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_linFrameArms" {
	"male_gestures_anims\g_pointleft_linFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_pointleft_linFrameSpine" {
	"male_gestures_anims\g_pointleft_linFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_linLoopDelta" {
	"male_gestures_anims\g_pointleft_linLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_lloopFrameArms" {
	"male_gestures_anims\g_pointleft_lloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_pointleft_lloopFrameSpine" {
	"male_gestures_anims\g_pointleft_lloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_lloopDelta" {
	"male_gestures_anims\g_pointleft_lloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 3
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_loutLoopDelta" {
	"male_gestures_anims\g_pointleft_loutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_lOutFrameArms" {
	"male_gestures_anims\g_pointleft_lOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_pointleft_lOutFrameSpine" {
	"male_gestures_anims\g_pointleft_lOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_loutDelta" {
	"male_gestures_anims\g_pointleft_loutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointleft_l" {
	"male_gestures_anims\g_pointleft_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "29"
			"end" "39"
			"out" "52"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "29"
	}
}
	blendlayer "g_pointleft_linFrameArms" 0 0.067568 0.067568 0.391892 xfade spline
	blendlayer "g_pointleft_linFrameSpine" 0 0.067568 0.067568 0.391892 spline
	blendlayer "g_pointleft_lloopFrameArms" 0.067568 0.391892 0.527027 0.702703 xfade spline
	blendlayer "g_pointleft_lloopFrameSpine" 0.067568 0.391892 0.527027 0.702703 spline
	blendlayer "g_pointleft_lOutFrameArms" 0.527027 0.702703 0.702703 1.013514 spline
	blendlayer "g_pointleft_lOutFrameSpine" 0.527027 0.702703 0.702703 1.013514 spline
	addlayer "g_pointleft_linDelta"
	addlayer "g_pointleft_linLoopDelta"
	blendlayer "g_pointleft_lloopDelta" 0.067568 0.391892 0.527027 0.702703 spline
	addlayer "g_pointleft_loutLoopDelta"
	addlayer "g_pointleft_loutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_linDelta" {
	"male_gestures_anims\g_pointright_linDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_linFrameArms" {
	"male_gestures_anims\g_pointright_linFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_pointright_linFrameSpine" {
	"male_gestures_anims\g_pointright_linFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_linLoopDelta" {
	"male_gestures_anims\g_pointright_linLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_lloopFrameArms" {
	"male_gestures_anims\g_pointright_lloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_pointright_lloopFrameSpine" {
	"male_gestures_anims\g_pointright_lloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_lloopDelta" {
	"male_gestures_anims\g_pointright_lloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_loutLoopDelta" {
	"male_gestures_anims\g_pointright_loutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_lOutFrameArms" {
	"male_gestures_anims\g_pointright_lOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_pointright_lOutFrameSpine" {
	"male_gestures_anims\g_pointright_lOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_loutDelta" {
	"male_gestures_anims\g_pointright_loutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointright_l" {
	"male_gestures_anims\g_pointright_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "25"
			"end" "39"
			"out" "53"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "25"
	}
}
	blendlayer "g_pointright_linFrameArms" 0 0.084746 0.084746 0.423729 xfade spline
	blendlayer "g_pointright_linFrameSpine" 0 0.084746 0.084746 0.423729 spline
	blendlayer "g_pointright_lloopFrameArms" 0.084746 0.423729 0.661017 0.898305 xfade spline
	blendlayer "g_pointright_lloopFrameSpine" 0.084746 0.423729 0.661017 0.898305 spline
	blendlayer "g_pointright_lOutFrameArms" 0.661017 0.898305 0.898305 1.016949 spline
	blendlayer "g_pointright_lOutFrameSpine" 0.661017 0.898305 0.898305 1.016949 spline
	addlayer "g_pointright_linDelta"
	addlayer "g_pointright_linLoopDelta"
	blendlayer "g_pointright_lloopDelta" 0.084746 0.423729 0.661017 0.898305 spline
	addlayer "g_pointright_loutLoopDelta"
	addlayer "g_pointright_loutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_linDelta" {
	"male_gestures_anims\g_point_linDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_linFrameArms" {
	"male_gestures_anims\g_point_linFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_point_linFrameSpine" {
	"male_gestures_anims\g_point_linFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_linLoopDelta" {
	"male_gestures_anims\g_point_linLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_lloopFrameArms" {
	"male_gestures_anims\g_point_lloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_point_lloopFrameSpine" {
	"male_gestures_anims\g_point_lloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_lloopDelta" {
	"male_gestures_anims\g_point_lloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_loutLoopDelta" {
	"male_gestures_anims\g_point_loutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_lOutFrameArms" {
	"male_gestures_anims\g_point_lOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_point_lOutFrameSpine" {
	"male_gestures_anims\g_point_lOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_loutDelta" {
	"male_gestures_anims\g_point_loutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l" {
	"male_gestures_anims\g_point_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "31"
			"end" "39"
			"out" "51"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "31"
	}
}
	blendlayer "g_point_linFrameArms" 0 0.080645 0.080645 0.5 xfade spline
	blendlayer "g_point_linFrameSpine" 0 0.080645 0.080645 0.5 spline
	blendlayer "g_point_lloopFrameArms" 0.080645 0.5 0.629032 0.822581 xfade spline
	blendlayer "g_point_lloopFrameSpine" 0.080645 0.5 0.629032 0.822581 spline
	blendlayer "g_point_lOutFrameArms" 0.629032 0.822581 0.822581 1.016129 spline
	blendlayer "g_point_lOutFrameSpine" 0.629032 0.822581 0.822581 1.016129 spline
	addlayer "g_point_linDelta"
	addlayer "g_point_linLoopDelta"
	blendlayer "g_point_lloopDelta" 0.080645 0.5 0.629032 0.822581 spline
	addlayer "g_point_loutLoopDelta"
	addlayer "g_point_loutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpginDelta" {
	"male_gestures_anims\g_point_l_rpginDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpginFrameArms" {
	"male_gestures_anims\g_point_l_rpginFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_point_l_rpginFrameSpine" {
	"male_gestures_anims\g_point_l_rpginFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpginLoopDelta" {
	"male_gestures_anims\g_point_l_rpginLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpgloopFrameArms" {
	"male_gestures_anims\g_point_l_rpgloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_point_l_rpgloopFrameSpine" {
	"male_gestures_anims\g_point_l_rpgloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpgloopDelta" {
	"male_gestures_anims\g_point_l_rpgloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpgoutLoopDelta" {
	"male_gestures_anims\g_point_l_rpgoutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpgOutFrameArms" {
	"male_gestures_anims\g_point_l_rpgOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_point_l_rpgOutFrameSpine" {
	"male_gestures_anims\g_point_l_rpgOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpgoutDelta" {
	"male_gestures_anims\g_point_l_rpgoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point_l_rpg" {
	"male_gestures_anims\g_point_l_rpg.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "25"
			"end" "35"
			"out" "45"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "25"
	}
}
	blendlayer "g_point_l_rpginFrameArms" 0 0.084746 0.084746 0.423729 xfade spline
	blendlayer "g_point_l_rpginFrameSpine" 0 0.084746 0.084746 0.423729 spline
	blendlayer "g_point_l_rpgloopFrameArms" 0.084746 0.423729 0.59322 0.762712 xfade spline
	blendlayer "g_point_l_rpgloopFrameSpine" 0.084746 0.423729 0.59322 0.762712 spline
	blendlayer "g_point_l_rpgOutFrameArms" 0.59322 0.762712 0.762712 1.016949 spline
	blendlayer "g_point_l_rpgOutFrameSpine" 0.59322 0.762712 0.762712 1.016949 spline
	addlayer "g_point_l_rpginDelta"
	addlayer "g_point_l_rpginLoopDelta"
	blendlayer "g_point_l_rpgloopDelta" 0.084746 0.423729 0.59322 0.762712 spline
	addlayer "g_point_l_rpgoutLoopDelta"
	addlayer "g_point_l_rpgoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turn_ldefault" {
	"male_gestures_anims\hg_turn_ldefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_turn_lapexDelta" {
	"male_gestures_anims\hg_turn_lapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turn_lloopDelta" {
	"male_gestures_anims\hg_turn_lloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turn_l" {
	"male_gestures_anims\hg_turn_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"extreme" "10"
			"loop" "15"
			"end" "35"
		}
		"entrytag" "apex"
		"thumbnail_frame" "10"
	}
}
	addlayer "hg_turn_lapexDelta"
	blendlayer "hg_turn_lloopDelta" 0 0.306122 0.714286 1.020408 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turn_rdefault" {
	"male_gestures_anims\hg_turn_rdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_turn_rapexDelta" {
	"male_gestures_anims\hg_turn_rapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turn_rloopDelta" {
	"male_gestures_anims\hg_turn_rloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turn_r" {
	"male_gestures_anims\hg_turn_r.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"extreme" "10"
			"loop" "15"
			"end" "35"
		}
		"entrytag" "apex"
		"thumbnail_frame" "10"
	}
}
	addlayer "hg_turn_rapexDelta"
	blendlayer "hg_turn_rloopDelta" 0 0.306122 0.714286 1.020408 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3inDelta" {
	"male_gestures_anims\g_weld_3inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3inFrameArms" {
	"male_gestures_anims\g_weld_3inFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_3inFrameSpine" {
	"male_gestures_anims\g_weld_3inFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3inLoopDelta" {
	"male_gestures_anims\g_weld_3inLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3loopFrameArms" {
	"male_gestures_anims\g_weld_3loopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_3loopFrameSpine" {
	"male_gestures_anims\g_weld_3loopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3loopDelta" {
	"male_gestures_anims\g_weld_3loopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3outLoopDelta" {
	"male_gestures_anims\g_weld_3outLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3OutFrameArms" {
	"male_gestures_anims\g_weld_3OutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_3OutFrameSpine" {
	"male_gestures_anims\g_weld_3OutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3outDelta" {
	"male_gestures_anims\g_weld_3outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_3" {
	"male_gestures_anims\g_weld_3.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "44"
			"end" "51"
			"out" "93"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "44"
	}
}
	blendlayer "g_weld_3inFrameArms" 0 0.050505 0.050505 0.444444 xfade spline
	blendlayer "g_weld_3inFrameSpine" 0 0.050505 0.050505 0.444444 spline
	blendlayer "g_weld_3loopFrameArms" 0.050505 0.444444 0.515152 0.939394 xfade spline
	blendlayer "g_weld_3loopFrameSpine" 0.050505 0.444444 0.515152 0.939394 spline
	blendlayer "g_weld_3OutFrameArms" 0.515152 0.939394 0.939394 1.010101 spline
	blendlayer "g_weld_3OutFrameSpine" 0.515152 0.939394 0.939394 1.010101 spline
	addlayer "g_weld_3inDelta"
	addlayer "g_weld_3inLoopDelta"
	blendlayer "g_weld_3loopDelta" 0.050505 0.444444 0.515152 0.939394 spline
	addlayer "g_weld_3outLoopDelta"
	addlayer "g_weld_3outDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2inDelta" {
	"male_gestures_anims\g_weld_2inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2inFrameArms" {
	"male_gestures_anims\g_weld_2inFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_2inFrameSpine" {
	"male_gestures_anims\g_weld_2inFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2inLoopDelta" {
	"male_gestures_anims\g_weld_2inLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2loopFrameArms" {
	"male_gestures_anims\g_weld_2loopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_2loopFrameSpine" {
	"male_gestures_anims\g_weld_2loopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2loopDelta" {
	"male_gestures_anims\g_weld_2loopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2outLoopDelta" {
	"male_gestures_anims\g_weld_2outLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2OutFrameArms" {
	"male_gestures_anims\g_weld_2OutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_2OutFrameSpine" {
	"male_gestures_anims\g_weld_2OutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2outDelta" {
	"male_gestures_anims\g_weld_2outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_2" {
	"male_gestures_anims\g_weld_2.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "35"
			"end" "130"
			"out" "150"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "35"
	}
}
	blendlayer "g_weld_2inFrameArms" 0 0.02994 0.02994 0.209581 xfade spline
	blendlayer "g_weld_2inFrameSpine" 0 0.02994 0.02994 0.209581 spline
	blendlayer "g_weld_2loopFrameArms" 0.02994 0.209581 0.778443 0.898204 xfade spline
	blendlayer "g_weld_2loopFrameSpine" 0.02994 0.209581 0.778443 0.898204 spline
	blendlayer "g_weld_2OutFrameArms" 0.778443 0.898204 0.898204 1.005988 spline
	blendlayer "g_weld_2OutFrameSpine" 0.778443 0.898204 0.898204 1.005988 spline
	addlayer "g_weld_2inDelta"
	addlayer "g_weld_2inLoopDelta"
	blendlayer "g_weld_2loopDelta" 0.02994 0.209581 0.778443 0.898204 spline
	addlayer "g_weld_2outLoopDelta"
	addlayer "g_weld_2outDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downinDelta" {
	"male_gestures_anims\g_weld_downinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downinFrameArms" {
	"male_gestures_anims\g_weld_downinFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_downinFrameSpine" {
	"male_gestures_anims\g_weld_downinFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downinLoopDelta" {
	"male_gestures_anims\g_weld_downinLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downloopFrameArms" {
	"male_gestures_anims\g_weld_downloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_downloopFrameSpine" {
	"male_gestures_anims\g_weld_downloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downloopDelta" {
	"male_gestures_anims\g_weld_downloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downoutLoopDelta" {
	"male_gestures_anims\g_weld_downoutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downOutFrameArms" {
	"male_gestures_anims\g_weld_downOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_weld_downOutFrameSpine" {
	"male_gestures_anims\g_weld_downOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_downoutDelta" {
	"male_gestures_anims\g_weld_downoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_weld_down" {
	"male_gestures_anims\g_weld_down.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "10"
			"loop" "25"
			"end" "50"
			"out" "65"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "25"
	}
}
	blendlayer "g_weld_downinFrameArms" 0 0.144928 0.144928 0.362319 xfade spline
	blendlayer "g_weld_downinFrameSpine" 0 0.144928 0.144928 0.362319 spline
	blendlayer "g_weld_downloopFrameArms" 0.144928 0.362319 0.724638 0.942029 xfade spline
	blendlayer "g_weld_downloopFrameSpine" 0.144928 0.362319 0.724638 0.942029 spline
	blendlayer "g_weld_downOutFrameArms" 0.724638 0.942029 0.942029 1.014493 spline
	blendlayer "g_weld_downOutFrameSpine" 0.724638 0.942029 0.942029 1.014493 spline
	addlayer "g_weld_downinDelta"
	addlayer "g_weld_downinLoopDelta"
	blendlayer "g_weld_downloopDelta" 0.144928 0.362319 0.724638 0.942029 spline
	addlayer "g_weld_downoutLoopDelta"
	addlayer "g_weld_downoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_idleapexArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idleapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_idleapexSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idleapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_idleapexDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idleapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_idleloopArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idleloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 24
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_idleloopSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idleloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 24
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_idleaccentDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idleaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_idle" {
	"male_gestures_anims\g_ep2_09_holdbeacon_idle.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "4"
			"accent" "8"
			"loop" "10"
			"end" "70"
		}
		"entrytag" "apex"
		"thumbnail_frame" "8"
	}
}
	blendlayer "g_ep2_09_holdbeacon_idleapexArms" 0 0.050633 0.050633 0.126582 xfade spline
	blendlayer "g_ep2_09_holdbeacon_idleapexSpine" 0 0.050633 0.050633 0.126582 spline
	blendlayer "g_ep2_09_holdbeacon_idleloopArms" 0.050633 0.126582 0.886076 1.012658 spline
	blendlayer "g_ep2_09_holdbeacon_idleloopSpine" 0.050633 0.126582 0.886076 1.012658 spline
	addlayer "g_ep2_09_holdbeacon_idleapexDelta"
	addlayer "g_ep2_09_holdbeacon_idleaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_startcarapexArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcarapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_startcarapexSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcarapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_startcarapexDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcarapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_startcarloopArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcarloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_startcarloopSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcarloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_startcaraccentDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcaraccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_startcar" {
	"male_gestures_anims\g_ep2_09_holdbeacon_startcar.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "15"
			"loop" "20"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "15"
	}
}
	blendlayer "g_ep2_09_holdbeacon_startcarapexArms" 0 0.144928 0.144928 0.289855 xfade spline
	blendlayer "g_ep2_09_holdbeacon_startcarapexSpine" 0 0.144928 0.144928 0.289855 spline
	blendlayer "g_ep2_09_holdbeacon_startcarloopArms" 0.144928 0.289855 0.724638 1.014493 spline
	blendlayer "g_ep2_09_holdbeacon_startcarloopSpine" 0.144928 0.289855 0.724638 1.014493 spline
	addlayer "g_ep2_09_holdbeacon_startcarapexDelta"
	addlayer "g_ep2_09_holdbeacon_startcaraccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_pointatbeaconapexArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeaconapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_pointatbeaconapexSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeaconapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_pointatbeaconapexDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeaconapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_pointatbeaconloopArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeaconloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_pointatbeaconloopSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeaconloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_pointatbeaconaccentDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeaconaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_pointatbeacon" {
	"male_gestures_anims\g_ep2_09_holdbeacon_pointatbeacon.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "15"
			"loop" "20"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "15"
	}
}
	blendlayer "g_ep2_09_holdbeacon_pointatbeaconapexArms" 0 0.25641 0.25641 0.512821 xfade spline
	blendlayer "g_ep2_09_holdbeacon_pointatbeaconapexSpine" 0 0.25641 0.25641 0.512821 spline
	blendlayer "g_ep2_09_holdbeacon_pointatbeaconloopArms" 0.25641 0.512821 0.769231 1.025641 spline
	blendlayer "g_ep2_09_holdbeacon_pointatbeaconloopSpine" 0.25641 0.512821 0.769231 1.025641 spline
	addlayer "g_ep2_09_holdbeacon_pointatbeaconapexDelta"
	addlayer "g_ep2_09_holdbeacon_pointatbeaconaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_shakebeaconapexArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeaconapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_shakebeaconapexSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeaconapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_shakebeaconapexDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeaconapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_shakebeaconloopArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeaconloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_shakebeaconloopSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeaconloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_shakebeaconaccentDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeaconaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_shakebeacon" {
	"male_gestures_anims\g_ep2_09_holdbeacon_shakebeacon.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"accent" "10"
			"loop" "15"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "10"
	}
}
	blendlayer "g_ep2_09_holdbeacon_shakebeaconapexArms" 0 0.128205 0.128205 0.384615 xfade spline
	blendlayer "g_ep2_09_holdbeacon_shakebeaconapexSpine" 0 0.128205 0.128205 0.384615 spline
	blendlayer "g_ep2_09_holdbeacon_shakebeaconloopArms" 0.128205 0.384615 0.769231 1.025641 spline
	blendlayer "g_ep2_09_holdbeacon_shakebeaconloopSpine" 0.128205 0.384615 0.769231 1.025641 spline
	addlayer "g_ep2_09_holdbeacon_shakebeaconapexDelta"
	addlayer "g_ep2_09_holdbeacon_shakebeaconaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_circusapexArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circusapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_circusapexSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circusapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_circusapexDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circusapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_circusloopArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circusloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_circusloopSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circusloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_circusaccentDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circusaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_circus" {
	"male_gestures_anims\g_ep2_09_holdbeacon_circus.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "15"
			"loop" "20"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "15"
	}
}
	blendlayer "g_ep2_09_holdbeacon_circusapexArms" 0 0.25641 0.25641 0.512821 xfade spline
	blendlayer "g_ep2_09_holdbeacon_circusapexSpine" 0 0.25641 0.25641 0.512821 spline
	blendlayer "g_ep2_09_holdbeacon_circusloopArms" 0.25641 0.512821 0.769231 1.025641 spline
	blendlayer "g_ep2_09_holdbeacon_circusloopSpine" 0.25641 0.512821 0.769231 1.025641 spline
	addlayer "g_ep2_09_holdbeacon_circusapexDelta"
	addlayer "g_ep2_09_holdbeacon_circusaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_thumbbehindapexArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehindapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_thumbbehindapexSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehindapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_thumbbehindapexDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehindapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_thumbbehindloopArms" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehindloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ep2_09_holdbeacon_thumbbehindloopSpine" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehindloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 20
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_thumbbehindaccentDelta" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehindaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ep2_09_holdbeacon_thumbbehind" {
	"male_gestures_anims\g_ep2_09_holdbeacon_thumbbehind.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"accent" "10"
			"loop" "15"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "10"
	}
}
	blendlayer "g_ep2_09_holdbeacon_thumbbehindapexArms" 0 0.128205 0.128205 0.384615 xfade spline
	blendlayer "g_ep2_09_holdbeacon_thumbbehindapexSpine" 0 0.128205 0.128205 0.384615 spline
	blendlayer "g_ep2_09_holdbeacon_thumbbehindloopArms" 0.128205 0.384615 0.769231 1.025641 spline
	blendlayer "g_ep2_09_holdbeacon_thumbbehindloopSpine" 0.128205 0.384615 0.769231 1.025641 spline
	addlayer "g_ep2_09_holdbeacon_thumbbehindapexDelta"
	addlayer "g_ep2_09_holdbeacon_thumbbehindaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01_leftapexArms" {
	"male_gestures_anims\g_plead_01_leftapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_plead_01_leftapexSpine" {
	"male_gestures_anims\g_plead_01_leftapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01_leftapexDelta" {
	"male_gestures_anims\g_plead_01_leftapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01_leftloopArms" {
	"male_gestures_anims\g_plead_01_leftloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_plead_01_leftloopSpine" {
	"male_gestures_anims\g_plead_01_leftloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01_leftaccentDelta" {
	"male_gestures_anims\g_plead_01_leftaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_plead_01_left" {
	"male_gestures_anims\g_plead_01_left.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "16"
			"accent" "26"
			"loop" "40"
			"end" "50"
		}
		"entrytag" "apex"
		"thumbnail_frame" "26"
	}
}
	blendlayer "g_plead_01_leftapexArms" 0 0.271186 0.271186 0.677966 xfade spline
	blendlayer "g_plead_01_leftapexSpine" 0 0.271186 0.271186 0.677966 spline
	blendlayer "g_plead_01_leftloopArms" 0.271186 0.677966 0.847458 1.016949 spline
	blendlayer "g_plead_01_leftloopSpine" 0.271186 0.677966 0.847458 1.016949 spline
	addlayer "g_plead_01_leftapexDelta"
	addlayer "g_plead_01_leftaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButton_rightapexArms" {
	"male_gestures_anims\GestureButton_rightapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "GestureButton_rightapexSpine" {
	"male_gestures_anims\GestureButton_rightapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButton_rightapexDelta" {
	"male_gestures_anims\GestureButton_rightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButton_rightloopArms" {
	"male_gestures_anims\GestureButton_rightloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "GestureButton_rightloopSpine" {
	"male_gestures_anims\GestureButton_rightloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButton_rightaccentDelta" {
	"male_gestures_anims\GestureButton_rightaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "GestureButton_right" {
	"male_gestures_anims\GestureButton_right.smd"
	{ event AE_CL_PLAYSOUND 21 "NPC_Alyx.PushButton1" }
	{ event AE_CL_PLAYSOUND 28 "NPC_Alyx.PushButton1" }
	{ event AE_CL_PLAYSOUND 21 "NPC_Alyx.PushButton1" }
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "14"
			"accent" "57"
			"loop" "58"
			"end" "59"
		}
		"entrytag" "apex"
		"thumbnail_frame" "57"
	}
}
	blendlayer "GestureButton_rightapexArms" 0 0.21875 0.21875 0.90625 xfade spline
	blendlayer "GestureButton_rightapexSpine" 0 0.21875 0.21875 0.90625 spline
	blendlayer "GestureButton_rightloopArms" 0.21875 0.90625 0.921875 1.015625 spline
	blendlayer "GestureButton_rightloopSpine" 0.21875 0.90625 0.921875 1.015625 spline
	addlayer "GestureButton_rightapexDelta"
	addlayer "GestureButton_rightaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_up_ldefault" {
	"male_gestures_anims\bg_up_ldefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_up_lapexDelta" {
	"male_gestures_anims\bg_up_lapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_up_lloopDelta" {
	"male_gestures_anims\bg_up_lloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_up_l" {
	"male_gestures_anims\bg_up_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "4"
			"extreme" "13"
			"loop" "20"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "13"
	}
}
	addlayer "bg_up_lapexDelta"
	blendlayer "bg_up_lloopDelta" 0 0.416667 0.625 1.020833 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_up_rdefault" {
	"male_gestures_anims\bg_up_rdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_up_rapexDelta" {
	"male_gestures_anims\bg_up_rapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_up_rloopDelta" {
	"male_gestures_anims\bg_up_rloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_up_r" {
	"male_gestures_anims\bg_up_r.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "4"
			"extreme" "13"
			"loop" "20"
			"end" "30"
		}
		"entrytag" "apex"
		"thumbnail_frame" "13"
	}
}
	addlayer "bg_up_rapexDelta"
	blendlayer "bg_up_rloopDelta" 0 0.416667 0.625 1.020833 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_downdefault" {
	"male_gestures_anims\bg_downdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_downapexDelta" {
	"male_gestures_anims\bg_downapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_downloopDelta" {
	"male_gestures_anims\bg_downloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_down" {
	"male_gestures_anims\bg_down.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"extreme" "14"
			"loop" "28"
			"end" "39"
		}
		"entrytag" "apex"
		"thumbnail_frame" "14"
	}
}
	addlayer "bg_downapexDelta"
	blendlayer "bg_downloopDelta" 0 0.474576 0.661017 1.016949 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_leftdefault" {
	"male_gestures_anims\bg_leftdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_leftapexDelta" {
	"male_gestures_anims\bg_leftapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_leftloopDelta" {
	"male_gestures_anims\bg_leftloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_left" {
	"male_gestures_anims\bg_left.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "19"
			"loop" "31"
			"end" "47"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	addlayer "bg_leftapexDelta"
	blendlayer "bg_leftloopDelta" 0 0.469697 0.712121 1.015152 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_rightdefault" {
	"male_gestures_anims\bg_rightdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "bg_rightapexDelta" {
	"male_gestures_anims\bg_rightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_rightloopDelta" {
	"male_gestures_anims\bg_rightloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "bg_right" {
	"male_gestures_anims\bg_right.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"extreme" "19"
			"loop" "31"
			"end" "47"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	addlayer "bg_rightapexDelta"
	blendlayer "bg_rightloopDelta" 0 0.469697 0.712121 1.015152 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_lapexArms" {
	"male_gestures_anims\g_palm_up_lapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_up_lapexSpine" {
	"male_gestures_anims\g_palm_up_lapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_lapexDelta" {
	"male_gestures_anims\g_palm_up_lapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_lloopArms" {
	"male_gestures_anims\g_palm_up_lloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 5
	loop
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_up_lloopSpine" {
	"male_gestures_anims\g_palm_up_lloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 5
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_laccentDelta" {
	"male_gestures_anims\g_palm_up_laccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_l" {
	"male_gestures_anims\g_palm_up_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "21"
			"loop" "25"
			"end" "45"
		}
		"entrytag" "apex"
		"thumbnail_frame" "21"
	}
}
	blendlayer "g_palm_up_lapexArms" 0 0.169492 0.169492 0.423729 xfade spline
	blendlayer "g_palm_up_lapexSpine" 0 0.169492 0.169492 0.423729 spline
	blendlayer "g_palm_up_lloopArms" 0.169492 0.423729 0.762712 1.016949 spline
	blendlayer "g_palm_up_lloopSpine" 0.169492 0.423729 0.762712 1.016949 spline
	addlayer "g_palm_up_lapexDelta"
	addlayer "g_palm_up_laccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_high_lapexArms" {
	"male_gestures_anims\g_palm_up_high_lapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_up_high_lapexSpine" {
	"male_gestures_anims\g_palm_up_high_lapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_high_lapexDelta" {
	"male_gestures_anims\g_palm_up_high_lapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_high_lloopArms" {
	"male_gestures_anims\g_palm_up_high_lloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 5
	loop
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_up_high_lloopSpine" {
	"male_gestures_anims\g_palm_up_high_lloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 5
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_high_laccentDelta" {
	"male_gestures_anims\g_palm_up_high_laccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_up_high_l" {
	"male_gestures_anims\g_palm_up_high_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "21"
			"loop" "25"
			"end" "45"
		}
		"entrytag" "apex"
		"thumbnail_frame" "21"
	}
}
	blendlayer "g_palm_up_high_lapexArms" 0 0.169492 0.169492 0.423729 xfade spline
	blendlayer "g_palm_up_high_lapexSpine" 0 0.169492 0.169492 0.423729 spline
	blendlayer "g_palm_up_high_lloopArms" 0.169492 0.423729 0.762712 1.016949 spline
	blendlayer "g_palm_up_high_lloopSpine" 0.169492 0.423729 0.762712 1.016949 spline
	addlayer "g_palm_up_high_lapexDelta"
	addlayer "g_palm_up_high_laccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downinDelta" {
	"male_gestures_anims\g_ar2_downinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downinFrameArms" {
	"male_gestures_anims\g_ar2_downinFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ar2_downinFrameSpine" {
	"male_gestures_anims\g_ar2_downinFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downinLoopDelta" {
	"male_gestures_anims\g_ar2_downinLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downloopFrameArms" {
	"male_gestures_anims\g_ar2_downloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ar2_downloopFrameSpine" {
	"male_gestures_anims\g_ar2_downloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downloopDelta" {
	"male_gestures_anims\g_ar2_downloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downoutLoopDelta" {
	"male_gestures_anims\g_ar2_downoutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downOutFrameArms" {
	"male_gestures_anims\g_ar2_downOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_ar2_downOutFrameSpine" {
	"male_gestures_anims\g_ar2_downOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_downoutDelta" {
	"male_gestures_anims\g_ar2_downoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_ar2_down" {
	"male_gestures_anims\g_ar2_down.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "6"
			"loop" "40"
			"end" "60"
			"out" "90"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "40"
	}
}
	blendlayer "g_ar2_downinFrameArms" 0 0.060606 0.060606 0.40404 xfade spline
	blendlayer "g_ar2_downinFrameSpine" 0 0.060606 0.060606 0.40404 spline
	blendlayer "g_ar2_downloopFrameArms" 0.060606 0.40404 0.606061 0.909091 xfade spline
	blendlayer "g_ar2_downloopFrameSpine" 0.060606 0.40404 0.606061 0.909091 spline
	blendlayer "g_ar2_downOutFrameArms" 0.606061 0.909091 0.909091 1.010101 spline
	blendlayer "g_ar2_downOutFrameSpine" 0.606061 0.909091 0.909091 1.010101 spline
	addlayer "g_ar2_downinDelta"
	addlayer "g_ar2_downinLoopDelta"
	blendlayer "g_ar2_downloopDelta" 0.060606 0.40404 0.606061 0.909091 spline
	addlayer "g_ar2_downoutLoopDelta"
	addlayer "g_ar2_downoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_lapexArms" {
	"male_gestures_anims\g_palm_out_lapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_out_lapexSpine" {
	"male_gestures_anims\g_palm_out_lapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_lapexDelta" {
	"male_gestures_anims\g_palm_out_lapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_lloopArms" {
	"male_gestures_anims\g_palm_out_lloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_out_lloopSpine" {
	"male_gestures_anims\g_palm_out_lloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_laccentDelta" {
	"male_gestures_anims\g_palm_out_laccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_l" {
	"male_gestures_anims\g_palm_out_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "19"
			"loop" "32"
			"end" "64"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_palm_out_lapexArms" 0 0.120482 0.120482 0.385542 xfade spline
	blendlayer "g_palm_out_lapexSpine" 0 0.120482 0.120482 0.385542 spline
	blendlayer "g_palm_out_lloopArms" 0.120482 0.385542 0.771084 1.012048 spline
	blendlayer "g_palm_out_lloopSpine" 0.120482 0.385542 0.771084 1.012048 spline
	addlayer "g_palm_out_lapexDelta"
	addlayer "g_palm_out_laccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_linDelta" {
	"male_gestures_anims\g_frustrated_point_linDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_linFrameArms" {
	"male_gestures_anims\g_frustrated_point_linFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_frustrated_point_linFrameSpine" {
	"male_gestures_anims\g_frustrated_point_linFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_linLoopDelta" {
	"male_gestures_anims\g_frustrated_point_linLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_lloopFrameArms" {
	"male_gestures_anims\g_frustrated_point_lloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_frustrated_point_lloopFrameSpine" {
	"male_gestures_anims\g_frustrated_point_lloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_lloopDelta" {
	"male_gestures_anims\g_frustrated_point_lloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 5
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_loutLoopDelta" {
	"male_gestures_anims\g_frustrated_point_loutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_lOutFrameArms" {
	"male_gestures_anims\g_frustrated_point_lOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_frustrated_point_lOutFrameSpine" {
	"male_gestures_anims\g_frustrated_point_lOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_loutDelta" {
	"male_gestures_anims\g_frustrated_point_loutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_frustrated_point_l" {
	"male_gestures_anims\g_frustrated_point_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	iklock "rhand" 0.5 0.5

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "5"
			"loop" "38"
			"end" "44"
			"out" "54"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "38"
	}
}
	blendlayer "g_frustrated_point_linFrameArms" 0 0.078125 0.078125 0.59375 xfade spline
	blendlayer "g_frustrated_point_linFrameSpine" 0 0.078125 0.078125 0.59375 spline
	blendlayer "g_frustrated_point_lloopFrameArms" 0.078125 0.59375 0.6875 0.84375 xfade spline
	blendlayer "g_frustrated_point_lloopFrameSpine" 0.078125 0.59375 0.6875 0.84375 spline
	blendlayer "g_frustrated_point_lOutFrameArms" 0.6875 0.84375 0.84375 1.015625 spline
	blendlayer "g_frustrated_point_lOutFrameSpine" 0.6875 0.84375 0.84375 1.015625 spline
	addlayer "g_frustrated_point_linDelta"
	addlayer "g_frustrated_point_linLoopDelta"
	blendlayer "g_frustrated_point_lloopDelta" 0.078125 0.59375 0.6875 0.84375 spline
	addlayer "g_frustrated_point_loutLoopDelta"
	addlayer "g_frustrated_point_loutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_lapexArms" {
	"male_gestures_anims\g_palm_out_high_lapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_out_high_lapexSpine" {
	"male_gestures_anims\g_palm_out_high_lapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_lapexDelta" {
	"male_gestures_anims\g_palm_out_high_lapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_lloopArms" {
	"male_gestures_anims\g_palm_out_high_lloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_g_fist_LapexArms"
}

$sequence "g_palm_out_high_lloopSpine" {
	"male_gestures_anims\g_palm_out_high_lloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_laccentDelta" {
	"male_gestures_anims\g_palm_out_high_laccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_l" {
	"male_gestures_anims\g_palm_out_high_l.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "19"
			"loop" "32"
			"end" "64"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_palm_out_high_lapexArms" 0 0.120482 0.120482 0.385542 xfade spline
	blendlayer "g_palm_out_high_lapexSpine" 0 0.120482 0.120482 0.385542 spline
	blendlayer "g_palm_out_high_lloopArms" 0.120482 0.385542 0.771084 1.012048 spline
	blendlayer "g_palm_out_high_lloopSpine" 0.120482 0.385542 0.771084 1.012048 spline
	addlayer "g_palm_out_high_lapexDelta"
	addlayer "g_palm_out_high_laccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_yesdefault" {
	"male_gestures_anims\hg_nod_yesdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_nod_yesapexDelta" {
	"male_gestures_anims\hg_nod_yesapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_yesloopDelta" {
	"male_gestures_anims\hg_nod_yesloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 24
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_yes" {
	"male_gestures_anims\hg_nod_yes.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "4"
			"extreme" "11"
			"loop" "28"
			"end" "52"
		}
		"entrytag" "apex"
		"thumbnail_frame" "11"
	}
}
	addlayer "hg_nod_yesapexDelta"
	blendlayer "hg_nod_yesloopDelta" 0 0.405797 0.753623 1.014493 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_nodefault" {
	"male_gestures_anims\hg_nod_nodefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_nod_noapexDelta" {
	"male_gestures_anims\hg_nod_noapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_noloopDelta" {
	"male_gestures_anims\hg_nod_noloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 24
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_nod_no" {
	"male_gestures_anims\hg_nod_no.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "5"
			"extreme" "11"
			"loop" "29"
			"end" "63"
		}
		"entrytag" "apex"
		"thumbnail_frame" "11"
	}
}
	addlayer "hg_nod_noapexDelta"
	blendlayer "hg_nod_noloopDelta" 0 0.414286 0.9 1.014286 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_rapexArms" {
	"male_gestures_anims\g_fist_rapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_fist_rapexSpine" {
	"male_gestures_anims\g_fist_rapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_rapexDelta" {
	"male_gestures_anims\g_fist_rapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_rloopArms" {
	"male_gestures_anims\g_fist_rloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_fist_rloopSpine" {
	"male_gestures_anims\g_fist_rloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_raccentDelta" {
	"male_gestures_anims\g_fist_raccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_fist_r" {
	"male_gestures_anims\g_fist_r.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "11"
			"accent" "17"
			"loop" "25"
			"end" "40"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_fist_rapexArms" 0 0.203704 0.203704 0.462963 xfade spline
	blendlayer "g_fist_rapexSpine" 0 0.203704 0.203704 0.462963 spline
	blendlayer "g_fist_rloopArms" 0.203704 0.462963 0.740741 1.018519 spline
	blendlayer "g_fist_rloopSpine" 0.203704 0.462963 0.740741 1.018519 spline
	addlayer "g_fist_rapexDelta"
	addlayer "g_fist_raccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_rapexArms" {
	"male_gestures_anims\g_palm_out_rapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_palm_out_rapexSpine" {
	"male_gestures_anims\g_palm_out_rapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_rapexDelta" {
	"male_gestures_anims\g_palm_out_rapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_rloopArms" {
	"male_gestures_anims\g_palm_out_rloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_palm_out_rloopSpine" {
	"male_gestures_anims\g_palm_out_rloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_raccentDelta" {
	"male_gestures_anims\g_palm_out_raccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_r" {
	"male_gestures_anims\g_palm_out_r.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "19"
			"loop" "32"
			"end" "64"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_palm_out_rapexArms" 0 0.120482 0.120482 0.385542 xfade spline
	blendlayer "g_palm_out_rapexSpine" 0 0.120482 0.120482 0.385542 spline
	blendlayer "g_palm_out_rloopArms" 0.120482 0.385542 0.771084 1.012048 spline
	blendlayer "g_palm_out_rloopSpine" 0.120482 0.385542 0.771084 1.012048 spline
	addlayer "g_palm_out_rapexDelta"
	addlayer "g_palm_out_raccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_rapexArms" {
	"male_gestures_anims\g_palm_out_high_rapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_palm_out_high_rapexSpine" {
	"male_gestures_anims\g_palm_out_high_rapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_rapexDelta" {
	"male_gestures_anims\g_palm_out_high_rapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_rloopArms" {
	"male_gestures_anims\g_palm_out_high_rloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_palm_out_high_rloopSpine" {
	"male_gestures_anims\g_palm_out_high_rloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 15
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_raccentDelta" {
	"male_gestures_anims\g_palm_out_high_raccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_palm_out_high_r" {
	"male_gestures_anims\g_palm_out_high_r.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "19"
			"loop" "32"
			"end" "64"
		}
		"entrytag" "apex"
		"thumbnail_frame" "19"
	}
}
	blendlayer "g_palm_out_high_rapexArms" 0 0.120482 0.120482 0.385542 xfade spline
	blendlayer "g_palm_out_high_rapexSpine" 0 0.120482 0.120482 0.385542 spline
	blendlayer "g_palm_out_high_rloopArms" 0.120482 0.385542 0.771084 1.012048 spline
	blendlayer "g_palm_out_high_rloopSpine" 0.120482 0.385542 0.771084 1.012048 spline
	addlayer "g_palm_out_high_rapexDelta"
	addlayer "g_palm_out_high_raccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downinDelta" {
	"male_gestures_anims\g_smg_downinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downinFrameArms" {
	"male_gestures_anims\g_smg_downinFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_smg_downinFrameSpine" {
	"male_gestures_anims\g_smg_downinFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downinLoopDelta" {
	"male_gestures_anims\g_smg_downinLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downloopFrameArms" {
	"male_gestures_anims\g_smg_downloopFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_smg_downloopFrameSpine" {
	"male_gestures_anims\g_smg_downloopFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downloopDelta" {
	"male_gestures_anims\g_smg_downloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 10
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downoutLoopDelta" {
	"male_gestures_anims\g_smg_downoutLoopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downOutFrameArms" {
	"male_gestures_anims\g_smg_downOutFrameArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_smg_downOutFrameSpine" {
	"male_gestures_anims\g_smg_downOutFrameSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_downoutDelta" {
	"male_gestures_anims\g_smg_downoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_smg_down" {
	"male_gestures_anims\g_smg_down.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"in" "6"
			"loop" "40"
			"end" "60"
			"out" "90"
		}
		"startloop" "loop"
		"endloop" "end"
		"entrytag" "in"
		"exittag" "out"
		"thumbnail_frame" "40"
	}
}
	blendlayer "g_smg_downinFrameArms" 0 0.060606 0.060606 0.40404 xfade spline
	blendlayer "g_smg_downinFrameSpine" 0 0.060606 0.060606 0.40404 spline
	blendlayer "g_smg_downloopFrameArms" 0.060606 0.40404 0.606061 0.909091 xfade spline
	blendlayer "g_smg_downloopFrameSpine" 0.060606 0.40404 0.606061 0.909091 spline
	blendlayer "g_smg_downOutFrameArms" 0.606061 0.909091 0.909091 1.010101 spline
	blendlayer "g_smg_downOutFrameSpine" 0.606061 0.909091 0.909091 1.010101 spline
	addlayer "g_smg_downinDelta"
	addlayer "g_smg_downinLoopDelta"
	blendlayer "g_smg_downloopDelta" 0.060606 0.40404 0.606061 0.909091 spline
	addlayer "g_smg_downoutLoopDelta"
	addlayer "g_smg_downoutDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_forwthrowapexArms" {
	"male_gestures_anims\p_L_forwthrowapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "p_L_forwthrowapexSpine" {
	"male_gestures_anims\p_L_forwthrowapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_forwthrowapexDelta" {
	"male_gestures_anims\p_L_forwthrowapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_forwthrowloopArms" {
	"male_gestures_anims\p_L_forwthrowloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "p_L_forwthrowloopSpine" {
	"male_gestures_anims\p_L_forwthrowloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_forwthrowaccentDelta" {
	"male_gestures_anims\p_L_forwthrowaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "p_L_forwthrow" {
	"male_gestures_anims\p_L_forwthrow.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"accent" "30"
			"loop" "45"
			"end" "48"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	blendlayer "p_L_forwthrowapexArms" 0 0.254237 0.254237 0.762712 xfade spline
	blendlayer "p_L_forwthrowapexSpine" 0 0.254237 0.254237 0.762712 spline
	blendlayer "p_L_forwthrowloopArms" 0.254237 0.762712 0.813559 1.016949 spline
	blendlayer "p_L_forwthrowloopSpine" 0.254237 0.762712 0.813559 1.016949 spline
	addlayer "p_L_forwthrowapexDelta"
	addlayer "p_L_forwthrowaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_chestupapexArms" {
	"male_gestures_anims\g_chestupapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_chestupapexSpine" {
	"male_gestures_anims\g_chestupapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_chestupapexDelta" {
	"male_gestures_anims\g_chestupapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_chestuploopArms" {
	"male_gestures_anims\g_chestuploopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_chestuploopSpine" {
	"male_gestures_anims\g_chestuploopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_chestupaccentDelta" {
	"male_gestures_anims\g_chestupaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_chestup" {
	"male_gestures_anims\g_chestup.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "17"
			"loop" "25"
			"end" "60"
		}
		"entrytag" "apex"
		"thumbnail_frame" "17"
	}
}
	blendlayer "g_chestupapexArms" 0 0.126582 0.126582 0.316456 xfade spline
	blendlayer "g_chestupapexSpine" 0 0.126582 0.126582 0.316456 spline
	blendlayer "g_chestuploopArms" 0.126582 0.316456 0.759494 1.012658 spline
	blendlayer "g_chestuploopSpine" 0.126582 0.316456 0.759494 1.012658 spline
	addlayer "g_chestupapexDelta"
	addlayer "g_chestupaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_LhandeaseapexArms" {
	"male_gestures_anims\g_LhandeaseapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_LhandeaseapexSpine" {
	"male_gestures_anims\g_LhandeaseapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_LhandeaseapexDelta" {
	"male_gestures_anims\g_LhandeaseapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_LhandeaseloopArms" {
	"male_gestures_anims\g_LhandeaseloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_LhandeaseloopSpine" {
	"male_gestures_anims\g_LhandeaseloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_LhandeaseaccentDelta" {
	"male_gestures_anims\g_LhandeaseaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_Lhandease" {
	"male_gestures_anims\g_Lhandease.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "13"
			"accent" "23"
			"loop" "41"
			"end" "42"
		}
		"entrytag" "apex"
		"thumbnail_frame" "23"
	}
}
	blendlayer "g_LhandeaseapexArms" 0 0.188406 0.188406 0.594203 xfade spline
	blendlayer "g_LhandeaseapexSpine" 0 0.188406 0.188406 0.594203 spline
	blendlayer "g_LhandeaseloopArms" 0.188406 0.594203 0.608696 1.014493 spline
	blendlayer "g_LhandeaseloopSpine" 0.188406 0.594203 0.608696 1.014493 spline
	addlayer "g_LhandeaseapexDelta"
	addlayer "g_LhandeaseaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turnRdefault" {
	"male_gestures_anims\hg_turnRdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_turnRapexDelta" {
	"male_gestures_anims\hg_turnRapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turnRloopDelta" {
	"male_gestures_anims\hg_turnRloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turnR" {
	"male_gestures_anims\hg_turnR.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"extreme" "30"
			"loop" "50"
			"end" "60"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	addlayer "hg_turnRapexDelta"
	blendlayer "hg_turnRloopDelta" 0 0.632911 0.759494 1.012658 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turnLdefault" {
	"male_gestures_anims\hg_turnLdefault.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "hg_turnLapexDelta" {
	"male_gestures_anims\hg_turnLapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turnLloopDelta" {
	"male_gestures_anims\hg_turnLloopDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "hg_turnL" {
	"male_gestures_anims\hg_turnL.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "15"
			"extreme" "30"
			"loop" "50"
			"end" "60"
		}
		"entrytag" "apex"
		"thumbnail_frame" "30"
	}
}
	addlayer "hg_turnLapexDelta"
	blendlayer "hg_turnLloopDelta" 0 0.632911 0.759494 1.012658 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarmsapexArms" {
	"male_gestures_anims\g_openarmsapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_openarmsapexSpine" {
	"male_gestures_anims\g_openarmsapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarmsapexDelta" {
	"male_gestures_anims\g_openarmsapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarmsloopArms" {
	"male_gestures_anims\g_openarmsloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_openarmsloopSpine" {
	"male_gestures_anims\g_openarmsloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarmsaccentDelta" {
	"male_gestures_anims\g_openarmsaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarms" {
	"male_gestures_anims\g_openarms.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "21"
			"loop" "50"
			"end" "52"
		}
		"entrytag" "apex"
		"thumbnail_frame" "21"
	}
}
	blendlayer "g_openarmsapexArms" 0 0.140845 0.140845 0.704225 xfade spline
	blendlayer "g_openarmsapexSpine" 0 0.140845 0.140845 0.704225 spline
	blendlayer "g_openarmsloopArms" 0.140845 0.704225 0.732394 1.014084 spline
	blendlayer "g_openarmsloopSpine" 0.140845 0.704225 0.732394 1.014084 spline
	addlayer "g_openarmsapexDelta"
	addlayer "g_openarmsaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarms_rightapexArms" {
	"male_gestures_anims\g_openarms_rightapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_openarms_rightapexSpine" {
	"male_gestures_anims\g_openarms_rightapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarms_rightapexDelta" {
	"male_gestures_anims\g_openarms_rightapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarms_rightloopArms" {
	"male_gestures_anims\g_openarms_rightloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_GestureButton_rightapexArms"
}

$sequence "g_openarms_rightloopSpine" {
	"male_gestures_anims\g_openarms_rightloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarms_rightaccentDelta" {
	"male_gestures_anims\g_openarms_rightaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_openarms_right" {
	"male_gestures_anims\g_openarms_right.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "21"
			"loop" "50"
			"end" "52"
		}
		"entrytag" "apex"
		"thumbnail_frame" "21"
	}
}
	blendlayer "g_openarms_rightapexArms" 0 0.140845 0.140845 0.704225 xfade spline
	blendlayer "g_openarms_rightapexSpine" 0 0.140845 0.140845 0.704225 spline
	blendlayer "g_openarms_rightloopArms" 0.140845 0.704225 0.732394 1.014084 spline
	blendlayer "g_openarms_rightloopSpine" 0.140845 0.704225 0.732394 1.014084 spline
	addlayer "g_openarms_rightapexDelta"
	addlayer "g_openarms_rightaccentDelta"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointapexArms" {
	"male_gestures_anims\g_pointapexArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pointapexSpine" {
	"male_gestures_anims\g_pointapexSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointapexDelta" {
	"male_gestures_anims\g_pointapexDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointloopArms" {
	"male_gestures_anims\g_pointloopArms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_g_placeholderapexArms"
}

$sequence "g_pointloopSpine" {
	"male_gestures_anims\g_pointloopSpine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_pointaccentDelta" {
	"male_gestures_anims\g_pointaccentDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
}

$sequence "g_point" {
	"male_gestures_anims\g_point.smd"
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0

keyvalues
{
	faceposer 
	{
		"type" "gesture"
		 "tags" 
		{
			"apex" "10"
			"accent" "25"
			"loop" "40"
			"end" "41"
		}
		"entrytag" "apex"
		"thumbnail_frame" "25"
	}
}
	blendlayer "g_pointapexArms" 0 0.144928 0.144928 0.57971 xfade spline
	blendlayer "g_pointapexSpine" 0 0.144928 0.144928 0.57971 spline
	blendlayer "g_pointloopArms" 0.144928 0.57971 0.594203 1.014493 spline
	blendlayer "g_pointloopSpine" 0.144928 0.57971 0.594203 1.014493 spline
	addlayer "g_pointapexDelta"
	addlayer "g_pointaccentDelta"
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
