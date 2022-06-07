
AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.RenderGroup = RENDERGROUP_OPAQUE




local model = "models/gunman/digitgod.mdl"
local currentValue = 0
local maxValue = nil
local targetValue = nil
local us = nil

function ENT:Initialize()

	if ( CLIENT ) then return end

	print(self:GetName() .. " Initialized")

	self:SetModel( model )
	
	us = self
	
	selectDigit(us)


end

function increment()
	
	if (currentValue >= maxValue) then
		onMaxReached()
	return end

	currentValue = currentValue + 1
	
	valueChanged()
end

function decrement()
	if (currentValue <= 0) then return end
	currentValue = currentValue - 1
	
	valueChanged()
end

function sub(value)
	if (value <= 0 or value > currentValue or currentValue <= 0) then return end
	
	currentValue = currentValue - value
	
	valueChanged()
end

function add(value)
	if (value > maxValue or value <= 0) then return end
	
	if (currentValue >= maxValue) then
		fireMaxReached()
	return end

	currentValue = currentValue + value
	
	valueChanged()
end

function selectDigit(ent)

	if (currentValue == 0) then
		ent:SetSkin(0)
	elseif (currentValue == 1) then
		ent:SetSkin(1)
	elseif (currentValue == 2) then
		ent:SetSkin(2)
	elseif (currentValue == 3) then
		ent:SetSkin(3)
	elseif (currentValue == 4) then
		ent:SetSkin(4)
	elseif (currentValue == 5) then
		ent:SetSkin(5)
	elseif (currentValue == 6) then
		ent:SetSkin(6)
	elseif (currentValue == 7) then
		ent:SetSkin(7)
	elseif (currentValue == 8) then
		ent:SetSkin(8)
	elseif (currentValue == 9) then
		ent:SetSkin(9)
	end

end

function valueChanged()

	if (currentValue == maxValue) then
		fireMaxReached()
	end
	
	selectDigit(us)
	
	if ( CLIENT ) then return end
	us:TriggerOutput("onValueChanged", self, currentValue)
end

function getValue()
	print(currentValue)
end

function fireMaxReached()
	if ( CLIENT ) then return end

	
	print(us:GetName() .. " reached its maximum value. " .. currentValue)

	us:TriggerOutput("onMaxReached", self, currentValue)

end

function ENT:AcceptInput( name, activator, caller, data )

	if (name == "Add") then
		add(util.StringToType(data, "int"))
		getValue()
	return end
end

function reset()
	currentValue = 0
	maxValue = nil
	targetValue = nil
	us = nil
end

hook.Add("PreCleanupMap", "HK_CLEAN", function() 
	reset()
end)

if (SERVER) then
	function ENT:KeyValue(key, value)
	
		--print(key, value)
		
		--check all of these when initialised, select digit when initialised

		if (key == "targetvalue") then
			targetValue = util.StringToType(value, "int")
		elseif (key == "maxvalue") then			
			maxValue = util.StringToType(value, "int")
		elseif (key == "initialvalue") then
			add(util.StringToType(value, "int"))
		elseif ( string.Left( key, 2 ) == "On" or string.Left( key, 2 ) == "on") then
			self:StoreOutput(key, value)
		end
	end
end
