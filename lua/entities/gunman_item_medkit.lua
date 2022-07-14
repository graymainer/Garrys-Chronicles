AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Medical Kit"
ENT.Category = "Gunman Supplies"
ENT.Editable = true
ENT.Spawnable = true
ENT.AdminOnly = false

local healthamount = 25

function ENT:Precache()
util.PrecacheSound("gcitemsfx/healthpickup.wav")
end

sound.Add(
{
name = "pkup_health",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcitemsfx/healthpickup.wav"
} )

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/gunman/item_medkit.mdl" )
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:PhysicsInit( SOLID_VPHYSICS )
self.Entity:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )
self.Entity:DrawShadow( false )
self.Entity:SetPos( self:GetPos() + Vector( 0, 0, 10 ) )
local phys = self.Entity:GetPhysicsObject()
if phys:IsValid() then
phys:Wake()
end
end
end

function ENT:PhysicsCollide( data )
if data.Speed > 100 then
self.Entity:EmitSound( "weapon.ImpactSoft" )
end
end

function ENT:StartTouch( activator, ent )
	
	if ( activator:IsPlayer() ) then 
	
		if ( activator:Health() >= 100 ) then return end
		
		if ( activator:Health() > 100 - healthamount ) then
		
			activator:SetHealth( 100 )
		
		else
		
			activator:SetHealth( activator:Health() + healthamount )
		
		end
		
		self.Entity:EmitSound( "pkup_health" )
		self.Entity:Remove()
		
	end
 
end