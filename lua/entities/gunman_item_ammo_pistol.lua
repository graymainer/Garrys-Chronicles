AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Gauss Clip"
ENT.Category = "Gunman Supplies"
ENT.Editable = true
ENT.Spawnable = true
ENT.AdminOnly = false

function ENT:Precache()
util.PrecacheSound("gcitemsfx/ammopickup.wav")
end

sound.Add(
{
name = "pkup_ammo",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcitemsfx/ammopickup.wav"
} )

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/gunman/item_ammo_pistol.mdl" )
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

function ENT:Touch( entity )
if entity:IsPlayer() then
self.User = entity
self.Entity:Remove()
end
end

function ENT:Use( entity )
if entity:IsPlayer() then
self.User = entity
self.Entity:Remove()
end
end

function ENT:OnRemove()
if SERVER and IsValid( self.User ) then
self.User:GiveAmmo( 25, "Pistol" )
self.Entity:EmitSound( "pkup_ammo" )
end
end