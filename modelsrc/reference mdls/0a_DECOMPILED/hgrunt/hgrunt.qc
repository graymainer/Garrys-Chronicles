// Created by Crowbar 0.49.0.0

$modelname "half-life/hgrunt.mdl"

$bodygroup "body"
{
	studio "hgrunt_hl_body.smd"
}
$bodygroup "heads"
{
	studio "hgrunt_hl__mask.smd"
	studio "hgrunt_hl__comm.smd"
	studio "hgrunt_hl__soldier.smd"
	studio "hgrunt_hl__black.smd"
}
$bodygroup "weapons"
{
	studio "hgrunt_hl_m16.smd"
	studio "hgrunt_hl_spas.smd"
	studio "hgrunt_SAW_reference.smd"
	studio "hgrunt_p_desert_eagle.smd"
	studio "hgrunt_p_beretta.smd"
	blank
}


$surfaceprop "flesh"

$contents "solid"

$eyeposition 0 0 73

$maxeyedeflection 90

$cdmaterials "models\half-life\hgrunt\"

$texturegroup "skinfamilies"
{
	{ "PC_soldier_skin_bronze" "PC_soldier_mask_face"     "PC_commander_face"     }
	{ "PC_soldier_skin_blk"    "PC_soldier_mask_face_blk" "PC_commander_face_blk" }
}

$attachment "muzzle_m4" "Bip01 R Hand" 35 1.3 7.5 rotate 0 0 0
$attachment "muzzle_shotgun" "Bip01 R Hand" 34.6 1.4 6.8 rotate 0 0 0
$attachment "muzzle_saw" "Bip01 R Hand" 27.8 2.3 4.3 rotate 0 0 0
$attachment "muzzle_pistol_9mm" "Bip01 R Hand" 11 1.35 4.6 rotate 0 0 0
$attachment "muzzle_pistol_deagle" "Bip01 R Hand" 12 1.75 4.26 rotate 0 0 0
$attachment "l_hand" "Bip01 L Hand" 4 1 -3.4 rotate 0 0 0
$attachment "r_hand" "Bip01 R Hand" 0 0 0 rotate 0 0 0
$attachment "possession_cam" "Bip01 Head" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -17.871 -31.973 -0.077 24.903 25.848 81.259

// $hboxset "default"
// $hbox 3 "Bip01 Pelvis" -3.64 -6.05 -8.07 6.34 8.41 8.3 ""
// $hbox 6 "Bip01 L Thigh" 0 -6.35 -6.05 16.309999 5.57 3.84 ""
// $hbox 6 "Bip01 L Calf" 0 -5.19 -4.44 22.15 5.68 4.78 ""
// $hbox 6 "Bip01 L Foot" -1.08 -1.9 -3.24 3.23 11.21 2.86 ""
// $hbox 7 "Bip01 R Thigh" 0 -6.35 -4.06 16.309999 5.57 5.82 ""
// $hbox 7 "Bip01 R Calf" 0 -5.19 -5.01 22.15 5.68 4.22 ""
// $hbox 7 "Bip01 R Foot" -1.08 -1.9 -3.72 3.23 11.21 2.39 ""
// $hbox 3 "Bip01 Spine1" -4.57 -9.99 -10.52 11.49 8.42 10.75 ""
// $hbox 2 "Bip01 Spine2" 0 -10.51 -11.44 14.05 9.26 12.42 ""
// $hbox 4 "Bip01 L UpperArm" -2.81 -1.99 -4.74 12.06 4.78 3.5 ""
// $hbox 4 "Bip01 L Forearm" 0 -1.43 -2.15 10.21 4.01 2.98 ""
// $hbox 4 "Bip01 L Hand" -0.27 -2.65 -2.75 7.58 1.89 1.8 ""
// $hbox 5 "Bip01 R UpperArm" -2.83 -1.99 -3.46 12.03 4.78 4.78 ""
// $hbox 5 "Bip01 R Forearm" 0 -1.43 -2.94 10.19 4 2.18 ""
// $hbox 5 "Bip01 R Hand" -0.16 -2.04 -1.79 7.5 2.4 2.76 ""
// $hbox 11 "Bip01 Head" 9 -5.22 -4.59 15.15 7.56 6.01 ""
// $hbox 11 "Bip01 Head" 1.7 -5.22 -4.59 9 1 6.01 ""
// $hbox 1 "Bip01 Head" 1.7 1 -4.59 9 7.56 6.01 ""
// $skipboneinbbox

