function makeZeroG(target) --takes in a targetname, can handle multiple ents with the same name
	if target == nil or target == "" or target == " " then print("GUNMAN:	!ZERO-G! target was invalid")return end
	
	print("making '" .. target .. "' run in zero g...")
	local ent = ents.FindByName(target)	
	
	if istable(ent) then
		if !IsValid(ent[1]) then return end
		
		for i = 1, table.maxn(ent) do
			local nPhys = ent[i]:GetPhysicsObjectCount()
	
			for o = 0, nPhys - 1 do
				local phys = ent[i]:GetPhysicsObjectNum(o)
				if !IsValid(phys) then break end
				phys:EnableGravity(false)
			end
			
			--ent[i]:Ignite(5, 0)
		end

	else
		if !IsValid(ent) then return end

		local nPhys = ent:GetPhysicsObjectCount()
	
		for i = 0, nPhys - 1 do
			local phys = ent:GetPhysicsObjectNum(i)
			if !IsValid(phys) then break end
			phys:EnableGravity(false)
		end
		
		--ent:Ignite(5, 0)
	end
	
end