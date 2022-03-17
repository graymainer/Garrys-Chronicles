function EFFECT:Init( data )
self.texcoord = math.Rand( 0, 20 ) / 3
self.Position = data:GetStart()
self.WeaponEnt = data:GetEntity()
self.Attachment = data:GetAttachment()
self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
self.EndPos = data:GetOrigin()
self.Entity:SetCollisionBounds( self.StartPos -  self.EndPos, Vector( 100, 100, 100 ) )
self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos, Vector() * 1 )
self.Alpha = 255
self.FlashA = 255
end

function EFFECT:Think()
self.FlashA = self.FlashA - 2000 * FrameTime()
if self.FlashA < 0 then
self.FlashA = 0 end
self.Alpha = self.Alpha - 2000 * FrameTime()
if self.Alpha < 0 then
return false
end
return true

end

function EFFECT:Render()
self.Length = ( self.StartPos - self.EndPos ):Length()
local texcoord = self.texcoord
render.SetMaterial( Material( "sprites/gausspistol_pulsebeam" ) )
render.DrawBeam( self.StartPos, self.EndPos, 2.5, texcoord, texcoord + self.Length / 1024, Color( 255, 200, 255, math.Clamp( self.Alpha, 0, 255 ) ) )
end