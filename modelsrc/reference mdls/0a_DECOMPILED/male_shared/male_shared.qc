// Created by Crowbar 0.49.0.0

$modelname "Humans\male_shared.mdl"

$surfaceprop "flesh"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\humans\male_animations\"

$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0
$attachment "eyes" "ValveBiped.Bip01_Head1" 3.66 -4.21 0 rotate 0 -80.1 -90

$cbox 0 0 0 0 0 0

$bbox -7.602 -13.918 -2.744 10.273 13.057 72.962

// $hboxset "default"
// $hbox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31 ""
// $hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25 ""
// $hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62 ""
// $hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5 ""
// $hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75 ""
// $hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45 ""
// $hbox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5 ""
// $hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
// $hbox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72 ""
// $hbox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16 ""
// $hbox 6 "ValveBiped.Bip01_L_Toe0" -0.5 -3 -2.19 2.5 0 2.46 ""
// $hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
// $hbox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18 ""
// $hbox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72 ""
// $hbox 7 "ValveBiped.Bip01_R_Toe0" -0.5 -3 -2.6 2.5 0 2.1 ""
// $hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5 ""
// $hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7 ""
// $skipboneinbbox

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

$poseparameter "move_yaw" -180 180 360
$poseparameter "aim_yaw" -60 60 0
$poseparameter "aim_pitch" -88.88165 50 0
$poseparameter "body_yaw" -29.52251 29.50387 0
$poseparameter "spine_yaw" -30.62754 30.62212 0
$poseparameter "neck_trans" -0.178728 0.214179 0
$poseparameter "head_yaw" -66.70586 66.7055 0
$poseparameter "head_pitch" -34.84618 25.37099 0
$poseparameter "head_roll" -10.93142 10.85306 0

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$weightlist "weights_layer_crouch_walk_no_weapon" {
	 "ValveBiped.Bip01_Pelvis" 0
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

$weightlist "weights_crouch_run_all_delta" {
	 "ValveBiped.Bip01_Pelvis" 1
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

$weightlist "weights_turnleft" {
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

$weightlist "weights_gesture_turn_left_45_flatdefault" {
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

$weightlist "weights_gesture_reload_smg1spine" {
	 "ValveBiped.Bip01_Pelvis" 0
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

$weightlist "weights_gesture_reload_smg1arms" {
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

$weightlist "weights_Fear_Reaction_gesturespine" {
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

$weightlist "weights_layer_Aim_all" {
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

$weightlist "weights_layer_walk_aiming" {
	 "ValveBiped.Bip01_Pelvis" 0.1
	 "ValveBiped.Bip01_Spine" 0.2
	 "ValveBiped.Bip01_Spine1" 0.4
	 "ValveBiped.Bip01_Spine2" 0.6
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

$weightlist "weights_body_rot_z" {
	 "ValveBiped.Bip01_Pelvis" 1
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine1" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_Spine4" 1
	 "ValveBiped.Bip01_Neck1" 1
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

$animation "a_WalkS" "male_shared_anims\a_WalkS.smd" {
	fps 30
	loop
}

$animation "a_WalkSE" "male_shared_anims\a_WalkSE.smd" {
	fps 30
	loop
}

$animation "a_WalkE" "male_shared_anims\a_WalkE.smd" {
	fps 30
	loop
}

$animation "a_WalkNE" "male_shared_anims\a_WalkNE.smd" {
	fps 30
	loop
}

$animation "a_WalkN" "male_shared_anims\a_WalkN.smd" {
	fps 30
	loop
}

$animation "a_WalkNW" "male_shared_anims\a_WalkNW.smd" {
	fps 30
	loop
}

$animation "a_WalkW" "male_shared_anims\a_WalkW.smd" {
	fps 30
	loop
}

$animation "a_WalkSW" "male_shared_anims\a_WalkSW.smd" {
	fps 30
	loop
}

$animation "a_RunS" "male_shared_anims\a_RunS.smd" {
	fps 31
	loop
}

$animation "a_RunSE" "male_shared_anims\a_RunSE.smd" {
	fps 29
	loop
}

$animation "a_RunE" "male_shared_anims\a_RunE.smd" {
	fps 31
	loop
}

$animation "a_RunNE" "male_shared_anims\a_RunNE.smd" {
	fps 29
	loop
}

$animation "a_RunN" "male_shared_anims\a_RunN.smd" {
	fps 30
	loop
}

$animation "a_RunNW" "male_shared_anims\a_RunNW.smd" {
	fps 28
	loop
}

$animation "a_RunW" "male_shared_anims\a_RunW.smd" {
	fps 32
	loop
}

$animation "a_RunSW" "male_shared_anims\a_RunSW.smd" {
	fps 31
	loop
}

$animation "a_WalkS_Moderate" "male_shared_anims\a_WalkS_Moderate.smd" {
	fps 31
	loop
}

$animation "a_WalkSE_Moderate" "male_shared_anims\a_WalkSE_Moderate.smd" {
	fps 30
	loop
}

$animation "a_WalkE_Moderate" "male_shared_anims\a_WalkE_Moderate.smd" {
	fps 33
	loop
}

$animation "a_WalkNE_Moderate" "male_shared_anims\a_WalkNE_Moderate.smd" {
	fps 32
	loop
}

$animation "a_WalkN_Moderate" "male_shared_anims\a_WalkN_Moderate.smd" {
	fps 32
	loop
}

$animation "a_WalkNW_Moderate" "male_shared_anims\a_WalkNW_Moderate.smd" {
	fps 32
	loop
}

$animation "a_WalkW_Moderate" "male_shared_anims\a_WalkW_Moderate.smd" {
	fps 33
	loop
}

$animation "a_WalkSW_Moderate" "male_shared_anims\a_WalkSW_Moderate.smd" {
	fps 30
	loop
}

$animation "a_sprint" "male_shared_anims\a_sprint.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkS" "male_shared_anims\a_Crouch_walkS.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkSE" "male_shared_anims\a_Crouch_walkSE.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkE" "male_shared_anims\a_Crouch_walkE.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkNE" "male_shared_anims\a_Crouch_walkNE.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkN" "male_shared_anims\a_Crouch_walkN.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkNW" "male_shared_anims\a_Crouch_walkNW.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkW" "male_shared_anims\a_Crouch_walkW.smd" {
	fps 30
	loop
}

$animation "a_Crouch_walkSW" "male_shared_anims\a_Crouch_walkSW.smd" {
	fps 30
	loop
}

$animation "a_Crouch_runN" "male_shared_anims\a_Crouch_runN.smd" {
	fps 30
	loop
}

$animation "a_crouch_runS_delta" "male_shared_anims\a_crouch_runS_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runSE_delta" "male_shared_anims\a_crouch_runSE_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runE_delta" "male_shared_anims\a_crouch_runE_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runNE_delta" "male_shared_anims\a_crouch_runNE_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runN_delta" "male_shared_anims\a_crouch_runN_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runNW_delta" "male_shared_anims\a_crouch_runNW_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runW_delta" "male_shared_anims\a_crouch_runW_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_crouch_runSW_delta" "male_shared_anims\a_crouch_runSW_delta.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$animation "a_RunN_protected" "male_shared_anims\a_RunN_protected.smd" {
	fps 30
	loop
}

$animation "a_run_panicked" "male_shared_anims\a_run_panicked.smd" {
	fps 30
	loop
}

$animation "a_walk_panicked" "male_shared_anims\a_walk_panicked.smd" {
	fps 30
	loop
}

$animation "a_luggage_walk" "male_shared_anims\a_luggage_walk.smd" {
	fps 30
	loop
}

$animation "a_pace" "male_shared_anims\a_pace.smd" {
	fps 30
	loop
}

$animation "a_walk_midspeed" "male_shared_anims\a_walk_midspeed.smd" {
	fps 30
	loop
}

$animation "a_aim_neutral" "male_shared_anims\a_aim_neutral.smd" {
	fps 30
}

$animation "a_run_aim_down_right" "male_shared_anims\a_run_aim_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_down_center" "male_shared_anims\a_run_aim_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_down_left" "male_shared_anims\a_run_aim_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_mid_right" "male_shared_anims\a_run_aim_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_mid_center" "male_shared_anims\a_run_aim_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_mid_left" "male_shared_anims\a_run_aim_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_up_right" "male_shared_anims\a_run_aim_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_up_center" "male_shared_anims\a_run_aim_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_up_left" "male_shared_anims\a_run_aim_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_straight_up" "male_shared_anims\a_run_aim_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_aim_AR2_neutral" "male_shared_anims\a_aim_AR2_neutral.smd" {
	fps 30
}

$animation "a_run_aim_AR2_down_right" "male_shared_anims\a_run_aim_AR2_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_down_center" "male_shared_anims\a_run_aim_AR2_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_down_left" "male_shared_anims\a_run_aim_AR2_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_mid_right" "male_shared_anims\a_run_aim_AR2_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_mid_center" "male_shared_anims\a_run_aim_AR2_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_mid_left" "male_shared_anims\a_run_aim_AR2_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_up_right" "male_shared_anims\a_run_aim_AR2_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_up_center" "male_shared_anims\a_run_aim_AR2_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_up_left" "male_shared_anims\a_run_aim_AR2_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_AR2_straight_up" "male_shared_anims\a_run_aim_AR2_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_aim_Alert_neutral" "male_shared_anims\a_aim_Alert_neutral.smd" {
	fps 30
}

$animation "a_run_aim_Alert_down_right" "male_shared_anims\a_run_aim_Alert_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_down_center" "male_shared_anims\a_run_aim_Alert_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_down_left" "male_shared_anims\a_run_aim_Alert_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_mid_right" "male_shared_anims\a_run_aim_Alert_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_mid_center" "male_shared_anims\a_run_aim_Alert_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_mid_left" "male_shared_anims\a_run_aim_Alert_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_up_right" "male_shared_anims\a_run_aim_Alert_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_up_center" "male_shared_anims\a_run_aim_Alert_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_up_left" "male_shared_anims\a_run_aim_Alert_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_run_aim_Alert_straight_up" "male_shared_anims\a_run_aim_Alert_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_aim_AR2_Alert_neutral" "male_shared_anims\a_aim_AR2_Alert_neutral.smd" {
	fps 30
}

$animation "a_AR2_aim_Alert_down_right" "male_shared_anims\a_AR2_aim_Alert_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_down_center" "male_shared_anims\a_AR2_aim_Alert_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_down_left" "male_shared_anims\a_AR2_aim_Alert_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_mid_right" "male_shared_anims\a_AR2_aim_Alert_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_mid_center" "male_shared_anims\a_AR2_aim_Alert_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_mid_left" "male_shared_anims\a_AR2_aim_Alert_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_up_right" "male_shared_anims\a_AR2_aim_Alert_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_up_center" "male_shared_anims\a_AR2_aim_Alert_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_up_left" "male_shared_anims\a_AR2_aim_Alert_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_Alert_straight_up" "male_shared_anims\a_AR2_aim_Alert_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_aimSMG_neutral" "male_shared_anims\a_aimSMG_neutral.smd" {
	fps 30
}

$animation "a_runSMG_aim_down_right" "male_shared_anims\a_runSMG_aim_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_down_center" "male_shared_anims\a_runSMG_aim_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_down_left" "male_shared_anims\a_runSMG_aim_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_mid_right" "male_shared_anims\a_runSMG_aim_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_mid_center" "male_shared_anims\a_runSMG_aim_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_mid_left" "male_shared_anims\a_runSMG_aim_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_up_right" "male_shared_anims\a_runSMG_aim_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_up_center" "male_shared_anims\a_runSMG_aim_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_up_left" "male_shared_anims\a_runSMG_aim_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_runSMG_aim_straight_up" "male_shared_anims\a_runSMG_aim_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_aimAR2_neutral" "male_shared_anims\a_aimAR2_neutral.smd" {
	fps 30
}

$animation "a_AR2_aim_down_right" "male_shared_anims\a_AR2_aim_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_down_center" "male_shared_anims\a_AR2_aim_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_down_left" "male_shared_anims\a_AR2_aim_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_mid_right" "male_shared_anims\a_AR2_aim_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_mid_center" "male_shared_anims\a_AR2_aim_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_mid_left" "male_shared_anims\a_AR2_aim_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_up_right" "male_shared_anims\a_AR2_aim_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_up_center" "male_shared_anims\a_AR2_aim_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_up_left" "male_shared_anims\a_AR2_aim_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_AR2_aim_straight_up" "male_shared_anims\a_AR2_aim_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkaimSMG_neutral" "male_shared_anims\a_walkaimSMG_neutral.smd" {
	fps 30
}

$animation "a_walkSMG_aim_down_right" "male_shared_anims\a_walkSMG_aim_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_down_center" "male_shared_anims\a_walkSMG_aim_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_down_left" "male_shared_anims\a_walkSMG_aim_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_mid_right" "male_shared_anims\a_walkSMG_aim_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_mid_center" "male_shared_anims\a_walkSMG_aim_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_mid_left" "male_shared_anims\a_walkSMG_aim_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_up_right" "male_shared_anims\a_walkSMG_aim_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_up_center" "male_shared_anims\a_walkSMG_aim_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_up_left" "male_shared_anims\a_walkSMG_aim_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkSMG_aim_straight_up" "male_shared_anims\a_walkSMG_aim_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkaimAR2_neutral" "male_shared_anims\a_walkaimAR2_neutral.smd" {
	fps 30
}

$animation "a_walkAR2_aim_down_right" "male_shared_anims\a_walkAR2_aim_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_down_center" "male_shared_anims\a_walkAR2_aim_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_down_left" "male_shared_anims\a_walkAR2_aim_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_mid_right" "male_shared_anims\a_walkAR2_aim_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_mid_center" "male_shared_anims\a_walkAR2_aim_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_mid_left" "male_shared_anims\a_walkAR2_aim_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_up_right" "male_shared_anims\a_walkAR2_aim_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_up_center" "male_shared_anims\a_walkAR2_aim_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_up_left" "male_shared_anims\a_walkAR2_aim_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_walkAR2_aim_straight_up" "male_shared_anims\a_walkAR2_aim_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RunN_aim" "male_shared_anims\a_RunN_aim.smd" {
	fps 30
	loop
}

$animation "a_WalkN_SMG" "male_shared_anims\a_WalkN_SMG.smd" {
	fps 30
	loop
}

$animation "a_RunN_AR2_aim" "male_shared_anims\a_RunN_AR2_aim.smd" {
	fps 30
	loop
}

$animation "a_WalkN_AR2" "male_shared_anims\a_WalkN_AR2.smd" {
	fps 30
	loop
}

$animation "a_WalkN_alert_SMG" "male_shared_anims\a_WalkN_alert_SMG.smd" {
	fps 30
	loop
}

$animation "a_WalkN_Alert_AR2" "male_shared_anims\a_WalkN_Alert_AR2.smd" {
	fps 30
	loop
}

$animation "a_RunN_alert_SMG" "male_shared_anims\a_RunN_alert_SMG.smd" {
	fps 30
	loop
}

$animation "a_RunN_alert_AR2" "male_shared_anims\a_RunN_alert_AR2.smd" {
	fps 30
	loop
}

$animation "a_RunN_SMG" "male_shared_anims\a_RunN_SMG.smd" {
	fps 30
	loop
}

$animation "a_RunN_AR2" "male_shared_anims\a_RunN_AR2.smd" {
	fps 30
	loop
}

$animation "Man_Gun_neutral" "male_shared_anims\Man_Gun_neutral.smd" {
	fps 30
}

$animation "Man_Gun_down_left" "male_shared_anims\Man_Gun_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_down_center" "male_shared_anims\Man_Gun_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_down_right" "male_shared_anims\Man_Gun_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_mid_left" "male_shared_anims\Man_Gun_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_mid_center" "male_shared_anims\Man_Gun_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_mid_right" "male_shared_anims\Man_Gun_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_up_left" "male_shared_anims\Man_Gun_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_up_center" "male_shared_anims\Man_Gun_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "Man_Gun_up_right" "male_shared_anims\Man_Gun_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$animation "a_RunN_SMG1_Relaxed" "male_shared_anims\a_RunN_SMG1_Relaxed.smd" {
	fps 30
	loop
}

$animation "a_RunN_AR2_Relaxed" "male_shared_anims\a_RunN_AR2_Relaxed.smd" {
	fps 30
	loop
}

$animation "a_RunN_RPG" "male_shared_anims\a_RunN_RPG.smd" {
	fps 30
	loop
}

$animation "a_aim_RPG_neutral" "male_shared_anims\a_aim_RPG_neutral.smd" {
	fps 30
}

$animation "a_RPG_aim_down_left" "male_shared_anims\a_RPG_aim_down_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_down_center" "male_shared_anims\a_RPG_aim_down_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_down_right" "male_shared_anims\a_RPG_aim_down_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_mid_left" "male_shared_anims\a_RPG_aim_mid_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_mid_center" "male_shared_anims\a_RPG_aim_mid_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_mid_right" "male_shared_anims\a_RPG_aim_mid_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_up_left" "male_shared_anims\a_RPG_aim_up_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_up_center" "male_shared_anims\a_RPG_aim_up_center.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_up_right" "male_shared_anims\a_RPG_aim_up_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RPG_aim_straight_up" "male_shared_anims\a_RPG_aim_straight_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$animation "a_RunN_RPG_Relaxed" "male_shared_anims\a_RunN_RPG_Relaxed.smd" {
	fps 30
	loop
}

$animation "a_WalkN_package" "male_shared_anims\a_WalkN_package.smd" {
	fps 30
	loop
}

$animation "a_jump_holding_hit" "male_shared_anims\a_jump_holding_hit.smd" {
	fps 30
}

$animation "a_pose_neutral" "male_shared_anims\a_pose_neutral.smd" {
	fps 30
}

$animation "a_body_rot" "male_shared_anims\a_body_rot.smd" {
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$animation "a_body_rot_z_rt" "male_shared_anims\a_body_rot_z_rt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$animation "a_body_rot_z_lt" "male_shared_anims\a_body_rot_z_lt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$animation "a_spine_rot" "male_shared_anims\a_spine_rot.smd" {
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$animation "a_spine_rot_z_rt" "male_shared_anims\a_spine_rot_z_rt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$animation "a_spine_rot_z_lt" "male_shared_anims\a_spine_rot_z_lt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$animation "a_head_rot" "male_shared_anims\a_head_rot.smd" {
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_head_rot_lt" "male_shared_anims\a_head_rot_lt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_head_rot_rt" "male_shared_anims\a_head_rot_rt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_neck_trans" "male_shared_anims\a_neck_trans.smd" {
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_neck_trans_fwd" "male_shared_anims\a_neck_trans_fwd.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_neck_trans_back" "male_shared_anims\a_neck_trans_back.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_head_rot_dwn" "male_shared_anims\a_head_rot_dwn.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_head_rot_up" "male_shared_anims\a_head_rot_up.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_head_rot_z_rt" "male_shared_anims\a_head_rot_z_rt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$animation "a_head_rot_z_lt" "male_shared_anims\a_head_rot_z_lt.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$sequence "idle_subtle" {
	"male_shared_anims\idle_subtle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "idle_angry" {
	"male_shared_anims\idle_subtle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "LineIdle01" {
	"male_shared_anims\LineIdle01.smd"
	activity "ACT_BUSY_QUEUE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "LineIdle02" {
	"male_shared_anims\LineIdle02.smd"
	activity "ACT_BUSY_QUEUE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "LineIdle03" {
	"male_shared_anims\LineIdle03.smd"
	activity "ACT_BUSY_QUEUE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "LineIdle04" {
	"male_shared_anims\LineIdle04.smd"
	activity "ACT_BUSY_QUEUE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Crouch_idleD" {
	"male_shared_anims\Crouch_idleD.smd"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node "crouching"
	fps 30
	loop
}

$sequence "layer_crouch_walk_no_weapon" {
	"male_shared_anims\layer_crouch_walk_no_weapon.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "layer_crouch_run_no_weapon" {
	"male_shared_anims\layer_crouch_run_no_weapon.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "walk_all_Moderate" {
	"a_WalkS_Moderate"
	"a_WalkSE_Moderate"
	"a_WalkE_Moderate"
	"a_WalkNE_Moderate"
	"a_WalkN_Moderate"
	"a_WalkNW_Moderate"
	"a_WalkW_Moderate"
	"a_WalkSW_Moderate"
	"a_WalkS_Moderate"
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6006 8 "NPC_Citizen" }
	{ event 6007 25 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	node "walking"
	fps 31
	loop
}

$sequence "walk_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6006 8 "NPC_Citizen" }
	{ event 6007 22 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	node "walking"
	fps 30
	loop
}

$sequence "run_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 15 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	node "running"
	fps 31
	loop
}

$sequence "sprint_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_sprint"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 14 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	node "running"
	fps 31
	loop
}

$sequence "Crouch_walk_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	node "walk_crouching"
	fps 30
	loop
}

$sequence "crouch_run_all_delta" {
	"a_crouch_runS_delta"
	"a_crouch_runSE_delta"
	"a_crouch_runE_delta"
	"a_crouch_runNE_delta"
	"a_crouch_runN_delta"
	"a_crouch_runNW_delta"
	"a_crouch_runW_delta"
	"a_crouch_runSW_delta"
	"a_crouch_runS_delta"
	blend "move_yaw" -180 180
	blendwidth 9
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "lfoot" 1 1
	iklock "rfoot" 1 1
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_crouch_run_all_delta"
}

$sequence "crouchRUNALL1" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "crouch_run_all_delta"
	addlayer "layer_crouch_run_no_weapon"
	node "run_crouching"
	fps 31
	loop
}

$sequence "Stand_to_crouch" {
	"male_shared_anims\Stand_to_crouch.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "standing" "crouching"
	fps 30
}

$sequence "Crouch_to_stand" {
	"male_shared_anims\Crouch_to_stand.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "crouching" "standing"
	fps 30
}

$sequence "Open_door_away" {
	"male_shared_anims\Open_door_away.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Open_door_towards_right" {
	"male_shared_anims\Open_door_towards_right.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Open_door_towards_left" {
	"male_shared_anims\Open_door_towards_left.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "turnleft" {
	"male_shared_anims\turnleft.smd"
	activity "ACT_GESTURE_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	weightlist "weights_turnleft"
}

$sequence "turnright" {
	"male_shared_anims\turnright.smd"
	activity "ACT_GESTURE_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_left_45default" {
	"male_shared_anims\gesture_turn_left_45default.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_45inDelta" {
	"male_shared_anims\gesture_turn_left_45inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_45outDelta" {
	"male_shared_anims\gesture_turn_left_45outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_45" {
	"male_shared_anims\gesture_turn_left_45.smd"
	activity "ACT_GESTURE_TURN_LEFT45" 1
	fadein 0.2
	fadeout 0.2
	addlayer "gesture_turn_left_45default"
	blendlayer "gesture_turn_left_45default" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_left_45inDelta"
	blendlayer "gesture_turn_left_45outDelta" 0.408163 0.408163 0.408163 1.020408 spline
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_left_90default" {
	"male_shared_anims\gesture_turn_left_90default.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_90inDelta" {
	"male_shared_anims\gesture_turn_left_90inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_90outDelta" {
	"male_shared_anims\gesture_turn_left_90outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_90" {
	"male_shared_anims\gesture_turn_left_90.smd"
	activity "ACT_GESTURE_TURN_LEFT90" 1
	fadein 0.2
	fadeout 0.2
	addlayer "gesture_turn_left_90default"
	blendlayer "gesture_turn_left_90default" 0.357143 0.357143 0.357143 1.017857 spline
	addlayer "gesture_turn_left_90inDelta"
	blendlayer "gesture_turn_left_90outDelta" 0.357143 0.357143 0.357143 1.017857 spline
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_left_180default" {
	"male_shared_anims\gesture_turn_left_180default.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_180inDelta" {
	"male_shared_anims\gesture_turn_left_180inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_180outDelta" {
	"male_shared_anims\gesture_turn_left_180outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_left_180" {
	"male_shared_anims\gesture_turn_left_180.smd"
	activity "ACT_GESTURE_TURN_LEFT180" 1
	fadein 0.2
	fadeout 0.2
	addlayer "gesture_turn_left_180default"
	blendlayer "gesture_turn_left_180default" 0.357143 0.357143 0.357143 1.017857 spline
	addlayer "gesture_turn_left_180inDelta"
	blendlayer "gesture_turn_left_180outDelta" 0.357143 0.357143 0.357143 1.017857 spline
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_right_45default" {
	"male_shared_anims\gesture_turn_right_45default.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_45inDelta" {
	"male_shared_anims\gesture_turn_right_45inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_45outDelta" {
	"male_shared_anims\gesture_turn_right_45outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_45" {
	"male_shared_anims\gesture_turn_right_45.smd"
	activity "ACT_GESTURE_TURN_RIGHT45" 1
	fadein 0.2
	fadeout 0.2
	addlayer "gesture_turn_right_45default"
	blendlayer "gesture_turn_right_45default" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_right_45inDelta"
	blendlayer "gesture_turn_right_45outDelta" 0.408163 0.408163 0.408163 1.020408 spline
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_right_90default" {
	"male_shared_anims\gesture_turn_right_90default.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_90inDelta" {
	"male_shared_anims\gesture_turn_right_90inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_90outDelta" {
	"male_shared_anims\gesture_turn_right_90outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_90" {
	"male_shared_anims\gesture_turn_right_90.smd"
	activity "ACT_GESTURE_TURN_RIGHT90" 1
	fadein 0.2
	fadeout 0.2
	addlayer "gesture_turn_right_90default"
	blendlayer "gesture_turn_right_90default" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_right_90inDelta"
	blendlayer "gesture_turn_right_90outDelta" 0.408163 0.408163 0.408163 1.020408 spline
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_right_180default" {
	"male_shared_anims\gesture_turn_right_180default.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_180inDelta" {
	"male_shared_anims\gesture_turn_right_180inDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_180outDelta" {
	"male_shared_anims\gesture_turn_right_180outDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_turn_right_180" {
	"male_shared_anims\gesture_turn_right_180.smd"
	activity "ACT_GESTURE_TURN_RIGHT180" 1
	fadein 0.2
	fadeout 0.2
	addlayer "gesture_turn_right_180default"
	blendlayer "gesture_turn_right_180default" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_right_180inDelta"
	blendlayer "gesture_turn_right_180outDelta" 0.408163 0.408163 0.408163 1.020408 spline
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_left_45_flatdefault" {
	"male_shared_anims\gesture_turn_left_45_flatdefault.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_45_flatinDelta" {
	"male_shared_anims\gesture_turn_left_45_flatinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_45_flatoutDelta" {
	"male_shared_anims\gesture_turn_left_45_flatoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_45_flat" {
	"male_shared_anims\gesture_turn_left_45_flat.smd"
	activity "ACT_GESTURE_TURN_LEFT45_FLAT" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "gesture_turn_left_45_flatdefault" 0 0.408163 0.408163 0.408163 spline
	blendlayer "gesture_turn_left_45_flatdefault" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_left_45_flatinDelta"
	addlayer "gesture_turn_left_45_flatoutDelta"
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_left_90_flatdefault" {
	"male_shared_anims\gesture_turn_left_90_flatdefault.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_90_flatinDelta" {
	"male_shared_anims\gesture_turn_left_90_flatinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_90_flatoutDelta" {
	"male_shared_anims\gesture_turn_left_90_flatoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_90_flat" {
	"male_shared_anims\gesture_turn_left_90_flat.smd"
	activity "ACT_GESTURE_TURN_LEFT90_FLAT" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "gesture_turn_left_90_flatdefault" 0 0.357143 0.357143 0.357143 spline
	blendlayer "gesture_turn_left_90_flatdefault" 0.357143 0.357143 0.357143 1.017857 spline
	addlayer "gesture_turn_left_90_flatinDelta"
	addlayer "gesture_turn_left_90_flatoutDelta"
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_left_180_flatdefault" {
	"male_shared_anims\gesture_turn_left_180_flatdefault.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_180_flatinDelta" {
	"male_shared_anims\gesture_turn_left_180_flatinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_180_flatoutDelta" {
	"male_shared_anims\gesture_turn_left_180_flatoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_left_180_flat" {
	"male_shared_anims\gesture_turn_left_180_flat.smd"
	activity "ACT_GESTURE_TURN_LEFT180_FLAT" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "gesture_turn_left_180_flatdefault" 0 0.357143 0.357143 0.357143 spline
	blendlayer "gesture_turn_left_180_flatdefault" 0.357143 0.357143 0.357143 1.017857 spline
	addlayer "gesture_turn_left_180_flatinDelta"
	addlayer "gesture_turn_left_180_flatoutDelta"
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_right_45_flatdefault" {
	"male_shared_anims\gesture_turn_right_45_flatdefault.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_45_flatinDelta" {
	"male_shared_anims\gesture_turn_right_45_flatinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_45_flatoutDelta" {
	"male_shared_anims\gesture_turn_right_45_flatoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_45_flat" {
	"male_shared_anims\gesture_turn_right_45_flat.smd"
	activity "ACT_GESTURE_TURN_RIGHT45_FLAT" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "gesture_turn_right_45_flatdefault" 0 0.408163 0.408163 0.408163 spline
	blendlayer "gesture_turn_right_45_flatdefault" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_right_45_flatinDelta"
	addlayer "gesture_turn_right_45_flatoutDelta"
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_right_90_flatdefault" {
	"male_shared_anims\gesture_turn_right_90_flatdefault.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_90_flatinDelta" {
	"male_shared_anims\gesture_turn_right_90_flatinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_90_flatoutDelta" {
	"male_shared_anims\gesture_turn_right_90_flatoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_90_flat" {
	"male_shared_anims\gesture_turn_right_90_flat.smd"
	activity "ACT_GESTURE_TURN_RIGHT90_FLAT" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "gesture_turn_right_90_flatdefault" 0 0.408163 0.408163 0.408163 spline
	blendlayer "gesture_turn_right_90_flatdefault" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_right_90_flatinDelta"
	addlayer "gesture_turn_right_90_flatoutDelta"
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_turn_right_180_flatdefault" {
	"male_shared_anims\gesture_turn_right_180_flatdefault.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_180_flatinDelta" {
	"male_shared_anims\gesture_turn_right_180_flatinDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_180_flatoutDelta" {
	"male_shared_anims\gesture_turn_right_180_flatoutDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_turn_left_45_flatdefault"
}

$sequence "gesture_turn_right_180_flat" {
	"male_shared_anims\gesture_turn_right_180_flat.smd"
	activity "ACT_GESTURE_TURN_RIGHT180_FLAT" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "gesture_turn_right_180_flatdefault" 0 0.408163 0.408163 0.408163 spline
	blendlayer "gesture_turn_right_180_flatdefault" 0.408163 0.408163 0.408163 1.020408 spline
	addlayer "gesture_turn_right_180_flatinDelta"
	addlayer "gesture_turn_right_180_flatoutDelta"
	fps 60
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "Startle_behind" {
	"male_shared_anims\Startle_behind.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "photo_react_blind" {
	"male_shared_anims\photo_react_blind.smd"
	activity "ACT_CIT_BLINDED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "photo_react_startle" {
	"male_shared_anims\photo_react_startle.smd"
	activity "ACT_CIT_STARTLED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ThrowItem" {
	"male_shared_anims\ThrowItem.smd"
	{ event AE_CITIZEN_HEAL 32 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Heal" {
	"male_shared_anims\Heal.smd"
	activity "ACT_CIT_HEAL" 1
	{ event AE_CITIZEN_HEAL 31 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Wave" {
	"male_shared_anims\Wave.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Wave_close" {
	"male_shared_anims\Wave_close.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "DuckUnder" {
	"male_shared_anims\DuckUnder.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "crouchidlehide" {
	"male_shared_anims\crouchidlehide.smd"
	fadein 0.2
	fadeout 0.2
	node "crouchhide"
	fps 30
	loop
}

$sequence "standtocrouchhide" {
	"male_shared_anims\standtocrouchhide.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "standing" "crouchhide"
	fps 30
}

$sequence "crouchhidetostand" {
	"male_shared_anims\crouchhidetostand.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "crouchhide" "standing"
	fps 30
}

$sequence "scaredidle" {
	"male_shared_anims\scaredidle.smd"
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "preSkewer" {
	"male_shared_anims\preSkewer.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Fear_Reaction" {
	"male_shared_anims\Fear_Reaction.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Fear_Reaction_Idle" {
	"male_shared_anims\Fear_Reaction_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "cower" {
	"male_shared_anims\cower.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "cower_Idle" {
	"male_shared_anims\cower_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "layer_run_protected" {
	"male_shared_anims\layer_run_protected.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "run_protected_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_protected"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_PROTECTED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 15 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_run_protected"
	node "running"
	fps 31
	loop
}

$sequence "run_all_panicked" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_run_panicked"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_PANICKED" 2
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 15 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	node "running"
	fps 31
	loop
}

$sequence "layer_crouchwalk_panicked" {
	"male_shared_anims\layer_crouchwalk_panicked.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "walk_panicked_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_walk_panicked"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_PANICKED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6006 6 "NPC_Citizen" }
	{ event 6007 15 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouchwalk_panicked"
	node "walking"
	fps 30
	loop
}

$sequence "crouchIdle_panicked4" {
	"male_shared_anims\crouchIdle_panicked4.smd"
	activity "ACT_CROUCH_PANICKED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "layer_luggage_walk" {
	"male_shared_anims\layer_luggage_walk.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "luggage_walk_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_luggage_walk"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_SUITCASE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6006 8 "NPC_Citizen" }
	{ event 6007 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_luggage_walk"
	node "walking"
	fps 30
	loop
}

$sequence "layer_pace" {
	"male_shared_anims\layer_pace.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "pace_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_pace"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_pace"
	node "walking"
	fps 30
	loop
}

$sequence "layer_walk_midspeed" {
	"male_shared_anims\layer_walk_midspeed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_walk_no_weapon"
}

$sequence "plaza_walk_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walk_midspeed"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6006 10 "NPC_Citizen" }
	{ event 6007 27 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_midspeed"
	node "walking"
	fps 30
	loop
}

$sequence "deathpose_front" {
	"male_shared_anims\deathpose_front.smd"
	activity "ACT_DIE_FRONTSIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "deathpose_back" {
	"male_shared_anims\deathpose_back.smd"
	activity "ACT_DIE_BACKSIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "deathpose_right" {
	"male_shared_anims\deathpose_right.smd"
	activity "ACT_DIE_RIGHTSIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "deathpose_left" {
	"male_shared_anims\deathpose_left.smd"
	activity "ACT_DIE_LEFTSIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "hunter_cit_throw_ground" {
	"male_shared_anims\hunter_cit_throw_ground.smd"
	activity "ACT_DI_HUNTER_MELEE" 1
	{ event 1004 5 "npc_citizen.whoops01" }
	{ event 1004 19 "npc_citizen.pain03" }
	{ event 1004 45 "npc_citizen.pain08" }
	{ event 1004 46 "flesh.break" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hunter_cit_tackle_di" {
	"male_shared_anims\hunter_cit_tackle_di.smd"
	activity "ACT_DI_HUNTER_TACKLE" 1
	{ event 1004 2 "npc_citizen.uhoh" }
	{ event 1004 16 "npc_citizen.pain03" }
	{ event 1004 41 "npc_citizen.pain08" }
	{ event 1004 73 "flesh.break" }
	{ event AE_NPC_RAGDOLL 74 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hunter_cit_stomp" {
	"male_shared_anims\hunter_cit_stomp.smd"
	activity "ACT_DI_HUNTER_MELEE" 1
	{ event 1004 21 "npc_citizen.pain03" }
	{ event 1004 57 "npc_citizen.pain08" }
	{ event 1004 59 "flesh.break" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hunter_cit_tackle" {
	"male_shared_anims\hunter_cit_tackle.smd"
	{ event 1004 2 "npc_citizen.uhoh" }
	{ event 1004 16 "npc_citizen.pain03" }
	{ event 1004 41 "npc_citizen.pain08" }
	{ event 1004 73 "flesh.break" }
	{ event AE_NPC_RAGDOLL 87 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hunter_cit_tackle_postI" {
	"male_shared_anims\hunter_cit_tackle_postI.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "cit_door" {
	"male_shared_anims\cit_door.smd"
	{ event 1004 12 "npc_citizen.die" }
	{ event 6007 21 "NPC_Citizen" }
	{ event 1004 33 "npc_citizen.pain07" }
	{ event 1004 41 "npc_citizen.pain06" }
	{ event 1004 78 "npc_citizen.pain09" }
	{ event 1004 82 "npc_citizen.pain03" }
	{ event 1004 100 "npc_citizen.help01" }
	{ event 1004 115 "npc_citizen.no02" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured1" {
	"male_shared_anims\injured1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured3" {
	"male_shared_anims\injured3.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured1preidle" {
	"male_shared_anims\injured1preidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured1postidle" {
	"male_shared_anims\injured1postidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured4" {
	"male_shared_anims\injured4.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured4_standing" {
	"male_shared_anims\injured4_standing.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured4_sit" {
	"male_shared_anims\injured4_sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "injured4_sitpostidle" {
	"male_shared_anims\injured4_sitpostidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "citizen2" {
	"male_shared_anims\citizen2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "citizen2_stand" {
	"male_shared_anims\citizen2_stand.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "citizen4_preaction" {
	"male_shared_anims\citizen4_preaction.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "citizen4_rise" {
	"male_shared_anims\citizen4_rise.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "citizen4_valve" {
	"male_shared_anims\citizen4_valve.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gman_freeze_pose_shooting" {
	"male_shared_anims\gman_freeze_pose_shooting.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "gman_freeze_pose_shot" {
	"male_shared_anims\gman_freeze_pose_shot.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "welder_idle" {
	"male_shared_anims\welder_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "welder_loop" {
	"male_shared_anims\welder_loop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "ss_alyx_move_pre" {
	"male_shared_anims\ss_alyx_move_pre.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "ss_alyx_move" {
	"male_shared_anims\ss_alyx_move.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ss_alyx_move_post" {
	"male_shared_anims\ss_alyx_move_post.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "ss_advisor" {
	"male_shared_anims\ss_advisor.smd"
	{ event 1003 50 "1" }
	{ event 1003 184 "2" }
	{ event 1003 479 "3" }
	{ event 1003 774 "4" }
	{ event 1003 1282 "5" }
	{ event 1003 1146 "6" }
	{ event 1003 1170 "7" }
	{ event AE_NPC_RAGDOLL 1282 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "silo_sit" {
	"male_shared_anims\silo_sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_Angry_SMG1" {
	"male_shared_anims\Idle_Angry_SMG1.smd"
	activity "ACT_IDLE_SMG1" 1
	fadein 0.5
	fadeout 0.5
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Angry_Shotgun" {
	"male_shared_anims\Idle_Angry_Shotgun.smd"
	activity "ACT_IDLE_SHOTGUN_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "Idle_SMG1_Aim" {
	"male_shared_anims\Idle_SMG1_Aim.smd"
	activity "ACT_IDLE_ANGRY_SMG1" 1
	fadein 0.5
	fadeout 0.5
	addlayer "layer_Aim_all"
	node "shooting"
	fps 30
	loop
}

$sequence "Idle_SMG1_Aim_Alert" {
	"male_shared_anims\Idle_SMG1_Aim_Alert.smd"
	activity "ACT_IDLE_AIM_RIFLE_STIMULATED" 1
	fadein 0.5
	fadeout 0.5
	addlayer "layer_Aim_Alert_all"
	node "standing"
	fps 30
	loop
}

$sequence "idle_angry_Ar2" {
	"male_shared_anims\idle_angry_Ar2.smd"
	activity "ACT_IDLE_AR2" 1
	fadein 0.5
	fadeout 0.5
	node "standing"
	fps 30
	loop
}

$sequence "idle_ar2_aim" {
	"male_shared_anims\idle_ar2_aim.smd"
	activity "ACT_IDLE_ANGRY_AR2" 1
	fadein 0.5
	fadeout 0.5
	addlayer "layer_Aim_AR2_all"
	node "shooting"
	fps 30
	loop
}

$sequence "shoot_smg1" {
	"male_shared_anims\shoot_smg1.smd"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_AR2_all"
	node "shooting"
	fps 25
}

$sequence "shoot_ar2" {
	"male_shared_anims\shoot_ar2.smd"
	activity "ACT_RANGE_ATTACK_AR2" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_AR2_all"
	node "shooting"
	fps 25
}

$sequence "shoot_ar2_alt" {
	"male_shared_anims\shoot_ar2_alt.smd"
	activity "ACT_COMBINE_AR2_ALTFIRE" 1
	{ event COMBINE_AE_ALTFIRE 5 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_AR2_all"
	node "shooting"
	fps 25
}

$sequence "shoot_shotgun" {
	"male_shared_anims\shoot_shotgun.smd"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node "shooting"
	fps 30
}

$sequence "shoot_rpg" {
	"male_shared_anims\shoot_rpg.smd"
	activity "ACT_RANGE_ATTACK_RPG" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_RPG_all"
	node "shootingRPG"
	fps 30
}

$sequence "reload_smg1" {
	"male_shared_anims\reload_smg1.smd"
	activity "ACT_RELOAD_SMG1" 1
	{ event 3015 60 "" }
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 40
}

$sequence "reload_shotgun1" {
	"male_shared_anims\reload_shotgun1.smd"
	activity "ACT_RELOAD_shotgun" 1
	{ event 3015 50 "" }
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
}

$sequence "reload_ar2" {
	"male_shared_anims\reload_ar2.smd"
	activity "ACT_RELOAD_AR2" 1
	{ event 3015 10 "" }
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 25
}

$sequence "gesture_reload_smg1spine" {
	"male_shared_anims\gesture_reload_smg1spine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_reload_smg1spine"
}

$sequence "gesture_reload_smg1arms" {
	"male_shared_anims\gesture_reload_smg1arms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_gesture_reload_smg1arms"
}

$sequence "gesture_reload_smg1" {
	"male_shared_anims\gesture_reload_smg1.smd"
	activity "ACT_GESTURE_RELOAD_SMG1" 1
	{ event 3015 60 "" }
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "gesture_reload_smg1arms" 0 0.153846 0.865385 1.009615 spline
	blendlayer "gesture_reload_smg1spine" 0 0.153846 0.865385 1.009615 spline
	node "standing"
	fps 40
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_reload_ar2spine" {
	"male_shared_anims\gesture_reload_ar2spine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_gesture_reload_smg1spine"
}

$sequence "gesture_reload_ar2arms" {
	"male_shared_anims\gesture_reload_ar2arms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_gesture_reload_smg1arms"
}

$sequence "gesture_reload_ar2" {
	"male_shared_anims\gesture_reload_ar2.smd"
	activity "ACT_GESTURE_RELOAD_AR2" 1
	{ event 3015 24 "" }
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "gesture_reload_ar2arms" 0 0.104167 0.208333 1.020833 spline
	blendlayer "gesture_reload_ar2spine" 0 0.104167 0.208333 1.020833 spline
	node "standing"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "gesture_shoot_ar2" {
	"male_shared_anims\gesture_shoot_ar2.smd"
	activity "ACT_GESTURE_RANGE_ATTACK_AR2" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_shoot_smg1" {
	"male_shared_anims\gesture_shoot_smg1.smd"
	activity "ACT_GESTURE_RANGE_ATTACK_SMG1" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_shoot_shotgun" {
	"male_shared_anims\gesture_shoot_shotgun.smd"
	activity "ACT_GESTURE_RANGE_ATTACK_SHOTGUN" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "gesture_shoot_rpg" {
	"male_shared_anims\gesture_shoot_rpg.smd"
	activity "ACT_GESTURE_RANGE_ATTACK_RPG" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "IdleAngryToShootDelta" {
	"male_shared_anims\IdleAngryToShootDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "IdleAngryToShoot" {
	"male_shared_anims\IdleAngryToShoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "Idle_Angry_SMG1" 0 0 0 1.052632 xfade spline
	blendlayer "shoot_smg1" 0 1.052632 1.052632 1.052632 spline
	addlayer "IdleAngryToShootDelta"
	transition "standing" "shooting"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "ShootToIdleAngryDelta" {
	"male_shared_anims\ShootToIdleAngryDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "ShootToIdleAngry" {
	"male_shared_anims\ShootToIdleAngry.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "shoot_smg1" 0 0 0 1.052632 xfade spline
	blendlayer "Idle_Angry_SMG1" 0 1.052632 1.052632 1.052632 spline
	addlayer "ShootToIdleAngryDelta"
	transition "shooting" "standing"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "IdleAngry_AR2_ToShootDelta" {
	"male_shared_anims\IdleAngry_AR2_ToShootDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "IdleAngry_AR2_ToShoot" {
	"male_shared_anims\IdleAngry_AR2_ToShoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "idle_angry_Ar2" 0 0 0 1.052632 xfade spline
	blendlayer "shoot_ar2" 0 1.052632 1.052632 1.052632 spline
	addlayer "IdleAngry_AR2_ToShootDelta"
	transition "standing" "shooting"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "Shoot_AR2_ToIdleAngryDelta" {
	"male_shared_anims\Shoot_AR2_ToIdleAngryDelta.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "Shoot_AR2_ToIdleAngry" {
	"male_shared_anims\Shoot_AR2_ToIdleAngry.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "shoot_ar2" 0 0 0 1.052632 xfade spline
	blendlayer "idle_angry_Ar2" 0 1.052632 1.052632 1.052632 spline
	addlayer "Shoot_AR2_ToIdleAngryDelta"
	transition "shooting" "standing"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "CrouchDToShoot" {
	"male_shared_anims\CrouchDToShoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_all" 0.32 0.6 1 1 spline
	transition "crouching" "shooting"
	fps 30
}

$sequence "ShootToCrouchD" {
	"male_shared_anims\ShootToCrouchD.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_all" 0 0 0 0.366667 spline
	transition "shooting" "crouching"
	fps 30
}

$sequence "CrouchDToStand" {
	"male_shared_anims\CrouchDToStand.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_all" 0.32 0.6 1.04 1.04 spline
	transition "crouching" "standing"
	fps 30
}

$sequence "StandToCrouchD" {
	"male_shared_anims\StandToCrouchD.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_all" 0 0 0 0.366667 spline
	transition "standing" "crouching"
	fps 30
}

$sequence "CrouchDToCrouchShoot" {
	"male_shared_anims\CrouchDToCrouchShoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_all" 0.2 1.05 1.05 1.05 spline
	transition "crouching" "crouchShooting"
	fps 30
}

$sequence "CrouchShootToCrouchD" {
	"male_shared_anims\CrouchShootToCrouchD.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_all" 0 0 0 0.55 spline
	transition "crouchShooting" "crouching"
	fps 30
}

$sequence "Cover_R" {
	"male_shared_anims\Cover_R.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Cover_L" {
	"male_shared_anims\Cover_L.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	fps 30
	loop
}

$sequence "CoverLow_R" {
	"male_shared_anims\CoverLow_R.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "CoverLow_L" {
	"male_shared_anims\CoverLow_L.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	fps 30
	loop
}

$sequence "Cover_LToShootSMG1" {
	"male_shared_anims\Cover_LToShootSMG1.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "cover_L" "shooting"
	fps 30
}

$sequence "Cover_RToShootSMG1" {
	"male_shared_anims\Cover_RToShootSMG1.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "cover_R" "shooting"
	fps 30
}

$sequence "CoverLow_LToShootSMG1" {
	"male_shared_anims\CoverLow_LToShootSMG1.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "cover_L" "shooting"
	fps 30
}

$sequence "CoverLow_RToShootSMG1" {
	"male_shared_anims\CoverLow_RToShootSMG1.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "cover_R" "shooting"
	fps 30
}

$sequence "ShootSMG1ToCover_L" {
	"male_shared_anims\ShootSMG1ToCover_L.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "shooting" "cover_L"
	fps 30
}

$sequence "ShootSMG1ToCover_R" {
	"male_shared_anims\ShootSMG1ToCover_R.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "shooting" "cover_R"
	fps 30
}

$sequence "ShootSMG1ToCoverLow_L" {
	"male_shared_anims\ShootSMG1ToCoverLow_L.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "shooting" "coverlow_l"
	fps 30
}

$sequence "ShootSMG1ToCoverLow_R" {
	"male_shared_anims\ShootSMG1ToCoverLow_R.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition "shooting" "coverlow_r"
	fps 30
}

$sequence "crouch_shoot_smg1" {
	"male_shared_anims\crouch_shoot_smg1.smd"
	activity "ACT_RANGE_ATTACK_SMG1_LOW" 1
	{ event 3002 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node "crouchShooting"
	fps 25
}

$sequence "crouch_aim_smg1" {
	"male_shared_anims\crouch_aim_smg1.smd"
	activity "ACT_RANGE_AIM_SMG1_LOW" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node "crouchShooting"
	fps 30
	loop
}

$sequence "crouch_reload_smg1" {
	"male_shared_anims\crouch_reload_smg1.smd"
	activity "ACT_RELOAD_SMG1_LOW" 1
	{ event 3015 60 "" }
	fadein 0.2
	fadeout 0.2
	node "crouching"
	fps 40
}

$sequence "shootp1" {
	"male_shared_anims\shootp1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 3014 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 4
}

$sequence "gesture_shootp1" {
	"male_shared_anims\gesture_shootp1.smd"
	activity "ACT_GESTURE_RANGE_ATTACK_PISTOL" 1
	delta
	{ event 3014 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 4
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "reload_pistol" {
	"male_shared_anims\reload_pistol.smd"
	activity "ACT_RELOAD_PISTOL" 1
	{ event 3015 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "crouch_shoot_pistol" {
	"male_shared_anims\crouch_shoot_pistol.smd"
	activity "ACT_RANGE_ATTACK_PISTOL_LOW" 1
	{ event 3014 4 "" }
	fadein 0.2
	fadeout 0.2
	fps 18
}

$sequence "crouch_reload_pistol" {
	"male_shared_anims\crouch_reload_pistol.smd"
	activity "ACT_RELOAD_PISTOL_LOW" 1
	{ event 3015 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw1" {
	"male_shared_anims\throw1.smd"
	activity "ACT_RANGE_ATTACK_THROW" 1
	{ event 3005 28 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "swing" {
	"male_shared_anims\swing.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	{ event 3001 16 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	fps 30
}

$sequence "idle_angry_melee" {
	"male_shared_anims\idle_angry_melee.smd"
	activity "ACT_IDLE_ANGRY_MELEE" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "MeleeAttack01" {
	"male_shared_anims\MeleeAttack01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pickup" {
	"male_shared_anims\pickup.smd"
	activity "ACT_PICKUP_GROUND" 1
	{ event 2040 13 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gunrack" {
	"male_shared_anims\gunrack.smd"
	activity "ACT_PICKUP_RACK" 1
	{ event 2040 15 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "smgdraw" {
	"male_shared_anims\smgdraw.smd"
	{ event 1003 14 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Fear_Reaction_gesturespine" {
	"male_shared_anims\Fear_Reaction_gesturespine.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$sequence "Fear_Reaction_gesturearms" {
	"male_shared_anims\Fear_Reaction_gesturearms.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_gesture_reload_smg1arms"
}

$sequence "Fear_Reaction_gesture" {
	"male_shared_anims\Fear_Reaction_gesture.smd"
	activity "ACT_GESTURE_FLINCH_BLAST" 1
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "Fear_Reaction_gesturearms" 0 0.310345 0.689655 1.034483 spline
	blendlayer "Fear_Reaction_gesturespine" 0 0.310345 0.689655 1.034483 spline
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "Wave_SMG1" {
	"male_shared_anims\Wave_SMG1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "layer_Aim_all" {
	"a_run_aim_straight_up"
	"a_run_aim_straight_up"
	"a_run_aim_straight_up"
	"a_run_aim_up_right"
	"a_run_aim_up_center"
	"a_run_aim_up_left"
	"a_run_aim_mid_right"
	"a_run_aim_mid_center"
	"a_run_aim_mid_left"
	"a_run_aim_down_right"
	"a_run_aim_down_center"
	"a_run_aim_down_left"
	blend "aim_yaw" -43.95304 44.2895
	blend "aim_pitch" -87.6306 44.95227
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_Aim_AR2_all" {
	"a_run_aim_AR2_straight_up"
	"a_run_aim_AR2_straight_up"
	"a_run_aim_AR2_straight_up"
	"a_run_aim_AR2_up_right"
	"a_run_aim_AR2_up_center"
	"a_run_aim_AR2_up_left"
	"a_run_aim_AR2_mid_right"
	"a_run_aim_AR2_mid_center"
	"a_run_aim_AR2_mid_left"
	"a_run_aim_AR2_down_right"
	"a_run_aim_AR2_down_center"
	"a_run_aim_AR2_down_left"
	blend "aim_yaw" -52.23637 34.7395
	blend "aim_pitch" -81.93196 42.05037
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_Aim_Alert_all" {
	"a_run_aim_Alert_straight_up"
	"a_run_aim_Alert_straight_up"
	"a_run_aim_Alert_straight_up"
	"a_run_aim_Alert_up_right"
	"a_run_aim_Alert_up_center"
	"a_run_aim_Alert_up_left"
	"a_run_aim_Alert_mid_right"
	"a_run_aim_Alert_mid_center"
	"a_run_aim_Alert_mid_left"
	"a_run_aim_Alert_down_right"
	"a_run_aim_Alert_down_center"
	"a_run_aim_Alert_down_left"
	blend "aim_yaw" -44.10291 43.57789
	blend "aim_pitch" -82.33257 44.68403
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_Aim_AR2_Alert_all" {
	"a_AR2_aim_Alert_straight_up"
	"a_AR2_aim_Alert_straight_up"
	"a_AR2_aim_Alert_straight_up"
	"a_AR2_aim_Alert_up_right"
	"a_AR2_aim_Alert_up_center"
	"a_AR2_aim_Alert_up_left"
	"a_AR2_aim_Alert_mid_right"
	"a_AR2_aim_Alert_mid_center"
	"a_AR2_aim_Alert_mid_left"
	"a_AR2_aim_Alert_down_right"
	"a_AR2_aim_Alert_down_center"
	"a_AR2_aim_Alert_down_left"
	blend "aim_yaw" -42.95907 52.68469
	blend "aim_pitch" -80.62376 41.01767
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_runAim_all" {
	"a_runSMG_aim_straight_up"
	"a_runSMG_aim_straight_up"
	"a_runSMG_aim_straight_up"
	"a_runSMG_aim_up_right"
	"a_runSMG_aim_up_center"
	"a_runSMG_aim_up_left"
	"a_runSMG_aim_mid_right"
	"a_runSMG_aim_mid_center"
	"a_runSMG_aim_mid_left"
	"a_runSMG_aim_down_right"
	"a_runSMG_aim_down_center"
	"a_runSMG_aim_down_left"
	blend "aim_yaw" -43.94922 43.16125
	blend "aim_pitch" -79.06911 44.37601
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_runAim_ar2_all" {
	"a_AR2_aim_straight_up"
	"a_AR2_aim_straight_up"
	"a_AR2_aim_straight_up"
	"a_AR2_aim_up_right"
	"a_AR2_aim_up_center"
	"a_AR2_aim_up_left"
	"a_AR2_aim_mid_right"
	"a_AR2_aim_mid_center"
	"a_AR2_aim_mid_left"
	"a_AR2_aim_down_right"
	"a_AR2_aim_down_center"
	"a_AR2_aim_down_left"
	blend "aim_yaw" -43.94921 43.16126
	blend "aim_pitch" -79.06916 44.37595
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_walkAlertAim_all" {
	"a_walkSMG_aim_straight_up"
	"a_walkSMG_aim_straight_up"
	"a_walkSMG_aim_straight_up"
	"a_walkSMG_aim_up_right"
	"a_walkSMG_aim_up_center"
	"a_walkSMG_aim_up_left"
	"a_walkSMG_aim_mid_right"
	"a_walkSMG_aim_mid_center"
	"a_walkSMG_aim_mid_left"
	"a_walkSMG_aim_down_right"
	"a_walkSMG_aim_down_center"
	"a_walkSMG_aim_down_left"
	blend "aim_yaw" -44.03131 44.31946
	blend "aim_pitch" -83.76817 44.89772
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_walkAlertAim_AR2_all" {
	"a_walkAR2_aim_straight_up"
	"a_walkAR2_aim_straight_up"
	"a_walkAR2_aim_straight_up"
	"a_walkAR2_aim_up_right"
	"a_walkAR2_aim_up_center"
	"a_walkAR2_aim_up_left"
	"a_walkAR2_aim_mid_right"
	"a_walkAR2_aim_mid_center"
	"a_walkAR2_aim_mid_left"
	"a_walkAR2_aim_down_right"
	"a_walkAR2_aim_down_center"
	"a_walkAR2_aim_down_left"
	blend "aim_yaw" -44.03127 44.31936
	blend "aim_pitch" -83.7682 44.89769
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_walk_aiming" {
	"male_shared_anims\layer_walk_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_Aim_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_walk_holding" {
	"male_shared_anims\layer_walk_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_run_aiming" {
	"male_shared_anims\layer_run_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_runAim_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_crouch_run_aiming" {
	"male_shared_anims\layer_crouch_run_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_Aim_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_crouch_walk_aiming" {
	"male_shared_anims\layer_crouch_walk_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_Aim_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_walk_AR2_aiming" {
	"male_shared_anims\layer_walk_AR2_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_Aim_AR2_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_walk_AR2_holding" {
	"male_shared_anims\layer_walk_AR2_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_run_AR2_aiming" {
	"male_shared_anims\layer_run_AR2_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_runAim_ar2_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "layer_walk_alert_holding" {
	"male_shared_anims\layer_walk_alert_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walkAlertHOLDALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_alert_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_RIFLE_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_alert_holding"
	node "walking"
	fps 30
	loop
}

$sequence "layer_walk_alert_aiming" {
	"male_shared_anims\layer_walk_alert_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_walkAlertAim_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walkAlertAimALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_alert_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AIM_RIFLE_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_alert_aiming"
	node "walking"
	fps 30
	loop
}

$sequence "layer_walk_alert_holding_AR2" {
	"male_shared_anims\layer_walk_alert_holding_AR2.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walkAlertHOLD_AR2_ALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_Alert_AR2"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AR2_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_alert_holding_AR2"
	node "walking"
	fps 30
	loop
}

$sequence "layer_walk_alert_aiming_AR2" {
	"male_shared_anims\layer_walk_alert_aiming_AR2.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_walkAlertAim_AR2_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walkAlertAim_AR2_ALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_Alert_AR2"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AIM_AR2_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_alert_aiming_AR2"
	node "walking"
	fps 30
	loop
}

$sequence "layer_run_alert_holding" {
	"male_shared_anims\layer_run_alert_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_alert_holding_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_alert_SMG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_RIFLE_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_alert_holding" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_run_alert_holding_AR2" {
	"male_shared_anims\layer_run_alert_holding_AR2.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_alert_holding_AR2_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_alert_AR2"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AR2_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_alert_holding_AR2" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_run_alert_aiming" {
	"male_shared_anims\layer_run_alert_aiming.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_Aim_AR2_Alert_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_alert_aiming_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_alert_SMG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AIM_RIFLE_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_alert_aiming" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_run_alert_aiming_ar2" {
	"male_shared_anims\layer_run_alert_aiming_ar2.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	addlayer "layer_Aim_AR2_Alert_all"
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_alert_aiming_ar2_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_alert_AR2"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AIM_AR2_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_alert_aiming_ar2" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "walkAIMALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_walk_aiming" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "walkHOLDALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_SMG1_RELAXED
}
	blendlayer "layer_walk_holding" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "walkAIMALL1_ar2" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_Alert_AR2"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AIM_AR2" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_walkAlertAim_AR2_all" 0 0 0 0 local
	addlayer "layer_walk_alert_aiming_AR2"
	node "walking"
	fps 30
	loop
}

$sequence "walkHOLDALL1_ar2" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_AR2"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AR2" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_AR2_RELAXED
}
	blendlayer "layer_walk_AR2_holding" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "layer_run_holding" {
	"male_shared_anims\layer_run_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_holding_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_SMG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_SMG1_RELAXED
}
	blendlayer "layer_run_holding" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "run_aiming_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_SMG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_aiming" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_run_holding_ar2" {
	"male_shared_anims\layer_run_holding_ar2.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_holding_ar2_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_AR2"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AR2" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_AR2_RELAXED
}
	blendlayer "layer_run_holding_ar2" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "run_aiming_ar2_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_AR2_aim"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_AR2_aiming" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_crouch_run_holding" {
	"male_shared_anims\layer_crouch_run_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "crouchRUNHOLDINGALL1" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_crouch_run_holding" 0 0 0 0 local
	node "run_crouching"
	fps 31
	loop
}

$sequence "crouchRUNAIMINGALL1" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_crouch_run_aiming" 0 0 0 0 local
	node "run_crouching"
	fps 31
	loop
}

$sequence "layer_crouch_walk_holding" {
	"male_shared_anims\layer_crouch_walk_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "Crouch_walk_holding_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_crouch_walk_holding" 0 0 0 0 local
	node "walk_crouching"
	fps 30
	loop
}

$sequence "Crouch_walk_aiming_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_crouch_walk_aiming" 0 0 0 0 local
	node "walk_crouching"
	fps 30
	loop
}

$sequence "Man_Gun_Aim_all" {
	"Man_Gun_up_right"
	"Man_Gun_up_center"
	"Man_Gun_up_left"
	"Man_Gun_mid_right"
	"Man_Gun_mid_center"
	"Man_Gun_mid_left"
	"Man_Gun_down_right"
	"Man_Gun_down_center"
	"Man_Gun_down_left"
	blend "aim_yaw" -60 60
	blend "aim_pitch" -35 50
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "Man_Gun" {
	"male_shared_anims\Man_Gun.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	fadein 0.2
	fadeout 0.2
	addlayer "Man_Gun_Aim_all"
	fps 30
	loop
}

$sequence "Idle_SMG1_Relaxed" {
	"male_shared_anims\Idle_SMG1_Relaxed.smd"
	activity "ACT_NEUTRAL_SMG1_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	node "StandingSMGRelaxed"
	fps 30
	loop
}

$sequence "layer_walk_holding_SMG1_Relaxed" {
	"male_shared_anims\layer_walk_holding_SMG1_Relaxed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walk_SMG1_Relaxed_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_RIFLE_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_SMG1_RELAXED
}
	blendlayer "layer_walk_holding_SMG1_Relaxed" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "layer_run_holding_SMG1_Relaxed" {
	"male_shared_anims\layer_run_holding_SMG1_Relaxed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_SMG1_Relaxed_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_SMG1_Relaxed"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_RIFLE_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_SMG1_RELAXED
}
	blendlayer "layer_run_holding_SMG1_Relaxed" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "Idle_AR2_Relaxed" {
	"male_shared_anims\Idle_AR2_Relaxed.smd"
	activity "ACT_NEUTRAL_AR2_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	node "StandingAR2Relaxed"
	fps 30
	loop
}

$sequence "layer_walk_holding_AR2_Relaxed" {
	"male_shared_anims\layer_walk_holding_AR2_Relaxed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walk_AR2_Relaxed_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AR2_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_AR2_RELAXED
}
	blendlayer "layer_walk_holding_AR2_Relaxed" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "layer_run_holding_AR2_Relaxed" {
	"male_shared_anims\layer_run_holding_AR2_Relaxed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_AR2_Relaxed_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_AR2_Relaxed"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AR2_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_NEUTRAL_AR2_RELAXED
}
	blendlayer "layer_run_holding_AR2_Relaxed" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "Idle_RPG_Relaxed" {
	"male_shared_anims\Idle_RPG_Relaxed.smd"
	activity "ACT_IDLE_RPG_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_Angry_RPG" {
	"male_shared_anims\Idle_Angry_RPG.smd"
	activity "ACT_IDLE_RPG" 1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_RPG_Aim" {
	"male_shared_anims\Idle_RPG_Aim.smd"
	activity "ACT_IDLE_ANGRY_RPG" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_RPG_all"
	node "shootingRPG"
	fps 30
	loop
}

$sequence "Crouch_Idle_RPG" {
	"male_shared_anims\Crouch_Idle_RPG.smd"
	activity "ACT_COVER_LOW_RPG" 1
	fadein 0.2
	fadeout 0.2
	node "crouching"
	fps 30
	loop
}

$sequence "StandToShootRPGfake" {
	"male_shared_anims\StandToShootRPGfake.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "Idle_Angry_RPG" 0 0 0 0.526316 xfade spline
	blendlayer "Idle_RPG_Aim" 0 0.526316 1.052632 1.052632 spline
	transition "standing" "shootingRPG"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "ShootToStandRPGfake" {
	"male_shared_anims\ShootToStandRPGfake.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "Idle_RPG_Aim" 0 0 0 0.714286 xfade spline
	blendlayer "Idle_Angry_RPG" 0 0.714286 1.071429 1.071429 spline
	transition "shootingRPG" "standing"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "CrouchToShootRPGfake" {
	"male_shared_anims\CrouchToShootRPGfake.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "Crouch_Idle_RPG" 0 0 0 0.526316 xfade spline
	blendlayer "Idle_RPG_Aim" 0 0.526316 1.052632 1.052632 spline
	transition "crouching" "shootingRPG"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "ShootToCrouchRPGfake" {
	"male_shared_anims\ShootToCrouchRPGfake.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "Idle_RPG_Aim" 0 0 0 0.714286 xfade spline
	blendlayer "Crouch_Idle_RPG" 0 0.714286 1.071429 1.071429 spline
	transition "shootingRPG" "crouching"
	fps 30
	noanimation
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_turnleft"
}

$sequence "layer_walk_holding_RPG" {
	"male_shared_anims\layer_walk_holding_RPG.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walk_holding_RPG_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_alert_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_RPG" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_walk_holding_RPG" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "layer_run_holding_RPG" {
	"male_shared_anims\layer_run_holding_RPG.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_holding_RPG_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_RPG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_RPG" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_holding_RPG" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_crouch_walk_holding_RPG" {
	"male_shared_anims\layer_crouch_walk_holding_RPG.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "Crouch_walk_holding_RPG_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH_RPG" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_crouch_walk_holding_RPG" 0 0 0 0 local
	node "walk_crouching"
	fps 30
	loop
}

$sequence "layer_crouch_run_holding_RPG" {
	"male_shared_anims\layer_crouch_run_holding_RPG.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "crouch_run_holding_RPG_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH_RPG" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_crouch_run_holding_RPG" 0 0 0 0 local
	node "run_crouching"
	fps 31
	loop
}

$sequence "layer_Aim_RPG_all" {
	"a_RPG_aim_straight_up"
	"a_RPG_aim_straight_up"
	"a_RPG_aim_straight_up"
	"a_RPG_aim_up_right"
	"a_RPG_aim_up_center"
	"a_RPG_aim_up_left"
	"a_RPG_aim_mid_right"
	"a_RPG_aim_mid_center"
	"a_RPG_aim_mid_left"
	"a_RPG_aim_down_right"
	"a_RPG_aim_down_center"
	"a_RPG_aim_down_left"
	blend "aim_yaw" -48.5701 48.5905
	blend "aim_pitch" -88.88165 49.98479
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_layer_Aim_all"
}

$sequence "layer_walk_holding_RPG_Relaxed" {
	"male_shared_anims\layer_walk_holding_RPG_Relaxed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walk_RPG_Relaxed_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_RPG_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 8 "NPC_Citizen" }
	{ event 6005 23 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_walk_holding_RPG_Relaxed" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "layer_run_holding_RPG_Relaxed" {
	"male_shared_anims\layer_run_holding_RPG_Relaxed.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "run_RPG_Relaxed_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_RPG_Relaxed"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_RPG_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 16 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_holding_RPG_Relaxed" 0 0 0 0 local
	node "running"
	fps 31
	loop
}

$sequence "layer_walk_holding_package" {
	"male_shared_anims\layer_walk_holding_package.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	worldspace
	fps 30
	weightlist "weights_layer_walk_aiming"
}

$sequence "walk_holding_package_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_package"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_PACKAGE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2

keyvalues
{
	interior ACT_IDLE_PACKAGE
}
	blendlayer "layer_walk_holding_package" 0 0 0 0 local
	node "walking"
	fps 30
	loop
}

$sequence "idle_noise" {
	"male_shared_anims\idle_noise.smd"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	realtime
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
}

$sequence "Idle_Relaxed_SMG1_1" {
	"male_shared_anims\Idle_Relaxed_SMG1_1.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_2" {
	"male_shared_anims\Idle_Relaxed_SMG1_2.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_3" {
	"male_shared_anims\Idle_Relaxed_SMG1_3.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_4" {
	"male_shared_anims\Idle_Relaxed_SMG1_4.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_5" {
	"male_shared_anims\Idle_Relaxed_SMG1_5.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_6" {
	"male_shared_anims\Idle_Relaxed_SMG1_6.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_7" {
	"male_shared_anims\Idle_Relaxed_SMG1_7.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_8" {
	"male_shared_anims\Idle_Relaxed_SMG1_8.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_SMG1_9" {
	"male_shared_anims\Idle_Relaxed_SMG1_9.smd"
	activity "ACT_IDLE_SMG1_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_1" {
	"male_shared_anims\Idle_Relaxed_AR2_1.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_2" {
	"male_shared_anims\Idle_Relaxed_AR2_2.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_3" {
	"male_shared_anims\Idle_Relaxed_AR2_3.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_4" {
	"male_shared_anims\Idle_Relaxed_AR2_4.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_5" {
	"male_shared_anims\Idle_Relaxed_AR2_5.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_6" {
	"male_shared_anims\Idle_Relaxed_AR2_6.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_7" {
	"male_shared_anims\Idle_Relaxed_AR2_7.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_8" {
	"male_shared_anims\Idle_Relaxed_AR2_8.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_AR2_9" {
	"male_shared_anims\Idle_Relaxed_AR2_9.smd"
	activity "ACT_IDLE_AR2_RELAXED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_1" {
	"male_shared_anims\Idle_Alert_SMG1_1.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_2" {
	"male_shared_anims\Idle_Alert_SMG1_2.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_3" {
	"male_shared_anims\Idle_Alert_SMG1_3.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_4" {
	"male_shared_anims\Idle_Alert_SMG1_4.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_5" {
	"male_shared_anims\Idle_Alert_SMG1_5.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_6" {
	"male_shared_anims\Idle_Alert_SMG1_6.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_7" {
	"male_shared_anims\Idle_Alert_SMG1_7.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_8" {
	"male_shared_anims\Idle_Alert_SMG1_8.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_SMG1_9" {
	"male_shared_anims\Idle_Alert_SMG1_9.smd"
	activity "ACT_IDLE_SMG1_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_1" {
	"male_shared_anims\Idle_Alert_AR2_1.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_2" {
	"male_shared_anims\Idle_Alert_AR2_2.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_3" {
	"male_shared_anims\Idle_Alert_AR2_3.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_4" {
	"male_shared_anims\Idle_Alert_AR2_4.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_5" {
	"male_shared_anims\Idle_Alert_AR2_5.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_6" {
	"male_shared_anims\Idle_Alert_AR2_6.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_7" {
	"male_shared_anims\Idle_Alert_AR2_7.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_8" {
	"male_shared_anims\Idle_Alert_AR2_8.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_AR2_9" {
	"male_shared_anims\Idle_Alert_AR2_9.smd"
	activity "ACT_IDLE_AR2_STIMULATED" -1
	fadein 0.5
	fadeout 0.5
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_1" {
	"male_shared_anims\Idle_Relaxed_Shotgun_1.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_2" {
	"male_shared_anims\Idle_Relaxed_Shotgun_2.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_3" {
	"male_shared_anims\Idle_Relaxed_Shotgun_3.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_4" {
	"male_shared_anims\Idle_Relaxed_Shotgun_4.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_5" {
	"male_shared_anims\Idle_Relaxed_Shotgun_5.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_6" {
	"male_shared_anims\Idle_Relaxed_Shotgun_6.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_7" {
	"male_shared_anims\Idle_Relaxed_Shotgun_7.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_8" {
	"male_shared_anims\Idle_Relaxed_Shotgun_8.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Relaxed_Shotgun_9" {
	"male_shared_anims\Idle_Relaxed_Shotgun_9.smd"
	activity "ACT_IDLE_SHOTGUN_RELAXED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_1" {
	"male_shared_anims\Idle_Alert_Shotgun_1.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_2" {
	"male_shared_anims\Idle_Alert_Shotgun_2.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_3" {
	"male_shared_anims\Idle_Alert_Shotgun_3.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_4" {
	"male_shared_anims\Idle_Alert_Shotgun_4.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_5" {
	"male_shared_anims\Idle_Alert_Shotgun_5.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_6" {
	"male_shared_anims\Idle_Alert_Shotgun_6.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_7" {
	"male_shared_anims\Idle_Alert_Shotgun_7.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_8" {
	"male_shared_anims\Idle_Alert_Shotgun_8.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "Idle_Alert_Shotgun_9" {
	"male_shared_anims\Idle_Alert_Shotgun_9.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" -1
	fadein 0.2
	fadeout 0.2
	addlayer "idle_noise"
	node "standing"
	fps 30
	loop
}

$sequence "jump_holding_jump" {
	"male_shared_anims\jump_holding_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_holding_glide" {
	"male_shared_anims\jump_holding_glide.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 5
}

$sequence "jump_holding_land" {
	"male_shared_anims\jump_holding_land.smd"
	activity "ACT_LAND" 1
	{ event 6009 0 "" }
	{ event 6009 2 "" }
	fadein 0.15
	fadeout 0.2
	fps 45
}

$sequence "Seafloor_Poses" {
	"male_shared_anims\Seafloor_Poses.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Idle_to_Lean_Left" {
	"male_shared_anims\Idle_to_Lean_Left.smd"
	activity "ACT_BUSY_LEAN_LEFT_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Lean_Left" {
	"male_shared_anims\Lean_Left.smd"
	activity "ACT_BUSY_LEAN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Lean_Left_to_Idle" {
	"male_shared_anims\Lean_Left_to_Idle.smd"
	activity "ACT_BUSY_LEAN_LEFT_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Idle_to_Lean_Back" {
	"male_shared_anims\Idle_to_Lean_Back.smd"
	activity "ACT_BUSY_LEAN_BACK_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Lean_Back" {
	"male_shared_anims\Lean_Back.smd"
	activity "ACT_BUSY_LEAN_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Lean_Back_to_Idle" {
	"male_shared_anims\Lean_Back_to_Idle.smd"
	activity "ACT_BUSY_LEAN_BACK_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Idle_to_Sit_Ground" {
	"male_shared_anims\Idle_to_Sit_Ground.smd"
	activity "ACT_BUSY_SIT_GROUND_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Sit_Ground" {
	"male_shared_anims\Sit_Ground.smd"
	activity "ACT_BUSY_SIT_GROUND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Sit_Ground_to_Idle" {
	"male_shared_anims\Sit_Ground_to_Idle.smd"
	activity "ACT_BUSY_SIT_GROUND_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Idle_to_Sit_Chair" {
	"male_shared_anims\Idle_to_Sit_Chair.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Sit_Chair" {
	"male_shared_anims\Sit_Chair.smd"
	activity "ACT_BUSY_SIT_CHAIR" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Sit_Chair_to_Idle" {
	"male_shared_anims\Sit_Chair_to_Idle.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "body_rot_z" {
	"a_body_rot_z_lt"
	"a_body_rot"
	"a_body_rot_z_rt"
	autoplay
	blend "body_yaw" 29.50387 -29.52251
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$sequence "spine_rot_z" {
	"a_spine_rot_z_lt"
	"a_spine_rot"
	"a_spine_rot_z_rt"
	autoplay
	blend "spine_yaw" 30.62212 -30.62754
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_body_rot_z"
}

$sequence "neck_trans_x" {
	"a_neck_trans_back"
	"a_neck_trans"
	"a_neck_trans_fwd"
	autoplay
	blend "neck_trans" -0.178728 0.214179
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$sequence "head_rot_z" {
	"a_head_rot_z_lt"
	"a_head_rot"
	"a_head_rot_z_rt"
	autoplay
	blend "head_yaw" 66.7055 -66.70586
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$sequence "head_rot_y" {
	"a_head_rot_dwn"
	"a_head_rot"
	"a_head_rot_up"
	autoplay
	blend "head_pitch" 25.37099 -34.84618
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$sequence "head_rot_x" {
	"a_head_rot_lt"
	"a_head_rot"
	"a_head_rot_rt"
	autoplay
	blend "head_roll" -10.93142 10.85306
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "a_WalkS" 0
	weightlist "weights_Fear_Reaction_gesturespine"
}

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1
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
