// Created by Crowbar 0.65

$modelname "Combine_dropship.mdl"

$bodygroup "Body"
{
	studio "combine_dropship_Dropship_reference.smd"
}
$bodygroup "engine_fx"
{
	studio "combine_dropship_thrustfx_reference.smd"
	blank
}

$lod 50
{
	replacemodel "combine_dropship_Dropship_reference.smd" "combine_dropship_Dropship_reference_lod1.smd"
	replacemodel "combine_dropship_thrustfx_reference.smd" "combine_dropship_thrustfx_reference_lod1.smd"
	replacebone "D_ship.FootThruster_R" "D_ship.Ankle_R"
	replacebone "D_ship.cargo_attachment" "D_ship.Spine1"
	replacebone "D_ship.RearThruster_R" "D_ship.Thruster2_R"
	replacebone "D_ship.RearThruster_L" "D_ship.Thruster2_L"
	replacebone "D_ship.FootThruster_L" "D_ship.Ankle_L"
	replacebone "D_ship.Leg_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_R_eff" "D_ship.Leg2_R"
	replacebone "D_ship.Ankle_R_Root" "D_ship.Leg_R_eff"
	replacebone "D_ship.Spine_Root" "D_ship.Pelvis"
	replacebone "D_ship.Spine_eff" "D_ship.Spine2"
	replacebone "D_ship.Arm_R_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Arm_L_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Thruster1_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_R_eff" "D_ship.Thruster1_R"
	replacebone "D_ship.Thruster2_R_Root" "D_ship.Thruster1_R_eff"
	replacebone "D_ship.Thruster1_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_L_eff" "D_ship.Thruster1_L"
	replacebone "D_ship.Thruster2_L_Root" "D_ship.Thruster1_L_eff"
	replacebone "D_ship.Leg_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_L_eff" "D_ship.Leg2_L"
	replacebone "D_ship.Ankle_L_Root" "D_ship.Leg_L_eff"
	nofacial
}
$lod 95
{
	replacemodel "combine_dropship_Dropship_reference.smd" "combine_dropship_Dropship_reference_lod2.smd"
	replacemodel "combine_dropship_thrustfx_reference.smd" "combine_dropship_thrustfx_reference_lod2.smd"
	replacebone "D_ship.FootThruster_R" "D_ship.Ankle_R"
	replacebone "D_ship.cargo_attachment" "D_ship.Spine1"
	replacebone "D_ship.RearThruster_R" "D_ship.Thruster2_R"
	replacebone "D_ship.RearThruster_L" "D_ship.Thruster2_L"
	replacebone "D_ship.FootThruster_L" "D_ship.Ankle_L"
	replacebone "D_ship.Leg_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_R_eff" "D_ship.Leg2_R"
	replacebone "D_ship.Ankle_R_Root" "D_ship.Leg_R_eff"
	replacebone "D_ship.Spine_Root" "D_ship.Pelvis"
	replacebone "D_ship.Spine_eff" "D_ship.Spine2"
	replacebone "D_ship.Arm_R_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Arm_L_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Thruster1_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_R_eff" "D_ship.Thruster1_R"
	replacebone "D_ship.Thruster2_R_Root" "D_ship.Thruster1_R_eff"
	replacebone "D_ship.Thruster1_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_L_eff" "D_ship.Thruster1_L"
	replacebone "D_ship.Thruster2_L_Root" "D_ship.Thruster1_L_eff"
	replacebone "D_ship.Leg_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_L_eff" "D_ship.Leg2_L"
	replacebone "D_ship.Ankle_L_Root" "D_ship.Leg_L_eff"
	nofacial
}
$lod 175
{
	replacemodel "combine_dropship_Dropship_reference.smd" "combine_dropship_Dropship_reference_lod3.smd"
	replacemodel "combine_dropship_thrustfx_reference.smd" "combine_dropship_thrustfx_reference_lod3.smd"
	replacebone "D_ship.FootThruster_R" "D_ship.Ankle_R"
	replacebone "D_ship.cargo_attachment" "D_ship.Spine1"
	replacebone "D_ship.RearThruster_R" "D_ship.Thruster2_R"
	replacebone "D_ship.RearThruster_L" "D_ship.Thruster2_L"
	replacebone "D_ship.FootThruster_L" "D_ship.Ankle_L"
	replacebone "D_ship.Leg_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_R_eff" "D_ship.Leg2_R"
	replacebone "D_ship.Ankle_R_Root" "D_ship.Leg_R_eff"
	replacebone "D_ship.Spine_Root" "D_ship.Pelvis"
	replacebone "D_ship.Spine_eff" "D_ship.Spine2"
	replacebone "D_ship.Arm_R_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Arm_L_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Thruster1_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_R_eff" "D_ship.Thruster1_R"
	replacebone "D_ship.Thruster2_R_Root" "D_ship.Thruster1_R_eff"
	replacebone "D_ship.Thruster1_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_L_eff" "D_ship.Thruster1_L"
	replacebone "D_ship.Thruster2_L_Root" "D_ship.Thruster1_L_eff"
	replacebone "D_ship.Leg_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_L_eff" "D_ship.Leg2_L"
	replacebone "D_ship.Ankle_L_Root" "D_ship.Leg_L_eff"
	nofacial
}
$lod 280
{
	replacemodel "combine_dropship_Dropship_reference.smd" "combine_dropship_Dropship_reference_lod4.smd"
	replacemodel "combine_dropship_thrustfx_reference.smd" "combine_dropship_thrustfx_reference_lod4.smd"
	replacebone "D_ship.FootThruster_R" "D_ship.Ankle_R"
	replacebone "D_ship.cargo_attachment" "D_ship.Spine1"
	replacebone "D_ship.RearThruster_R" "D_ship.Thruster2_R"
	replacebone "D_ship.RearThruster_L" "D_ship.Thruster2_L"
	replacebone "D_ship.FootThruster_L" "D_ship.Ankle_L"
	replacebone "D_ship.Leg_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_R_eff" "D_ship.Leg2_R"
	replacebone "D_ship.Ankle_R_Root" "D_ship.Leg_R_eff"
	replacebone "D_ship.Spine_Root" "D_ship.Pelvis"
	replacebone "D_ship.Spine_eff" "D_ship.Spine2"
	replacebone "D_ship.Arm_R_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Arm_L_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Thruster1_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_R_eff" "D_ship.Thruster1_R"
	replacebone "D_ship.Thruster2_R_Root" "D_ship.Thruster1_R_eff"
	replacebone "D_ship.Thruster1_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_L_eff" "D_ship.Thruster1_L"
	replacebone "D_ship.Thruster2_L_Root" "D_ship.Thruster1_L_eff"
	replacebone "D_ship.Leg_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_L_eff" "D_ship.Leg2_L"
	replacebone "D_ship.Ankle_L_Root" "D_ship.Leg_L_eff"
	nofacial
}
$shadowlod
{
	replacemodel "combine_dropship_Dropship_reference.smd" "combine_dropship_Dropship_reference_lod5.smd"
	replacemodel "combine_dropship_thrustfx_reference.smd" "combine_dropship_thrustfx_reference_lod5.smd"
	replacebone "D_ship.FootThruster_R" "D_ship.Ankle_R"
	replacebone "D_ship.cargo_attachment" "D_ship.Spine1"
	replacebone "D_ship.RearThruster_R" "D_ship.Thruster2_R"
	replacebone "D_ship.RearThruster_L" "D_ship.Thruster2_L"
	replacebone "D_ship.FootThruster_L" "D_ship.Ankle_L"
	replacebone "D_ship.Leg_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_R_eff" "D_ship.Leg2_R"
	replacebone "D_ship.Ankle_R_Root" "D_ship.Leg_R_eff"
	replacebone "D_ship.Spine_Root" "D_ship.Pelvis"
	replacebone "D_ship.Spine_eff" "D_ship.Spine2"
	replacebone "D_ship.Arm_R_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Arm_L_Root" "D_ship.Spine_eff"
	replacebone "D_ship.Thruster1_R_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_R_eff" "D_ship.Thruster1_R"
	replacebone "D_ship.Thruster2_R_Root" "D_ship.Thruster1_R_eff"
	replacebone "D_ship.Thruster1_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Thruster1_L_eff" "D_ship.Thruster1_L"
	replacebone "D_ship.Thruster2_L_Root" "D_ship.Thruster1_L_eff"
	replacebone "D_ship.Leg_L_Root" "D_ship.Pelvis"
	replacebone "D_ship.Leg_L_eff" "D_ship.Leg2_L"
	replacebone "D_ship.Ankle_L_Root" "D_ship.Leg_L_eff"
	nofacial
}

