if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "sprites/mechagun_hudicon" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
end

sound.Add(
{
name = "mg_fire",
channel = CHAN_WEAPON,
volume = VOL_NORM,
pitch = { 95, 105 },
soundlevel = SNDLVL_GUNFIRE,
sound = { "gcweaponsfx/mechagun/mg_fire1.wav",
"gcweaponsfx/mechagun/mg_fire2.wav",
"gcweaponsfx/mechagun/mg_fire3.wav"}
} )

sound.Add(
{
name = "gcwpn_dryfire",
channel = CHAN_WEAPON,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "gcweaponsfx/dryfire.wav"
} )

sound.Add(
{
name = "gcwpn_pkup",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "gcweaponsfx/weaponpickup.wav"
} )

sound.Add(
{
name = "gcwpn_ricochet",
channel = CHAN_ITEM,
volume = 0.5,
soundlevel = SNDLVL_GUNFIRE,
sound = { "gcweaponsfx/ricochet1.wav",
"gcweaponsfx/ricochet2.wav",
"gcweaponsfx/ricochet3.wav",
"gcweaponsfx/ricochet4.wav",
"gcweaponsfx/ricochet5.wav"}
} )

function SWEP:Precache()

util.PrecacheSound("gcweaponsfx/mechagun/mg_fire1.wav")
util.PrecacheSound("gcweaponsfx/mechagun/mg_fire2.wav")
util.PrecacheSound("gcweaponsfx/mechagun/mg_fire3.wav")
util.PrecacheSound("gcweaponsfx/ricochet1.wav")
util.PrecacheSound("gcweaponsfx/ricochet2.wav")
util.PrecacheSound("gcweaponsfx/ricochet3.wav")
util.PrecacheSound("gcweaponsfx/ricochet4.wav")
util.PrecacheSound("gcweaponsfx/ricochet5.wav")
util.PrecacheSound("gcweaponsfx/dryfire.wav")
util.PrecacheSound("gcweaponsfx/weaponpickup.wav")
end

SWEP.Base				= "weapon_base"
SWEP.Category = "Gunman Armory"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModel	= "models/gcweapons/mechagun/v_mechagun.mdl"
SWEP.ViewModelFOV			= 83
SWEP.WorldModel = "models/gcweapons/mechagun/w_mechagun.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 3
SWEP.Slot = 1
SWEP.SlotPos = 1

SWEP.UseHands = false
SWEP.HoldType = "ar2"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "weapon_base"

SWEP.Sight = 0
SWEP.Reloading = 0
SWEP.ReloadingTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()
SWEP.Recoil = 0
SWEP.RecoilTimer = CurTime()