$definebone "Bip01" "" 0.07154 -0.27724 31.139324 0 -89.994539 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" -0.526041 0.000001 9.745319 -89.980216 -89.999928 0 0 0 0 0 0 0
$definebone "Bip01 L Thigh" "Bip01 Pelvis" -0.000011 0.00001 5.61575 0.000115 174.270448 -179.999966 0 0 0 0 0 0
$definebone "Bip01 L Calf" "Bip01 L Thigh" 15.693466 0 0 0 -11.459157 0 0 0 0 0 0 0
$definebone "Bip01 L Foot" "Bip01 L Calf" 22.146629 -0.000001 0 0 5.729579 0 0 0 0 0 0 0
$definebone "Bip01 L Toe0" "Bip01 L Foot" 3.310129 5.734395 0 0 89.999983 0 0 0 0 0 0 0
$definebone "Bip01 R Thigh" "Bip01 Pelvis" 0.000008 -0.000006 -5.61575 0.000115 174.270448 -179.999966 0 0 0 0 0 0
$definebone "Bip01 R Calf" "Bip01 R Thigh" 15.69347 0 0 0 -11.459157 0 0 0 0 0 0 0
$definebone "Bip01 R Foot" "Bip01 R Calf" 22.146629 0 0 0 5.729579 0 0 0 0 0 0 0
$definebone "Bip01 R Toe0" "Bip01 R Foot" 3.310129 5.734395 0 0 89.999983 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 1.384159 -0.004728 0.000002 -0.000057 0.045607 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 5.939816 -0.00473 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 5.939808 -0.003975 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Spine3" "Bip01 Spine2" 4.99144 -0.003975 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine3" 4.991432 -0.001575 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000008 0.001564 3.638375 -73.581758 179.954927 -0.000573 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 8.842831 0 -0.000004 43.852127 0 0 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 9.341934 0 0 -0.000003 -11.459155 0 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 11.168404 -0.000001 0.000004 5.806982 -4.38135 -86.679807 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.364904 0.231174 -1.984411 35.259076 9.986826 93.49428 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.748535 -0.000002 0 -0.000002 16.49998 0.000005 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 1.272493 0 0 -0.000002 -2.499983 0.000005 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 4.525587 -0.000301 -1.850224 5.481888 6.016513 0.461115 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.719875 -0.000004 0.000001 -0.000002 2.000022 -0.000003 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.38365 0.000004 0 -0.000002 -0.000003 -0.000003 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 4.525587 -0.000103 -0.616741 2.995652 6.002187 0.1987 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.807671 0 -0.000002 -0.000001 2.000022 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.614256 0 0.000001 -0.000001 -0.000003 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 4.525587 0.000103 0.616741 2.00111 5.999611 0.094021 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.71987 0 0 -0.000003 2.000022 -0.000003 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.38365 -0.000004 0 -0.000003 -0.000003 -0.000003 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 4.525587 0.000301 1.850224 -1.976936 6.007631 -0.324238 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.433229 0 0.000001 -0.000002 2.000023 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 1.15304 0 0 -0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0 0.001585 -3.638375 73.581758 179.953848 -0.000573 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 8.842832 0 0 -43.852123 0 0 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 9.341938 0 -0.000004 0 -11.459156 0 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 11.168402 -0.000001 -0.000004 -5.806983 -4.381351 86.679807 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 1.364901 0.231174 1.98441 -35.259076 9.986821 -93.494226 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 1.748535 -0.000002 0 0.000003 16.49998 0 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 1.272493 0 0 0.000003 -2.499987 0 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 4.525583 -0.000301 1.850223 -5.481888 6.016514 -0.461118 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.719875 0 0 0.000001 2.000025 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.383648 0 0 0.000001 -0.000001 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 4.525581 -0.000103 0.616742 -2.995653 6.002188 -0.198703 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.807673 0 0 0 2.000022 -0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.614258 -0.000004 0 0 -0.000001 -0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 4.525578 0.000099 -0.616741 -2.001111 5.999613 -0.094024 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.719872 -0.000004 0 0.000002 2.000024 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.383646 0.000004 0 0.000002 0 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 4.525581 0.000301 -1.850223 1.976935 6.007632 0.324235 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 1.433226 0.000004 0 0 2.000019 -0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 1.15304 0 0 0 -0.000005 -0.000003 0 0 0 0 0 0
$definebone "Bip01 Head" "Bip01 Neck" 1.977379 0 0 0 -0.045722 0 0 0 0 0 0 0
$definebone "Bone05" "Bip01 Head" 3.723976 2.768054 -0.049087 -0.000115 90.000154 -179.999966 0 0 0 0 0 0
$definebone "Dummy05" "Bip01 Head" 11.78186 -0.001184 -0.000003 0 0 0 0 0 0 0 0 0
$definebone "L_eyebrow" "Dummy05" -3.887192 4.546144 1.934869 -89.999983 -179.999911 0 0 0 0 0 0 0
$definebone "C_eyebrow" "Dummy05" -4.205009 4.546216 -0.015855 -89.999983 -179.999911 0 0 0 0 0 0 0
$definebone "R_eyebrow" "Dummy05" -3.887192 4.546178 -1.987145 -89.999983 -179.999911 0 0 0 0 0 0 0
$definebone "R_Eye" "Dummy05" -4.881813 5.593821 -1.56682 -85.239163 118.958646 60.006962 0 0 0 0 0 0
$definebone "Eyelids" "Dummy05" -4.886909 5.683144 -0.00757 -89.999983 -179.499941 0 0 0 0 0 0 0
$definebone "L_Eye" "Dummy05" -4.881798 5.60955 1.546659 -85.239163 118.958646 60.006962 0 0 0 0 0 0
$definebone "m4" "Bip01 R Hand" 3.710045 1.760548 -0.059361 -10.882987 113.098037 12.516778 0 0 0 0 0 0
$definebone "SHOTGUN" "Bip01 R Finger0" 12.138049 14.189942 -4.062706 -69.667151 -102.825425 61.825063 0 0 0 0 0 0


