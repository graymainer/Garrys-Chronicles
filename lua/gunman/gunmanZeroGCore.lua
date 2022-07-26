function ENT:makeZeroG(target, bReset) --takes in a targetname or an entity or a table of entities or a table of targetnames or a table mixed with names and ents, can handle multiple ents with the same name
	if (!self.bEnabled or !self.bInit) then return end
	if (target == nil) then print("GUNMAN:	!ZERO-G! target was invalid") return end	
	
	local ent = {}
	
	if (istable(target)) then
		local names = {}
		local entities = {}
	
		for i = 1, #target, 1 do --sort out the targetnames and entities.
			if (isentity(target[i])) then
				if (IsValid(target[i])) then
					entities[i] = target[i]
				end
			elseif (isstring(target[i])) then
				if (isStrValid(target[i])) then 
					names[i] = target[i]
				end
			end
		end
		
		if (!table.IsEmpty(names)) then
			for i = 1, #names, 1 do
				table.insert(ent, ents.FindByName(names[i])[1])
			end
		end
		
		if (!table.IsEmpty(entities)) then
			for i = 1, #entities, 1 do
				table.insert(ent, entities[i])
			end
		end
	else
		if (isentity(target)) then
			ent[1] = target
		else
			if (!isStrValid(target)) then print("GUNMAN:	!ZERO-G! target was invalid") return end
		
			--print("making '" .. target .. "' run in zero g...")
			ent = ents.FindByName(target)
			
			if (ent == nil or table.IsEmpty(ent) or ent[1] == nil or ent[1] == NULL or !IsValid(ent[1])) then print("GUNMAN:	!ZERO-G! No target entity was found.") return end

		end
	end
	
	
	--where the actual zero g stuff happens.
	for i = 1, #ent, 1 do
		if (IsValid(ent[i])) then
		
			for o = 0, ent[i]:GetPhysicsObjectCount() - 1 do
				local phys = ent[i]:GetPhysicsObjectNum(o)
				if IsValid(phys) then 
					phys:EnableGravity(bReset) --if bReset isn't specified or its false, then we make it zerog. but if its true, we reset it to normal.
				end
			end

			
			--ent[i]:Ignite(5, 0)
		end
	end
end