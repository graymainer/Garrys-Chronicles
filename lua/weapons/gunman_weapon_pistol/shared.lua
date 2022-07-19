if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "sprites/gausspistol_hudicon" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
end

sound.Add(
{
name = "gp_fire1",
channel = CHAN_WEAPON,
pitch = { 95, 110 },
volume = VOL_NORM,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcweaponsfx/gausspistol/gp_pulse_fire.wav"
} )

sound.Add(
{
name = "GC_dryfire",
channel = CHAN_WEAPON,
volume = VOL_NORM,
soundlevel = SNDLVL_GUNFIRE,
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
name = "gp_fire2",
channel = CHAN_WEAPON,
volume = VOL_NORM,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcweaponsfx/gausspistol/gp_rapid_fire.wav"
} )

sound.Add(
{
name = "gp_fire2_impact",
channel = CHAN_WEAPON,
pitch = { 95, 105 },
volume = 0.5,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcweaponsfx/gausspistol/gp_rapid_impact.wav"
} )

function SWEP:Precache()

util.PrecacheSound("gcweaponsfx/gausspistol/gp_pulse_fire.wav")
util.PrecacheSound("gcweaponsfx/gausspistol/gp_rapid_fire.wav")
util.PrecacheSound("gcweaponsfx/gausspistol/gp_rapid_impact.wav")
util.PrecacheSound("gcweaponsfx/dryfire.wav")
util.PrecacheSound("gcweaponsfx/weaponpickup.wav")
end

SWEP.Category = "Gunman Armory"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModel	= "models/gunman/v_pistol.mdl"
SWEP.ViewModelFOV			= 85
SWEP.WorldModel = "models/gunman/w_pistol.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 3
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.UseHands = false
SWEP.HoldType = "pistol"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 0
SWEP.Base = "weapon_base"

SWEP.Spin = 0
SWEP.SpinTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()
SWEP.Recoil = 0
SWEP.RecoilTimer = CurTime()

