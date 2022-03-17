AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.PrintName = "Gauss Pistol"

function ENT:Draw()
render.SetMaterial( Material( "sprites/gausspistol_rapidfx" ) )
render.DrawSprite( self:GetPos(), 24, 24, Color( 155, 255, 155 ) )
end

function ENT:Initialize()
self.Entity:SetModel( "models/hunter/misc/sphere025x025.mdl" )
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:PhysicsInit( SOLID_VPHYSICS )
self.Entity:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
self.Entity:DrawShadow( false )
end

function ENT:Think()
if CLIENT then
local light = DynamicLight( self:EntIndex() )
light.Pos = self:GetPos()
light.r = 125
light.g = 255
light.b = 100
light.Brightness = 1
light.Size = 5
light.Decay = 250
light.DieTime = CurTime() + 0.2
end
if self.Entity:WaterLevel() > 0 then
self.Entity:Remove()
end
end

function ENT:PhysicsCollide( data )
self.Entity:Remove()
end

function ENT:OnRemove()
if CLIENT then
local light = DynamicLight( self:EntIndex() )
light.Pos = self:GetPos()
light.r = 255
light.g = 255
light.b = 100
light.Brightness = 2
light.Size = 5
light.Decay = 250
light.DieTime = CurTime() + 0.5
end
self.Entity:EmitSound( "gp_fire2_impact" )
end