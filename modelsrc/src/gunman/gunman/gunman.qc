/********************************TODO: \\ FIXMEs:********************************

sort out movement animations. either we go back to goldsrc style, or animate our own directional ones.
figure out what to do with equipment. Should we keep? or replace with traditional source attachments?
playermodels? npcs?
add jiggle bones?

**********************************************************************/




$modelname "gunman/gunman.mdl"
//$modelname "gunman/gunman_posing.mdl"



$model "Gunman Soldier" "gunman_ref.smd" {

	mouth 0 "mouth" "Bone01" 0 1 0

}

$bodygroup "Trooper"
{
	studio "gunman_type_officer"
	studio "gunman_type_trooper"
}

$bodygroup "Equipment"
{
	blank
	studio "gunman_equip_holsteredPistol.smd"
	studio "gunman_equip_pistol.smd"
	studio "gunman_equip_shotgun.smd"
	studio "gunman_equip_flashlight.smd"
}

$include "inc/misc.qci"

$include "inc/animations.qci"

$sequence "ragdoll" {
	"gunman_anims\reference.smd"
	activity ACT_DIERAGDOLL 1
	fps 30
}

$include "inc/sequences.qci"

$include "inc/sequencesMisc.qci"

$include "inc/physics.qci"

$include "inc/jiggle.qci"