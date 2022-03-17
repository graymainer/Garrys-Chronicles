// Created by Crowbar 0.65

// Stored modelname (without quotes): "c:\rewolf/dropship.mdl"
$modelname "dropship.mdl"
$cd "."
$cdtexture "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "dropship_gunmandropship"
}

$flags 0


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bone16" -168.309998 -356.470001 -114.260002 168.339996 371.73999 358.390015
$hbox 0 "Bone02" -20.1 -68.5 -68.75 10.5 0.06 101.349998
$hbox 0 "Bone01" -10.5 -68.510002 -68.75 20.1 0.06 101.349998
$hbox 0 "Bone09" -13.48 -5.04 -5.03 35.82 5.02 5.03
$hbox 0 "Bone10" -9.64 -15.1 -13.37 22.549999 14.9 16.459999
$hbox 0 "Bone14" -13.44 -5.02 -5.03 35.869999 5.04 5.03
$hbox 0 "Bone15" -9.25 -14.9 -13.37 22.93 15.1 16.459999

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