SWEP.Primary.Sound = Sound( "mg_fire" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 30
SWEP.Primary.MaxAmmo = 200
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "Smg1"
SWEP.Primary.Damage = 10
SWEP.Primary.Spread = 0
SWEP.Primary.SpreadSight = 0.01
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.NumberofShots = 1
SWEP.Primary.Delay = 0.2
SWEP.Primary.DelaySight = 0.5
SWEP.Primary.Force = 1

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.Damage = 10
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Delay = 0.1

function SWEP:Initialize()
self:SetWeaponHoldType( self.HoldType )
self.Sight = 0
self.Idle = 0
self.IdleTimer = CurTime() + 1
self.Weapon:SetNWString( "Sight", 0 )
end

function SWEP:Equip()

self.Weapon:EmitSound( "gcwpn_pkup" )

end

function SWEP:DrawHUD()
if CLIENT then
local x, y
if ( self.Owner == LocalPlayer() and self.Owner:ShouldDrawLocalPlayer() ) then
local tr = util.GetPlayerTrace( self.Owner )
local trace = util.TraceLine( tr )
local coords = trace.HitPos:ToScreen()
x, y = coords.x, coords.y
else
x, y = ScrW() / 2, ScrH() / 2
end
surface.SetTexture( surface.GetTextureID( "sprites/mechagun_crosshair" ) )
surface.SetDrawColor( 255, 255, 255, self.Weapon:GetNWString( "Sight", 0 ) )
surface.DrawTexturedRect( x - 24, y - 24, 64, 64 )
surface.SetTexture( surface.GetTextureID( "sprites/mechagun_crosshair" ) )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.DrawTexturedRect( x - 32, y - 36, 64, 64 )
end
end

function SWEP:Deploy()
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self.Reloading = 0
self.ReloadingTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 1
self.Recoil = 0
self.RecoilTimer = CurTime()
self.Weapon:SetNWString( "Sight", 0 )
return true
end

function SWEP:Holster()
self.Reloading = 0
self.ReloadingTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Recoil = 0
self.RecoilTimer = CurTime()
self.Weapon:SetNWString( "Sight", 0 )
return true
end

function SWEP:DoImpactEffect( tr, nDamageType )

self.Weapon:EmitSound( "gcwpn_ricochet" )

end

function SWEP:PrimaryAttack()
if self.Weapon:Ammo1() <= 0 and self.Weapon:Ammo1() <= 0 then
self.Weapon:EmitSound( "gcwpn_dryfire" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then
self.Weapon:EmitSound( "gcwpn_dryfire" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.Weapon:Ammo1() <= 0 then return end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then return end
local bullet = {}
bullet.Num = self.Primary.NumberofShots
bullet.Src = self.Owner:GetShootPos()
bullet.Dir = self.Owner:GetAimVector()
if self.Sight == 0 then
bullet.Spread = Vector( 1 * self.Primary.Spread, 1 * self.Primary.Spread, 0 )
end
if self.Sight == 1 then
bullet.Spread = Vector( 1 * self.Primary.SpreadSight, 1 * self.Primary.SpreadSight, 0 )
end
bullet.Tracer = 0
bullet.Force = self.Primary.Force
bullet.Damage = self.Primary.Damage
bullet.AmmoType = LaserTracer
self.Owner:FireBullets( bullet )
self:EmitSound( self.Primary.Sound )
if self.Weapon:Ammo1() > 1 then
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
//self.Owner:ViewPunch( Angle( -5, 0, 0 ) )
self.Idle = 0
end
if self.Weapon:Ammo1() == 1 then
self:ShootBullet()
self.Weapon:SendWeaponAnim( ACT_GLOCK_SHOOTEMPTY )
self.Idle = 1
end
self.Owner:ViewPunch( Angle( -5, 0, 0 ) )
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self.Owner:MuzzleFlash()
self:TakePrimaryAmmo( self.Primary.TakeAmmo )
if self.Sight == 0 then
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
end
if self.Sight == 1 then
self:SetNextPrimaryFire( CurTime() + self.Primary.DelaySight )
self:SetNextSecondaryFire( CurTime() + self.Primary.DelaySight )
end
self.IdleTimer = CurTime() + 1
self.Recoil = 1
self.RecoilTimer = CurTime() + 0.2
end

function SWEP:SecondaryAttack()
	
if self.Weapon:Ammo1() <= 0 then
self.Weapon:EmitSound( "GC_dryfire" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
self.Idle = 0
self.IdleTimer = CurTime() + 1
end
if self.Weapon:Ammo1() <= 0 then return end

	-- Play shoot sound
	self.Weapon:EmitSound( "mg_fire" )

	-- Shoot 9 bullets, 150 damage, 0.75 aimcone
	self:ShootBullet( 10, 2, 0.15 )
	-- Remove 1 bullet from our clip
	self:TakePrimaryAmmo( 2 )
	
	self:SetNextPrimaryFire( CurTime() + self.Secondary.Delay )
	self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )

	self.Weapon:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	self.Owner:ViewPunch( Angle( -7, 0, 0 ) )
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	self.IdleTimer = CurTime() + 1
	self.Idle = 0
	
end

function SWEP:FireAnimationEvent( pos, ang, event, options )

	if ( !self.CSMuzzleFlashes ) then return end

	-- CS Muzzle flashes
	if ( event == 5001 or event == 5011 or event == 5021 or event == 5031 ) then

		local data = EffectData()
		data:SetFlags( 0 )
		data:SetEntity( self.Owner:GetViewModel() )
		data:SetAttachment( math.floor( ( event - 4991 ) / 10 ) )
		data:SetScale( 3 ) -- Change me

		if ( self.CSMuzzleX ) then
			util.Effect( "CS_MuzzleFlash_X", data )
		else
			util.Effect( "CS_MuzzleFlash", data )
		end

		return true
	end
end

function SWEP:Reload()
if self.Reloading == 0 and self.Weapon:Ammo1() < self.Primary.ClipSize and self.Weapon:Ammo1() > 0 then
if self.Weapon:Ammo1() > 0 then
self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
end
if self.Weapon:Ammo1() <= 0 then
self.Weapon:SendWeaponAnim( ACT_GLOCK_SHOOT_RELOAD )
end
self.Owner:SetAnimation( PLAYER_RELOAD )
self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self.Reloading = 1
self.ReloadingTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Weapon:SetNWString( "Sight", 0 )
end
end

function SWEP:Think()
if self.Recoil == 1 and self.RecoilTimer <= CurTime() then
self.Recoil = 0
end
if self.Reloading == 1 and self.ReloadingTimer <= CurTime() then
if self.Weapon:Ammo1() > ( self.Primary.ClipSize - self.Weapon:Ammo1() ) then
self.Owner:SetAmmo( self.Weapon:Ammo1() - self.Primary.ClipSize + self.Weapon:Ammo1(), self.Primary.Ammo )
self.Weapon:SetAmmo1( self.Primary.ClipSize )
end
if ( self.Weapon:Ammo1() - self.Primary.ClipSize + self.Weapon:Ammo1() ) + self.Weapon:Ammo1() < self.Primary.ClipSize then
self.Weapon:SetAmmo1( self.Weapon:Ammo1() + self.Weapon:Ammo1() )
self.Owner:SetAmmo( 0, self.Primary.Ammo )
end
self.Reloading = 0
end
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
end
self.Idle = 1
if self.Sight == 1 then
self.Weapon:SetNWString( "Sight", 255 )
end
end
if self.Weapon:Ammo1() > self.Primary.MaxAmmo then
self.Owner:SetAmmo( self.Primary.MaxAmmo, self.Primary.Ammo )
end
end