SWEP.Primary.Sound = Sound( "gp_fire1" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 35
SWEP.Primary.MaxAmmo = 150
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.Damage = 8
SWEP.Primary.Spread = 0
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.NumberofShots = 1
SWEP.Primary.Delay = 0
SWEP.Primary.Force = 1

SWEP.Secondary.Sound = Sound( "gp_fire2" )
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Damage = 9
SWEP.Secondary.Delay = 0.09
SWEP.Secondary.TakeAmmo = 1

function SWEP:Initialize()
self:SetWeaponHoldType( self.HoldType )
self.Idle = 0
self.IdleTimer = CurTime() + 1
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
surface.SetTexture( surface.GetTextureID( "sprites/gausspistol_crosshair" ) )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.DrawTexturedRect( x - 15, y - 15, 32, 32 )
end
end

function SWEP:Deploy()
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
self.Spin = 0
self.SpinTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 1
self.Recoil = 0
self.RecoilTimer = CurTime()
return true
end

function SWEP:Holster()
self.Spin = 0
self.SpinTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Recoil = 0
self.RecoilTimer = CurTime()
return true
end

function SWEP:PrimaryAttack()
if self.Spin == 1 then return end
if self.Weapon:Ammo1() <= 0 then
self.Weapon:EmitSound( "GC_dryfire" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then
self.Weapon:EmitSound( "GC_dryfire" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.Weapon:Ammo1() <= 0 then return end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then return end
local tr = self.Owner:GetEyeTrace()
local effectdata = EffectData()
effectdata:SetOrigin( tr.HitPos )
effectdata:SetNormal( tr.HitNormal )
effectdata:SetStart( self.Owner:GetShootPos() )
effectdata:SetAttachment( 1 )
effectdata:SetEntity( self.Weapon )
util.Effect( "gausspistol_beamfx", effectdata )
local bullet = {}
bullet.Num = self.Primary.NumberofShots
bullet.Src = self.Owner:GetShootPos()
bullet.Dir = self.Owner:GetAimVector()
bullet.Spread = Vector( 1 * self.Primary.Spread, 1 * self.Primary.Spread, 0 )
bullet.Tracer = 0
bullet.Force = self.Primary.Force
bullet.Damage = self.Primary.Damage
bullet.AmmoType = self.Primary.Ammo
self.Owner:FireBullets( bullet )
self:EmitSound( self.Primary.Sound )
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self.Owner:MuzzleFlash()
self:TakePrimaryAmmo( self.Primary.TakeAmmo )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Idle = 0
self.IdleTimer = CurTime() + 1
self.Recoil = 1
self.RecoilTimer = CurTime() + self.Primary.Delay
self.Owner:ViewPunch( Angle( -4, 0, 0 ) )
end

function SWEP:SecondaryAttack()
	
if self.Weapon:Ammo1() <= 0 then
self.Weapon:EmitSound( "GC_dryfire" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.Weapon:Ammo1() <= 0 then return end

	self:throw_attack(entity)

	-- Play shoot sound
	self.Weapon:EmitSound( "gp_fire2" )

	-- Shoot 9 bullets, 150 damage, 0.75 aimcone

	-- Remove 1 bullet from our clip
	self:TakePrimaryAmmo( 1 )
	
	self:SetNextPrimaryFire( CurTime() + self.Secondary.Delay )
	self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )

	self.Weapon:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	self.IdleTimer = CurTime() + 1
	self.Idle = 0
	
end

function SWEP:DoImpactEffect( tr, nDamageType )

	if ( tr.HitSky ) then return end

	local effectdata = EffectData()
	effectdata:SetOrigin( tr.HitPos + tr.HitNormal )
	effectdata:SetNormal( tr.HitNormal )
	util.Effect( "AR2Impact", effectdata )
	util.Effect( "inflator_magic", effectdata )
	effectdata:SetMagnitude( 1 )
	util.Effect( "Sparks", effectdata )
end

function SWEP:throw_attack (entity)
	//Get an eye trace. This basically draws an invisible line from
	//the players eye. This SWep makes very little use of the trace, except to 
	//calculate the amount of force to apply to the object thrown.
	local tr = self.Owner:GetEyeTrace()
 
	//Play some noises/effects using the sound we precached earlier
	self.BaseClass.ShootEffects(self)
 
	//We now exit if this function is not running serverside
	if (!SERVER) then return end
 
	//The next task is to create a physics prop based on the supplied model
	local ent = ents.Create("gc_gauss_rapid_fx")
 
	//Set the initial position and angles of the object. This might need some fine tuning;
	//but it seems to work for the models I have tried.
	ent:SetPos(self.Owner:EyePos() + (self.Owner:GetAimVector() * 16))
	ent:SetAngles(self.Owner:EyeAngles())
	ent:Spawn()
 
	//Now we need to get the physics object for our entity so we can apply a force to it
	local phys = ent:GetPhysicsObject()
 
	//Check if the physics object is valid. If not, remove the entity and stop the function
	if !(phys && IsValid(phys)) then ent:Remove() return end
 
	//Time to apply the force. My method for doing this was almost entirely empirical 
	//and it seems to work fairly intuitively with chairs.
	phys:ApplyForceCenter(self.Owner:GetAimVector():GetNormalized() *  math.pow(tr.HitPos:Length(), 4))
 
	//Now for the important part of adding the spawned objects to the undo and cleanup lists.
	cleanup.Add(self.Owner, "Effects", ent)
 
	undo.Create ("Thrown_SWEP_Entity")
		undo.AddEntity (ent)
		undo.SetPlayer (self.Owner)
	undo.Finish()
end

function SWEP:FireAnimationEvent( pos, ang, event, options )

	-- Disables animation based muzzle event
	if ( event == 21 ) then return true end

	-- Disable thirdperson muzzle flash
	if ( event == 5003 ) then return true end

end

function SWEP:Think()
if self.Spin == 1 then
if self.SpinTimer < CurTime() + 6.5 and self.SpinTimer > CurTime() + 6.48 then
self:StopSound( self.Secondary.Sound )
if SERVER then
self.Owner:EmitSound( "Weapon_HL_Tau_Cannon.Double_2" )
end
end
if self.SpinTimer < CurTime() + 6 and self.SpinTimer > CurTime() + 5.98 then
if SERVER then
self.Owner:StopSound( "Weapon_HL_Tau_Cannon.Double_2" )
self.Owner:EmitSound( "Weapon_HL_Tau_Cannon.Double_3" )
end
end
end
if self.Spin == 1 and !self.Owner:KeyDown( IN_ATTACK2 ) then
local tr = self.Owner:GetEyeTrace()
local effectdata = EffectData()
effectdata:SetOrigin( tr.HitPos )
effectdata:SetNormal( tr.HitNormal )
effectdata:SetStart( self.Owner:GetShootPos() )
effectdata:SetAttachment( 1 )
effectdata:SetEntity( self.Weapon )
util.Effect( "gausspistol_beamfx", effectdata )
local bullet = {}
bullet.Num = self.Primary.NumberofShots
bullet.Src = self.Owner:GetShootPos()
bullet.Dir = self.Owner:GetAimVector()
bullet.Spread = Vector( 1 * self.Primary.Spread, 1 * self.Primary.Spread, 0 )
bullet.Tracer = 0
bullet.Force = self.Primary.Force
if self.SpinTimer > CurTime() + 6.5 and self.SpinTimer <= CurTime() + 7 then
bullet.Damage = self.Secondary.Damage
end
if self.SpinTimer > CurTime() + 6 and self.SpinTimer <= CurTime() + 6.5 then
bullet.Damage = 100
end
if self.SpinTimer <= CurTime() + 6 then
bullet.Damage = 200
end
bullet.AmmoType = self.Primary.Ammo
self.Owner:FireBullets( bullet )
self:EmitSound( self.Primary.Sound )
self:StopSound( self.Secondary.Sound )
if SERVER then
self.Owner:StopSound( "Weapon_HL_Tau_Cannon.Double_2" )
self.Owner:StopSound( "Weapon_HL_Tau_Cannon.Double_3" )
self.Owner:EmitSound( "HL.Electro" )
end
self.Weapon:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self.Owner:MuzzleFlash()
if self.SpinTimer > CurTime() + 6.5 and self.SpinTimer <= CurTime() + 7 then
self:TakePrimaryAmmo( self.Secondary.TakeAmmo )
end
if self.SpinTimer > CurTime() + 6 and self.SpinTimer <= CurTime() + 6.5 then
self:TakePrimaryAmmo( 10 )
end
if self.SpinTimer <= CurTime() + 6 then
self:TakePrimaryAmmo( 20 )
end
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Spin = 0
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Recoil = 1
self.RecoilTimer = CurTime() + self.Primary.Delay
self.Owner:SetEyeAngles( self.Owner:EyeAngles() + Angle( -3, 0, 0 ) )
if self.SpinTimer > CurTime() + 6.5 and self.SpinTimer <= CurTime() + 7 then
self.Owner:SetVelocity( self.Owner:GetForward() * -200 )
end
if self.SpinTimer > CurTime() + 6 and self.SpinTimer <= CurTime() + 6.5 then
self.Owner:SetVelocity( self.Owner:GetForward() * -300 )
end
if self.SpinTimer <= CurTime() + 6 then
self.Owner:SetVelocity( self.Owner:GetForward() * -400 )
end
end
if self.Recoil == 1 and self.RecoilTimer <= CurTime() then
self.Recoil = 0
end
if self.Recoil == 1 then
self.Owner:SetEyeAngles( self.Owner:EyeAngles() + Angle( 0.23, 0, 0 ) )
end
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
if self.Spin == 0 then
self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
end
if self.Spin == 1 then
self.Weapon:SendWeaponAnim( ACT_GAUSS_SPINCYCLE )
end
end
self.Idle = 1
end
if self.Weapon:Ammo1() > self.Primary.MaxAmmo then
self.Owner:SetAmmo( self.Primary.MaxAmmo, self.Primary.Ammo )
end
if self.Spin == 1 and self.SpinTimer <= CurTime() then
if SERVER then
local explode = ents.Create( "env_explosion" )
explode:SetOwner( self.Owner )
explode:SetPos( self:GetPos() )
explode:Spawn()
explode:Fire( "Explode", 0, 0 )
self.Owner:StopSound( "Weapon_HL_Tau_Cannon.Double_2" )
self.Owner:StopSound( "Weapon_HL_Tau_Cannon.Double_3" )
self.Owner:EmitSound( "HL.Explode" )
self.Owner:EmitSound( "HL.Debris" )
end
self:StopSound( self.Secondary.Sound )
util.BlastDamage( self, self.Owner, self:GetPos(), 256, 100 )
self.Owner:SetHealth( 0 )
end
end