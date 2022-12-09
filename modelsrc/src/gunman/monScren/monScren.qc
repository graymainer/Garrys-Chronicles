$modelname "gunman/monScren.mdl"

$staticprop
$body "helpme" "monScren_ref"
$cdmaterials "models/gunman/monScren"

$collisionmodel "monScren_ref" {
	$automass

}

$sequence idle "monScren_ref"
$surfaceprop "glass"
