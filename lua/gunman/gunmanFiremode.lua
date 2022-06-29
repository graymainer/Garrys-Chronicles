
--quick mock-up prototype for how a customization system for dopey's sweps would integrate into our maps.


iCurSetting = 0 --the setting we're currently on. doesn't actually do anything, beyond what gunman_city4 currently does and the code below.

function getGunmanFiremode(reciever) --reciever is a targetname

	local ent = ents.FindByName(reciever)[1] --find by name, get the first one if multiple found.
	
	ent:Fire("InValue", tostring(iCurSetting)) --on this ent, fire to it invalue with a param of our current gun cust setting.

end
