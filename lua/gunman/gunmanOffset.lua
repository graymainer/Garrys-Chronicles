include("gunman/gunmanUtil.lua") --for isStrInvalid

function gcOffset(targetname)
	if (isStrInvalid(targetname)) then return end


	local ents = ents.FindByName(targetname)

	if (ents == nil or table.IsEmpty(ents) or ents[1] == nil or ents[1] == NULL) then return end

	for i = 1, #ents, 1 do
		if (ents[i] != NULL) then 
			local ent = ents[i]
			
			ent:SetPos(ent:GetPos() + Vector(0, 0, 2))
			if (ent:GetPhysicsObjectCount() > 1) then
				for i = 1, ent:GetPhysicsObjectCount(), 1 do
					ent:GetPhysicsObjectNum(i):EnableMotion(false)
				end
			else
				ent:GetPhysicsObject():EnableMotion(false)
			end
			
			
		end
	end
end