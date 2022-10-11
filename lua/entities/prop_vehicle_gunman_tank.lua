
-- Don't try to edit this file if you're trying to add new vehicles
-- Just make a new file and copy the format below.

local function AddVehicle( t, class )
	list.Set( "Vehicles", class, t )
end

local Category = "Half-Life 2"

AddVehicle( {
	-- Required information
	Name = "Gunman Tank",
	Model = "models/gc_tank_base.mdl",
	Class = "prop_vehicle_driveable",
	Category = Category,

	-- Optional information
	Author = "REwolf",
	Information = "A massive tank.",

	KeyValues = {
		vehiclescript = "scripts/vehicles/tank.txt"
	}
}, "Jeep" )