$contents "solid"

$illumposition 2.695 122.352 97.432

$cdmaterials "models\combine_dropship\"

$attachment "FootThruster_L" "D_ship.FootThruster_L" 0 0 0 rotate 0 0 0
$attachment "FootThruster_R" "D_ship.FootThruster_R" 0 0 0 rotate 0 0 0
$attachment "RearThruster_L" "D_ship.RearThruster_L" 0 0 0 rotate 0 0 0
$attachment "RearThruster_R" "D_ship.RearThruster_R" 0 0 0 rotate 0 0 0
$attachment "Cargo" "D_ship.Spine1" 50 50 0 rotate 0 0 0
$attachment "cargo_anim" "D_ship.cargo_attachment" 0 0 0 rotate -90 -90 0
$attachment "FootThruster_L" "D_ship.FootThruster_L" 0 0 0 rotate 0 0 0
$attachment "FootThruster_R" "D_ship.FootThruster_R" 0 0 0 rotate 0 0 0
$attachment "RearThruster_L" "D_ship.RearThruster_L" 0 0 0 rotate 0 0 0
$attachment "RearThruster_R" "D_ship.RearThruster_R" 0 0 0 rotate 0 0 0
$attachment "Cargo" "D_ship.Spine1" 50 50 0 rotate 0 0 0
$attachment "cargo_anim" "D_ship.cargo_attachment" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -423.828 -183.239 -21.849 179.124 188.629 216.713

