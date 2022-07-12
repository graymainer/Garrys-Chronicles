AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Gunman Armor"
ENT.Category = "Gunman Supplies"
ENT.Editable = true
ENT.Spawnable = true
ENT.AdminOnly = false

local armoramount = 100

function ENT:Precache()
util.PrecacheSound("gcitemsfx/armorpickup.wav")
end

sound.Add(
{
name = "pkup_armor",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_GUNFIRE,
sound = "gcweaponsfx/weaponpickup.wav"
} )

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/gunman/item_armor.mdl" )
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
self.Entity:EmitSound( "SolidMetal.ImpactSoft" )
end
end

function ENT:StartTouch( activator, ent )
	
	if ( activator:IsPlayer() ) then 
	
		if ( activator:Armor() >= 100 ) then return end
		
		if ( activator:Armor() > 100 - armoramount ) then
		
			activator:SetArmor( 100 )
		
		else
		
			activator:SetArmor( activator:Armor() + armoramount )
		
		end
		
		self.Entity:EmitSound( "pkup_armor" )
		self.Entity:Remove()
		
	end
 
end