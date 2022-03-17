// Created by Crowbar 0.49.0.0

$modelname "gcdropship.mdl"
$cd "."
$cliptotextures
$scale 1.0

$surfaceprop "metalvehicle"
$contents "solid"

$bodygroup "studio"
{
	studio "dropship_gunmandropship"
}

$cdmaterials "models/gcdropship/"


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$collisionmodel	"dropship_phys.smd"
{
	$concave
	$automass
}

$sequence "landing#idle" {
	"dropship_anims\landing#idle"
	fps 10
	loop
}
$sequence "landing#landing" {
	"dropship_anims\landing#landing"
	fps 20
}
$sequence "tipping#tipping" {
	"dropship_anims\tipping#tipping"
	fps 30
}
$sequence "tipping#idle" {
	"dropship_anims\tipping#idle"
	fps 10
	loop
}
$sequence "crash#idle" {
	"dropship_anims\crash#idle"
	fps 30
}
$sequence "crash#crash" {
	"dropship_anims\crash#crash"
	fps 30
}
$sequence "crashed#idle" {
	"dropship_anims\crashed#idle"
	fps 20
}
$sequence "flyover" {
	"dropship_anims\flyover"
	fps 90
}
$sequence "hanger1" {
	"dropship_anims\hanger1"
	fps 30
}
$sequence "hanger2" {
	"dropship_anims\hanger2"
	fps 30
}
$sequence "rebar#land" {
	"dropship_anims\rebar#land"
	fps 20
}
$sequence "rebar#idle" {
	"dropship_anims\rebar#idle"
	fps 10
}
$sequence "cin#idle" {
	"dropship_anims\cin#idle"
	fps 10
	loop
}