$sectionframes 30 120

$poseparameter "XR" -45 45 0
$poseparameter "mouth" 0 90 0

$animation "mdldecompiler_delta.smd" "hgrunt_anims\mdldecompiler_delta.smd" {
	fps 30
}

$animation "mouth_close" "hgrunt_anims\mouth_close.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "mdldecompiler_delta.smd" 0
}

$animation "mouth_open" "hgrunt_anims\mouth_open.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "mdldecompiler_delta.smd" 0
}

$sequence "ragdoll" {
	"hgrunt_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" -1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "walk1" {
	"hgrunt_anims\walk1.smd"
	activity "ACT_WALK" -1
	{ event 1100 3 "event_emit Step" }
	{ event 1100 24 "event_emit Step" }
	{ event 1100 45 "event_emit Step" }
	{ event 1100 66 "event_emit Step" }
	fadein 0.2
	fadeout 0.2
	fps 35
	loop
}

$sequence "walk1_pistol" {
	"hgrunt_anims\walk1_pistol.smd"
	activity "ACT_WALK_AIM_RELAXED" -1
	{ event 1100 3 "event_emit Step" }
	{ event 1100 24 "event_emit Step" }
	{ event 1100 45 "event_emit Step" }
	{ event 1100 66 "event_emit Step" }
	fadein 0.2
	fadeout 0.2
	fps 35
	loop
}

$sequence "run" {
	"hgrunt_anims\run.smd"
	activity "ACT_RUN" -1
	{ event 1100 0 "event_emit Step" }
	{ event 1100 12 "event_emit Step" }
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
}

$sequence "run_pistol" {
	"hgrunt_anims\run_pistol.smd"
	activity "ACT_RUN_RELAXED" -1
	{ event 1100 0 "event_emit Step" }
	{ event 1100 12 "event_emit Step" }
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
}

$sequence "victorydance" {
	"hgrunt_anims\victorydance.smd"
	activity "ACT_VICTORY_DANCE" -1
	fadein 0.2
	fadeout 0.2
	fps 21
}

$sequence "cower" {
	"hgrunt_anims\cower.smd"
	activity "ACT_COWER" -1
	fadein 0.2
	fadeout 0.2
	fps 14
}

$sequence "smflinch" {
	"hgrunt_anims\smflinch.smd"
	activity "ACT_SMALL_FLINCH" -1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "leftlegsmflinch" {
	"hgrunt_anims\leftlegsmflinch.smd"
	activity "ACT_FLINCH_LEFTLEG" -1
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "rightlegsmflinch" {
	"hgrunt_anims\rightlegsmflinch.smd"
	activity "ACT_FLINCH_RIGHTLEG" -1
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "rightarmflinch" {
	"hgrunt_anims\rightarmflinch.smd"
	activity "ACT_FLINCH_RIGHTARM" -1
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "leftarmflinch" {
	"hgrunt_anims\leftarmflinch.smd"
	activity "ACT_FLINCH_LEFTARM" -1
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "launchgrenade" {
	"hgrunt_anims\launchgrenade.smd"
	activity "ACT_ARM" -1
	{ event 1100 25 "event_rattack grenadelauncher" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throwgrenade" {
	"hgrunt_anims\throwgrenade.smd"
	activity "ACT_RANGE_ATTACK2" -1
	{ event 1100 15 "event_rattack grenade_take" }
	{ event 1100 36 "event_rattack grenade_throw" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle1" {
	"hgrunt_anims\idle1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "idle2" {
	"hgrunt_anims\idle2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "idle1_pistol" {
	"hgrunt_anims\idle1_pistol.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "idle2_pistol" {
	"hgrunt_anims\idle2_pistol.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "combatidle" {
	"hgrunt_anims\combatidle.smd"
	activity "ACT_IDLE_ANGRY" -1
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "frontkick" {
	"hgrunt_anims\frontkick.smd"
	activity "ACT_MELEE_ATTACK1" -1
	{ event 1100 14 "event_mattack kick" }
	fadein 0.2
	fadeout 0.2
	fps 35
}

$sequence "crouching_idle" {
	"hgrunt_anims\crouching_idle.smd"
	activity "ACT_CROUCHIDLE" -1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "crouching_wait" {
	"hgrunt_anims\crouching_wait.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "crouching_mp5" {
	"hgrunt_anims\crouching_mp5.smd"
	"hgrunt_anims\crouching_mp5_2.smd"
	activity "ACT_RANGE_ATTACK1_LOW" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 0 "event_burstsound" }
	{ event 1100 0 "event_rattack burstfire" }
	{ event 1100 2 "event_rattack burstfire" }
	{ event 1100 4 "event_rattack burstfire" }
	{ event 1100 11 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "standing_mp5" {
	"hgrunt_anims\standing_mp5.smd"
	"hgrunt_anims\standing_mp5_2.smd"
	activity "ACT_SIGNAL_ADVANCE" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 0 "event_burstsound" }
	{ event 1100 0 "event_rattack burstfire" }
	{ event 1100 2 "event_rattack burstfire" }
	{ event 1100 4 "event_rattack burstfire" }
	{ event 1100 11 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "reload_mp5" {
	"hgrunt_anims\reload_mp5.smd"
	activity "ACT_RELOAD" -1
	{ event 1100 23 "event_emit Reload" }
	{ event 1100 47 "event_reload" }
	{ event 1100 60 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 36
}

$sequence "crouching_shotgun" {
	"hgrunt_anims\crouching_shotgun.smd"
	"hgrunt_anims\crouching_shotgun_2.smd"
	activity "ACT_RANGE_ATTACK2_LOW" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 0 "event_burstsound" }
	{ event 1100 1 "event_rattack burstfire" }
	{ event 1100 11 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "standing_shotgun" {
	"hgrunt_anims\standing_shotgun.smd"
	"hgrunt_anims\standing_shotgun_2.smd"
	activity "ACT_SIGNAL_FORWARD" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 0 "event_burstsound" }
	{ event 1100 1 "event_rattack burstfire" }
	{ event 1100 11 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "reload_shotgun" {
	"hgrunt_anims\reload_shotgun.smd"
	activity "ACT_RELOAD_LOW" -1
	{ event 1100 23 "event_emit Reload" }
	{ event 1100 47 "event_reload" }
	{ event 1100 60 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 36
}

$sequence "crouching_pistol" {
	"hgrunt_anims\crouching_pistol.smd"
	"hgrunt_anims\crouching_pistol_2.smd"
	activity "ACT_MELEE_ATTACK2" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 2 "event_burstsound" }
	{ event 1100 2 "event_rattack burstfire" }
	{ event 1100 11 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "standing_pistol" {
	"hgrunt_anims\standing_pistol.smd"
	"hgrunt_anims\standing_pistol_2.smd"
	activity "ACT_SIGNAL_GROUP" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 2 "event_burstsound" }
	{ event 1100 2 "event_rattack burstfire" }
	{ event 1100 11 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "reload_pistol" {
	"hgrunt_anims\reload_pistol.smd"
	activity "ACT_LOOKBACK_LEFT" -1
	{ event 1100 37 "event_emit Reload" }
	{ event 1100 49 "event_reload" }
	{ event 1100 69 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "crouching_saw" {
	"hgrunt_anims\crouching_saw.smd"
	"hgrunt_anims\crouching_saw_2.smd"
	activity "ACT_SPECIAL_ATTACK2" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 0 "event_burstsound" }
	{ event 1100 2 "event_rattack burstfire" }
	{ event 1100 2 "event_burstsound" }
	{ event 1100 4 "event_rattack burstfire" }
	{ event 1100 4 "event_burstsound" }
	{ event 1100 6 "event_rattack burstfire" }
	{ event 1100 6 "event_burstsound" }
	{ event 1100 8 "event_rattack burstfire" }
	{ event 1100 8 "event_burstsound" }
	{ event 1100 10 "event_rattack burstfire" }
	{ event 1100 10 "event_burstsound" }
	{ event 1100 12 "event_rattack burstfire" }
	{ event 1100 12 "event_burstsound" }
	{ event 1100 14 "event_rattack burstfire" }
	{ event 1100 14 "event_burstsound" }
	{ event 1100 16 "event_rattack burstfire" }
	{ event 1100 16 "event_burstsound" }
	{ event 1100 18 "event_rattack burstfire" }
	{ event 1100 18 "event_burstsound" }
	{ event 1100 20 "event_rattack burstfire" }
	{ event 1100 20 "event_burstsound" }
	{ event 1100 25 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "standing_saw" {
	"hgrunt_anims\standing_saw.smd"
	"hgrunt_anims\standing_saw_2.smd"
	activity "ACT_SIGNAL_LEFT" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 0 "event_burstsound" }
	{ event 1100 2 "event_rattack burstfire" }
	{ event 1100 2 "event_burstsound" }
	{ event 1100 4 "event_rattack burstfire" }
	{ event 1100 4 "event_burstsound" }
	{ event 1100 6 "event_rattack burstfire" }
	{ event 1100 6 "event_burstsound" }
	{ event 1100 8 "event_rattack burstfire" }
	{ event 1100 8 "event_burstsound" }
	{ event 1100 10 "event_rattack burstfire" }
	{ event 1100 10 "event_burstsound" }
	{ event 1100 12 "event_rattack burstfire" }
	{ event 1100 12 "event_burstsound" }
	{ event 1100 14 "event_rattack burstfire" }
	{ event 1100 14 "event_burstsound" }
	{ event 1100 16 "event_rattack burstfire" }
	{ event 1100 16 "event_burstsound" }
	{ event 1100 18 "event_rattack burstfire" }
	{ event 1100 18 "event_burstsound" }
	{ event 1100 20 "event_rattack burstfire" }
	{ event 1100 20 "event_burstsound" }
	{ event 1100 25 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "reload_saw" {
	"hgrunt_anims\reload_saw.smd"
	activity "ACT_SIGNAL_HALT" -1
	{ event 1100 40 "event_emit Reload" }
	{ event 1100 47 "event_reload" }
	{ event 1100 69 "event_rattack shoot" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "advance_signal" {
	"hgrunt_anims\advance_signal.smd"
	activity "ACT_SIGNAL1" -1
	{ event 10 7 "" }
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "flank_signal" {
	"hgrunt_anims\flank_signal.smd"
	activity "ACT_SIGNAL2" -1
	fadein 0.2
	fadeout 0.2
	fps 19
}

$sequence "retreat_signal" {
	"hgrunt_anims\retreat_signal.smd"
	activity "ACT_SIGNAL3" -1
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "drop_grenade" {
	"hgrunt_anims\drop_grenade.smd"
	activity "ACT_SPECIAL_ATTACK1" -1
	{ event 9 31 "" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "limpingwalk" {
	"hgrunt_anims\limpingwalk.smd"
	activity "ACT_WALK_HURT" -1
	{ event 1100 2 "event_emit Step" }
	{ event 1100 23 "event_emit Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "limpingrun" {
	"hgrunt_anims\limpingrun.smd"
	activity "ACT_RUN_HURT" -1
	{ event 1100 8 "event_emit Step" }
	{ event 1100 16 "event_emit Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "180L" {
	"hgrunt_anims\180L.smd"
	activity "ACT_TURN_LEFT" -1
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "180R" {
	"hgrunt_anims\180R.smd"
	activity "ACT_TURN_RIGHT" -1
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "strafeleft" {
	"hgrunt_anims\strafeleft.smd"
	activity "ACT_STRAFE_LEFT" -1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "straferight" {
	"hgrunt_anims\straferight.smd"
	activity "ACT_STRAFE_RIGHT" -1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "dieback1" {
	"hgrunt_anims\dieback1.smd"
	activity "ACT_DIEBACKWARD" 1
	{ event 11 5 "" }
	{ event 1100 15 "event_dropdead" }
	{ event 2001 17 "" }
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "dieforward" {
	"hgrunt_anims\dieforward.smd"
	activity "ACT_DIEFORWARD" -1
	{ event 11 12 "" }
	{ event 2001 19 "" }
	{ event 1100 27 "event_dropdead" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "diesimple" {
	"hgrunt_anims\diesimple.smd"
	activity "ACT_DIESIMPLE" -1
	{ event 11 3 "" }
	{ event 1100 7 "event_dropdead" }
	{ event 2001 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "diebackwards" {
	"hgrunt_anims\diebackwards.smd"
	activity "ACT_DIEBACKWARD" 1
	{ event 11 6 "" }
	{ event 1100 8 "event_dropdead" }
	{ event 2001 12 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "dieheadshot" {
	"hgrunt_anims\dieheadshot.smd"
	activity "ACT_DIE_HEADSHOT" -1
	{ event 11 1 "" }
	{ event 1100 15 "event_dropdead" }
	{ event 2001 20 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "diegutshot" {
	"hgrunt_anims\diegutshot.smd"
	activity "ACT_DIE_GUTSHOT" -1
	{ event 11 0 "" }
	{ event 2001 29 "" }
	{ event 1100 59 "event_dropdead" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "barnacled1" {
	"hgrunt_anims\barnacled1.smd"
	activity "ACT_BARNACLE_HIT" -1
	fadein 0.2
	fadeout 0.2
	fps 18
}

$sequence "barnacled2" {
	"hgrunt_anims\barnacled2.smd"
	activity "ACT_BARNACLE_PULL" -1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "barnacled3" {
	"hgrunt_anims\barnacled3.smd"
	activity "ACT_BARNACLE_CHOMP" -1
	fadein 0.2
	fadeout 0.2
	fps 18
}

$sequence "barnacled4" {
	"hgrunt_anims\barnacled4.smd"
	activity "ACT_BARNACLE_CHEW" -1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "dead_on_stomach" {
	"hgrunt_anims\dead_on_stomach.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "deadstomach" {
	"hgrunt_anims\deadstomach.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "deadside" {
	"hgrunt_anims\deadside.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "deadsitting" {
	"hgrunt_anims\deadsitting.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "repel_jump" {
	"hgrunt_anims\repel_jump.smd"
	activity "ACT_HOVER" -1
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "repel_repel" {
	"hgrunt_anims\repel_repel.smd"
	activity "ACT_GLIDE" -1
	fadein 0.2
	fadeout 0.2
	fps 18
	loop
}

$sequence "repel_shoot" {
	"hgrunt_anims\repel_shoot.smd"
	"hgrunt_anims\repel_shoot_2.smd"
	activity "ACT_FLY" -1
	blend "XR" -45 45
	blendwidth 2
	{ event 4 0 "" }
	{ event 5 2 "" }
	{ event 6 4 "" }
	{ event 5001 0 "" }
	{ event 5001 2 "" }
	{ event 5001 4 "" }
	fadein 0.2
	fadeout 0.2
	fps 18
	loop
}

$sequence "repel_land" {
	"hgrunt_anims\repel_land.smd"
	activity "ACT_LAND" -1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "repel_die" {
	"hgrunt_anims\repel_die.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "dragholeidle" {
	"hgrunt_anims\dragholeidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "draghole" {
	"hgrunt_anims\draghole.smd"
	{ event 1000 1 "" }
	{ event 1004 20 "NPC.BustFlesh1" }
	fadein 0.2
	fadeout 0.2
	fps 5
}

$sequence "bustwall" {
	"hgrunt_anims\bustwall.smd"
	{ event 1000 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "hoprail" {
	"hgrunt_anims\hoprail.smd"
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "cpr" {
	"hgrunt_anims\cpr.smd"
	{ event 1000 120 "" }
	{ event 1001 120 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hgrunt_on_stretcher" {
	"hgrunt_anims\hgrunt_on_stretcher.smd"
	fadein 0.2
	fadeout 0.2
	fps 34
}

$sequence "holding_on" {
	"hgrunt_anims\holding_on.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "mic_idle1" {
	"hgrunt_anims\mic_idle1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "mic_idle2" {
	"hgrunt_anims\mic_idle2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "mic_idle3" {
	"hgrunt_anims\mic_idle3.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "mic_idle4" {
	"hgrunt_anims\mic_idle4.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "mic_stand" {
	"hgrunt_anims\mic_stand.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "interogation" {
	"hgrunt_anims\interogation.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "interogation_idle" {
	"hgrunt_anims\interogation_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "shoot_shotgun" {
	"hgrunt_anims\shoot_shotgun.smd"
	{ event 4 12 "" }
	{ event 5001 12 "51" }
	{ event 2 28 "" }
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "open_floor_grate" {
	"hgrunt_anims\open_floor_grate.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "react" {
	"hgrunt_anims\react.smd"
	{ event 1000 1 "" }
	{ event 1001 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sitting" {
	"hgrunt_anims\sitting.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "sitting2" {
	"hgrunt_anims\sitting2.smd"
	fadein 0.2
	fadeout 0.2
	fps 8
	loop
}

$sequence "sitting3" {
	"hgrunt_anims\sitting3.smd"
	fadein 0.2
	fadeout 0.2
	fps 6
	loop
}

$sequence "crawling" {
	"hgrunt_anims\crawling.smd"
	{ event 1001 120 "" }
	fadein 0.2
	fadeout 0.2
	fps 17
}

$sequence "converse1" {
	"hgrunt_anims\converse1.smd"
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "converse2" {
	"hgrunt_anims\converse2.smd"
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "startleleft" {
	"hgrunt_anims\startleleft.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "startleright" {
	"hgrunt_anims\startleright.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
}

$sequence "divecover" {
	"hgrunt_anims\divecover.smd"
	activity "ACT_LEAP" -1
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "defuse" {
	"hgrunt_anims\defuse.smd"
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "corner1" {
	"hgrunt_anims\corner1.smd"
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "corner2" {
	"hgrunt_anims\corner2.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$sequence "stone_toss" {
	"hgrunt_anims\stone_toss.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "cliffdie" {
	"hgrunt_anims\cliffdie.smd"
	{ event 1001 1 "" }
	{ event 1000 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 36
}

$sequence "diveaside_idle" {
	"hgrunt_anims\diveaside_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "diveaside" {
	"hgrunt_anims\diveaside.smd"
	{ event 4 1 "" }
	{ event 5 1 "" }
	{ event 6 1 "" }
	{ event 4 1 "" }
	{ event 5 1 "" }
	{ event 6 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "kneeldive_idle" {
	"hgrunt_anims\kneeldive_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "kneeldive" {
	"hgrunt_anims\kneeldive.smd"
	{ event 4 1 "" }
	{ event 5 1 "" }
	{ event 6 1 "" }
	{ event 4 1 "" }
	{ event 5 1 "" }
	{ event 6 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "WM_button" {
	"hgrunt_anims\WM_button.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "WM_moatjump" {
	"hgrunt_anims\WM_moatjump.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "bustwindow" {
	"hgrunt_anims\bustwindow.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "dragright" {
	"hgrunt_anims\dragright.smd"
	fadein 0.2
	fadeout 0.2
	fps 28
	loop
}

$sequence "dragleft" {
	"hgrunt_anims\dragleft.smd"
	fadein 0.2
	fadeout 0.2
	fps 28
	loop
}

$sequence "trackwave" {
	"hgrunt_anims\trackwave.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "trackdive" {
	"hgrunt_anims\trackdive.smd"
	fadein 0.2
	fadeout 0.2
	fps 28
}

$sequence "flyback" {
	"hgrunt_anims\flyback.smd"
	{ event 1008 1 "NPC.Electro4" }
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "impaled" {
	"hgrunt_anims\impaled.smd"
	{ event 1000 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "jumptracks" {
	"hgrunt_anims\jumptracks.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pipetoss" {
	"hgrunt_anims\pipetoss.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plunger" {
	"hgrunt_anims\plunger.smd"
	fadein 0.2
	fadeout 0.2
	fps 22
}

$sequence "soldier_dump" {
	"hgrunt_anims\soldier_dump.smd"
	fadein 0.2
	fadeout 0.2
	fps 28
}

$sequence "soldier_dump_idle" {
	"hgrunt_anims\soldier_dump_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 28
	loop
}

$sequence "soldier_shoot_ahead" {
	"hgrunt_anims\soldier_shoot_ahead.smd"
	activity "ACT_RANGE_ATTACK1" -1
	{ event 1100 2 "event_rattack burst_mp5" }
	{ event 1100 7 "event_rattack burst_mp5" }
	{ event 1100 12 "event_rattack burst_mp5" }
	fadein 0.2
	fadeout 0.2
	fps 32
	loop
}

$sequence "soldier_kick" {
	"hgrunt_anims\soldier_kick.smd"
	{ event 1003 13 "00xy_frontkick" }
	fadein 0.2
	fadeout 0.2
	fps 35
}

$sequence "barney_mouth" {
	"mouth_close"
	"mouth_open"
	autoplay
	blend "mouth" 0 90
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "mdldecompiler_delta.smd" 0
}

$collisionjoints "hgrunt_physics.smd"
{
	$mass 115
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "bip01"


	$jointconstrain "Bip01 Spine" x limit -20 20 0
	$jointconstrain "Bip01 Spine" y limit -25 25 0
	$jointconstrain "Bip01 Spine" z limit -25 30 0

	$jointconstrain "Bip01 R UpperArm" x limit -30 30 0
	$jointconstrain "Bip01 R UpperArm" y limit -45 80 0
	$jointconstrain "Bip01 R UpperArm" z limit -110 40 0

	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit 0 0 0
	$jointconstrain "Bip01 R Forearm" z limit -90 4 0

	$jointconstrain "Bip01 L UpperArm" x limit -30 30 0
	$jointconstrain "Bip01 L UpperArm" y limit -80 45 0
	$jointconstrain "Bip01 L UpperArm" z limit -110 40 0

	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit 0 0 0
	$jointconstrain "Bip01 L Forearm" z limit -90 4 0

	$jointconstrain "Bip01 L Hand" x limit -60 60 0
	$jointconstrain "Bip01 L Hand" y limit 0 20 0
	$jointconstrain "Bip01 L Hand" z limit -35 35 0

	$jointconstrain "Bip01 R Hand" x limit -60 60 0
	$jointconstrain "Bip01 R Hand" y limit -20 0 0
	$jointconstrain "Bip01 R Hand" z limit -35 35 0

	$jointconstrain "Bip01 R Thigh" x limit -25 30 0
	$jointconstrain "Bip01 R Thigh" y limit -40 20 0
	$jointconstrain "Bip01 R Thigh" z limit -37 63 0

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit 0 0 0
	$jointconstrain "Bip01 R Calf" z limit -95 4 0

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -40 40 0.04
	$jointconstrain "Bip01 Head" y limit -25 25 0.04
	$jointconstrain "Bip01 Head" z limit -13 30 0.04

	$jointconstrain "Bip01 L Thigh" x limit -30 25 0
	$jointconstrain "Bip01 L Thigh" y limit -20 40 0
	$jointconstrain "Bip01 L Thigh" z limit -37 63 0

	$jointconstrain "Bip01 L Calf" x limit 0 0 0
	$jointconstrain "Bip01 L Calf" y limit 0 0 0
	$jointconstrain "Bip01 L Calf" z limit -95 4 0.04

	$jointconstrain "Bip01 L Foot" x limit -10 10 0
	$jointconstrain "Bip01 L Foot" y limit -5 5 0
	$jointconstrain "Bip01 L Foot" z limit -15 35 0

	$jointconstrain "Bip01 R Foot" x limit -10 10 0
	$jointconstrain "Bip01 R Foot" y limit -5 5 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 0.04
}
