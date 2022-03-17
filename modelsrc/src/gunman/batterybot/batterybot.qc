// Created by Crowbar 0.49.0.0

$modelname "gunman/batteryBot.mdl"

$model "Battery Bot" "batBot_ref.smd"

$cdmaterials "models/gunman/batteryBot/"


$attachment spike "Attachment Spike" 0 0 0
$attachment leftLeg "Attachment L Leg" 0 0 0
$attachment rightLeg "Attachment R Leg" 0 0 0
$attachment frontLeg "Attachment F Leg" 0 0 0

$contents "solid"
$surfaceprop "metalvehicle"

$collisionjoints "batBot_phys.smd" {

	$mass 165
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "bip02"

	$jointconstrain "attachment spike" x limit 0.00 0.00 0.00
	$jointconstrain "attachment spike" y limit 0.00 0.00 0.00
	$jointconstrain "attachment spike" z limit 0.00 0.00 0.00

	$jointconstrain "bip02 f leg" x limit -90.00 90.00 1.00
	$jointconstrain "bip02 f leg" y limit -15.00 80.00 1.00
	$jointconstrain "bip02 f leg" z limit 0.00 0.00 1.00

	$jointconstrain "bip02 f leg1" x limit 0.00 0.00 1.00
	$jointconstrain "bip02 f leg1" y limit -90.00 30.00 1.00
	$jointconstrain "bip02 f leg1" z limit 0.00 0.00 1.00

	$jointconstrain "bip02 r leg" x limit -90.00 90.00 1.00
	$jointconstrain "bip02 r leg" y limit -15.00 80.00 1.00
	$jointconstrain "bip02 r leg" z limit 0.00 0.00 1.00

	$jointconstrain "bip02 r leg1" x limit 0.00 0.00 1.00
	$jointconstrain "bip02 r leg1" y limit -90.00 30.00 1.00
	$jointconstrain "bip02 r leg1" z limit 0.00 0.00 1.00

	$jointconstrain "bip02 l leg" x limit -90.00 90.00 1.00
	$jointconstrain "bip02 l leg" y limit -15.00 80.00 1.00
	$jointconstrain "bip02 l leg" z limit 0.00 0.00 1.00

	$jointconstrain "bip02 l leg1" x limit 0.00 0.00 1.00
	$jointconstrain "bip02 l leg1" y limit -90.00 90.00 1.00
	$jointconstrain "bip02 l leg1" z limit 0.00 0.00 1.00

	$jointconstrain "bip02 head" x limit 0.00 0.00 1.00
	$jointconstrain "bip02 head" y limit 0.00 0.00 1.00
	$jointconstrain "bip02 head" z limit -180.00 180.00 1.00
}


$sequence "ragdoll" {
	"batterybot_anims\reference"
	ACT_DIERAGDOLL 1
	fps 30
}

$sequence "idle" {
	"batterybot_anims\idle"
	ACT_IDLE 1
	fps 10
	loop
}