$hboxset "default"
$hbox 0 "D_ship.Pelvis" -80 -35 -75 80 35 35
$hbox 0 "D_ship.Spine1" -15 -17.5 -80 135 27.5 80
$hbox 0 "D_ship.Arm1_L" -5 -9.5 -20 85 15.5 20
$hbox 0 "D_ship.Arm2_L" 0.5 -13.5 -23 75.5 19.5 19
$hbox 0 "D_ship.Arm1_R" -0.5 -10.5 -18 84.5 14.5 20
$hbox 0 "D_ship.Arm2_R" -1.5 -15.5 -19 73.5 19.5 23
$hbox 0 "D_ship.Sucker1_Rear_L" -5 -12 -18 55 10 20
$hbox 0 "D_ship.Sucker2_Rear_L" -0.2 -7 -15 39.799999 8 15
$hbox 0 "D_ship.Sucker_Wrist_Rear_L" -0.5 -7.5 -20 36.5 10.5 20
$hbox 0 "D_ship.Sucker1_Front_L" 7 -8 -14 57 10 14
$hbox 0 "D_ship.Sucker2_Front_L" -4 -9 -13.23 40 9 10.53
$hbox 0 "D_ship.Sucker_Wrist_Front_L" -1.59 -16.5 -14.6 34.959999 11.5 13.4
$hbox 0 "D_ship.Sucker1_Rear_R" -2 -12 -22 58 10 18
$hbox 0 "D_ship.Sucker2_Rear_R" -1.91 -7 -16 41.970001 8 16
$hbox 0 "D_ship.Sucker_Wrist_Rear_R" -0.31 -7.58 -19.74 36.43 10.42 18.26
$hbox 0 "D_ship.Sucker1_Front_R" 6 -8 -15 58 10 15
$hbox 0 "D_ship.Sucker2_Front_R" -4.14 -8.58 -9.96 40.860001 9.42 13.04
$hbox 0 "D_ship.Sucker_Wrist_Front_R" -0.95 -16.1 -13.2 34.049999 11.9 14.8
$hbox 0 "D_ship.Thruster1_R" -10 -29.5 -35.5 90 35.5 29.5
$hbox 0 "D_ship.Thruster2_R" -10.8 -23.200001 -42.139999 200.800003 56.799999 37.860001
$hbox 0 "D_ship.Thruster1_L" -10 -29.5 -32.5 90 35.5 32.5
$hbox 0 "D_ship.Thruster2_L" -10.85 -23.209999 -38.299999 200.850006 56.790001 41.700001
$hbox 0 "D_ship.Leg2_L" -15.12 -37.02 -29.5 49.880001 27.98 35.5
$hbox 0 "D_ship.Ankle_L" -9.25 -27.950001 -33.200001 60.75 42.049999 36.799999
$hbox 0 "D_ship.Toe1_L1" -5 -6.2 -11.52 45 6.05 10.69
$hbox 0 "D_ship.Toe1_L2" -5 -9.33 -10.64 45 8.23 10.62
$hbox 0 "D_ship.Toe1_L3" -5 -8.4 -10.51 45 4.57 9.71
$hbox 0 "D_ship.Leg2_R" -14.74 -36.759998 -35.5 50.259998 28.24 29.5
$hbox 0 "D_ship.Ankle_R" -9.16 -27.5 -36.82 60.84 42.5 33.18
$hbox 0 "D_ship.Toe1_R1" -5 -6.41 -11.09 45 5.84 11.12
$hbox 0 "D_ship.Toe1_R2" -5 -8.93 -10.62 45 8.63 10.64
$hbox 0 "D_ship.Toe1_R3" -5 -8.26 -10.14 45 4.7 10.08
$skipboneinbbox


