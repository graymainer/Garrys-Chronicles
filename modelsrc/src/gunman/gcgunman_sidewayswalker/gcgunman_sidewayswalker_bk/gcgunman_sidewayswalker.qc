
//why oh why rewolf did you decide to animate this scene this way?


$modelname "gunman/gunman_sidewaysWalker.mdl"

$model "gunman" "gcgunman_sidewayswalker_gunmanwalker_walksoldier.smd"

$cdmaterials "models\gunman\gunman\"

$sequence "walkUp" {
	"gcgunman_sidewayswalker_anims\walkup#walk.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "walkUp_idle" {
	"gcgunman_sidewayswalker_anims\walkup#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
}

$sequence "walkDown" {
	"gcgunman_sidewayswalker_anims\walkdown#walk.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "walkDown_idle" {
	"gcgunman_sidewayswalker_anims\walkdown#idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
}
