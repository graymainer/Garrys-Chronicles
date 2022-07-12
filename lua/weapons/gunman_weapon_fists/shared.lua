if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "sprites/gcfists_hudicon" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
end

sound.Add(
{
name = "ph_miss",
channel = CHAN_WEAPON,
pitch = { 95, 110 },
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = { "gcweaponsfx/gunmanfists/ph_miss1.wav",
"gcweaponsfx/gunmanfists/ph_miss2.wav"}
} )

sound.Add(
{
name = "ph_hit",
channel = CHAN_WEAPON,
pitch = { 95, 110 },
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = { "gcweaponsfx/gunmanfists/ph_hit1.wav",
"gcweaponsfx/gunmanfists/ph_hit2.wav",
"gcweaponsfx/gunmanfists/ph_hit3.wav"}
} )

sound.Add(
{
name = "ph_ittkaacbg_biaoog",
channel = CHAN_WEAPON,
volume = 1,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcweaponsfx/gunmanfists/ph_timetobustsomecapsusingmybarehands.wav"
} )

sound.Add(
{
name = "ph_draw",
channel = CHAN_WEAPON,
volume = 1,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcweaponsfx/gunmanfists/ph_draw.wav"
} )

function SWEP:Precache()

util.PrecacheSound("gcweaponsfx/gunmanfists/ph_miss1.wav")
util.PrecacheSound("gcweaponsfx/gunmanfists/ph_miss2.wav")
util.PrecacheSound("gcweaponsfx/gunmanfists/ph_hit1.wav")
util.PrecacheSound("gcweaponsfx/gunmanfists/ph_hit2.wav")
util.PrecacheSound("gcweaponsfx/gunmanfists/ph_hit3.wav")
util.PrecacheSound("gcweaponsfx/gunmanfists/ph_draw.wav")
end

SWEP.Category = "Gunman Armory"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 100
SWEP.ViewModel = "models/gcweapons/gunmanfists/v_melee.mdl"
SWEP.WorldModel = ""
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 0
SWEP.Slot = 0
SWEP.SlotPos = 1

SWEP.UseHands = false
SWEP.HoldType = "fist"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "weapon_base"

SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "ph_miss" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Primary.Damage = 5
SWEP.Primary.DelayMiss = 0.4
SWEP.Primary.DelayHit = 0.2
SWEP.Primary.Force = 1000

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"

function SWEP:Initialize()
self:SetWeaponHoldType( self.HoldType )
self.Idle = 0
self.IdleTimer = CurTime() + 1
end

function SWEP:Deploy()
self.Owner:EmitSound( "ph_draw" )
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 1
return true
end

function SWEP:Holster()
self.Idle = 0
self.IdleTimer = CurTime()
return true
end

function SWEP:PrimaryAttack()
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 72,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 72,
filter = self.Owner,
mins = Vector( -16, -16, 0 ),
maxs = Vector( 16, 16, 0 ),
mask = MASK_SHOT_HULL,
} )
end
if SERVER and IsValid( tr.Entity ) then
local dmginfo = DamageInfo()
local attacker = self.Owner
if !IsValid( attacker ) then
attacker = self
end
dmginfo:SetAttacker( attacker )
dmginfo:SetInflictor( self )
dmginfo:SetDamage( self.Primary.Damage )
dmginfo:SetDamageForce( self.Owner:GetForward() * self.Primary.Force )
tr.Entity:TakeDamageInfo( dmginfo )
end
if !tr.Hit then
self:EmitSound( self.Primary.Sound )
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
self:SetNextPrimaryFire( CurTime() + self.Primary.DelayMiss )
self:SetNextSecondaryFire( CurTime() + self.Primary.DelayMiss )
end
if tr.Hit then
if SERVER then
if tr.Entity:IsPlayer() || tr.Entity:IsNPC() then
self.Owner:EmitSound( "ph_hit" )
end
if !(tr.Entity:IsPlayer() || tr.Entity:IsNPC() ) then
self.Owner:EmitSound( "ph_hit" )
end
end
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
self:SetNextPrimaryFire( CurTime() + self.Primary.DelayHit )
self:SetNextSecondaryFire( CurTime() + self.Primary.DelayHit )
end
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 1
end

function SWEP:Equip()
local w = Entity( 1 ):Give( "gunman_weapon_knife", true )
end

function SWEP:Reload()
self.Owner:EmitSound( "ph_ittkaacbg_biaoog" )
self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 1
end

function SWEP:Think()
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
end
self.Idle = 1
end
end