$sequence "ragdoll" {
	"combine_dropship_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$includemodel "combine_dropship_animations.mdl"

$collisionjoints "combine_dropship_physics.smd"
{
	$mass 400
	$inertia 10
	$damping 0.01
	$rotdamping 1
	$rootbone "d_ship.pelvis"


	$jointconstrain "D_ship.Leg2_R" x limit 0 0 0.2
	$jointconstrain "D_ship.Leg2_R" y limit -53 39 0.2
	$jointconstrain "D_ship.Leg2_R" z limit -77 39 0.2

	$jointconstrain "D_ship.Leg2_L" x limit 0 0 0.2
	$jointconstrain "D_ship.Leg2_L" y limit -53 39 0.2
	$jointconstrain "D_ship.Leg2_L" z limit -77 39 0.2

	$jointconstrain "D_ship.Ankle_L" x limit -23 23 0.2
	$jointconstrain "D_ship.Ankle_L" y limit -41 41 0.2
	$jointconstrain "D_ship.Ankle_L" z limit -61 37 0.2

	$jointconstrain "D_ship.Thruster1_L" x limit 0 0 0.2
	$jointconstrain "D_ship.Thruster1_L" y limit -35 30 0.2
	$jointconstrain "D_ship.Thruster1_L" z limit -88 55 0.2

	$jointconstrain "D_ship.Thruster2_L" x limit 0 0 0
	$jointconstrain "D_ship.Thruster2_L" y limit 0 0 0.2
	$jointconstrain "D_ship.Thruster2_L" z limit -48 12 0.2

	$jointconstrain "D_ship.Thruster1_R" x limit 0 0 0.2
	$jointconstrain "D_ship.Thruster1_R" y limit -35 30 0.2
	$jointconstrain "D_ship.Thruster1_R" z limit -88 55 0.2

	$jointconstrain "D_ship.Thruster2_R" x limit 0 0 0
	$jointconstrain "D_ship.Thruster2_R" y limit 0 0 0
	$jointconstrain "D_ship.Thruster2_R" z limit -48 12 0.2

	$jointconstrain "D_ship.Spine1" x limit -15 15 0.2
	$jointconstrain "D_ship.Spine1" y limit -26 26 0.2
	$jointconstrain "D_ship.Spine1" z limit -46 59 0.2

	$jointconstrain "D_ship.Sucker1_Front_R" x limit -30 30 0.2
	$jointconstrain "D_ship.Sucker1_Front_R" y limit -48 17 0.2
	$jointconstrain "D_ship.Sucker1_Front_R" z limit -77 46 0.2

	$jointconstrain "D_ship.Sucker1_Rear_R" x limit -30 30 0.2
	$jointconstrain "D_ship.Sucker1_Rear_R" y limit -41 37 0.2
	$jointconstrain "D_ship.Sucker1_Rear_R" z limit -91 41 0.2

	$jointconstrain "D_ship.Sucker2_Rear_R" x limit 0 0 0
	$jointconstrain "D_ship.Sucker2_Rear_R" y limit 0 0 0.2
	$jointconstrain "D_ship.Sucker2_Rear_R" z limit -75 46 0.2

	$jointconstrain "D_ship.Sucker1_Front_L" x limit -30 30 0.2
	$jointconstrain "D_ship.Sucker1_Front_L" y limit -48 17 0.2
	$jointconstrain "D_ship.Sucker1_Front_L" z limit -77 46 0.2

	$jointconstrain "D_ship.Sucker2_Front_L" x limit 0 0 0.2
	$jointconstrain "D_ship.Sucker2_Front_L" y limit 0 0 0.2
	$jointconstrain "D_ship.Sucker2_Front_L" z limit -79 48 0.2

	$jointconstrain "D_ship.Sucker1_Rear_L" x limit -30 30 0.2
	$jointconstrain "D_ship.Sucker1_Rear_L" y limit -41 37 0.2
	$jointconstrain "D_ship.Sucker1_Rear_L" z limit -91 41 0.2

	$jointconstrain "D_ship.Sucker2_Rear_L" x limit 0 0 0
	$jointconstrain "D_ship.Sucker2_Rear_L" y limit 0 0 0.2
	$jointconstrain "D_ship.Sucker2_Rear_L" z limit -75 46 0.2

	$jointconstrain "D_ship.Spine2" x limit 0 0 0.2
	$jointconstrain "D_ship.Spine2" y limit -8 8 0.2
	$jointconstrain "D_ship.Spine2" z limit -30 32 0.2

	$jointconstrain "D_ship.Arm1_R" x limit -61 61 0.2
	$jointconstrain "D_ship.Arm1_R" y limit -46 70 0.2
	$jointconstrain "D_ship.Arm1_R" z limit -124 26 0.2

	$jointconstrain "D_ship.Arm1_L" x limit -61 61 0.2
	$jointconstrain "D_ship.Arm1_L" y limit -46 70 0.2
	$jointconstrain "D_ship.Arm1_L" z limit -124 26 0.2

	$jointconstrain "D_ship.Arm2_L" x limit 0 0 0.2
	$jointconstrain "D_ship.Arm2_L" y limit 0 0 0
	$jointconstrain "D_ship.Arm2_L" z limit -129 1 0.2

	$jointconstrain "D_ship.Sucker2_Front_R" x limit 0 0 0.2
	$jointconstrain "D_ship.Sucker2_Front_R" y limit 0 0 0.2
	$jointconstrain "D_ship.Sucker2_Front_R" z limit -79 48 0.2

	$jointconstrain "D_ship.Arm2_R" x limit 0 0 0.2
	$jointconstrain "D_ship.Arm2_R" y limit 0 0 0.2
	$jointconstrain "D_ship.Arm2_R" z limit -129 1 0.2

	$jointconstrain "D_ship.Ankle_R" x limit -23 23 0.2
	$jointconstrain "D_ship.Ankle_R" y limit -41 41 0.2
	$jointconstrain "D_ship.Ankle_R" z limit -61 37 0.2
}
