--[[
	===---GUNMAN DIGITGOD ENTITY RECREATION FOR THE GARRY'S CHRONICLES PROJECT---===

	Definition of this entity in hammer i/o speak. 
	This is ripped from my fgd for the project. It will allow you to use this entity in hammer if you add it to an fgd, or make a new one, and then add it to your config in hammer.
	you'll notice a bunch of shit is commented out. If you want a challenge/ideas for expansions or whatever, then try to reimplement the commented out stuff.
	and in case you're curious why it was commented out in the first place, its because i did a major rewrite of the system due to ambiguity-related issues with the original.
	And the rewrite ended up down scaling the scope quite a bit.

	Feel free to use this code and upload digitgod entites based on my code to the workshop however you please. 
	I'd only ask that you credit me as the original coder.
	Of course if you dont, i wont send a legal team after you. 
	But just dont be an ass and credit the original author. I spent a ton of time figuring this garbage fire out and coding this.


	my fgd file is hosted here: https://github.com/graymainer/Garrys-Chronicles/blob/main/gunman.fgd


	the definition begins now:

@PointClass base(Targetname, Parentname, Angles) studioprop("models/gunman/digitgod.mdl") = gunman_digitgod : "This entity is apart of the Garry's Chronicles project. \n" + "It recreates the entity_digitgod entity.\n"+ "\n"+ "\n"+ "An entity that will hold a value and display it visually on a counter. \n" + "Supports only three-digit numbers. \n" + "Does NOT support negative numbers or decimals.\n" + "\n" + "Source is lua/entities/gunman_digitgod.lua"
[
	//if you want to change this system to use custom models, you'll want to get rid of the "models/gunman/digitgod.mdl" part and leave it as "studioprop()". 
	//then make sure that you have a key value here that has the type "studio" set to a default model. otherwise, you'll get the generic hammer entity cube of death.

	spawnflags(flags) =
	[
		1	:	"Fire Target Once"				:	1
		2	:	"Trigger Target on Exact Match"	:	0
		4 	:	"Dont Render"					:	0
	]

	initialvalue(integer)				: "Initial Value"	: 0	  : "The value that the counter should be set at when spawned in. \n" + "If 'Clear to initial value' is ticked, when cleared, this value will be what the counter is set back to."

	targetvalue(integer)				: "Value Target"	: 0   : "The value this counter should aim to achieve. Once reached, the onValueReached output will fire. \n" + "\n" + "A value of 0 will disable."
	
	maxvalue(integer)					: "Maximum Value"	: 999 : "The max value that this counter can go to. \n" + "Will fire onMaxReached output when reached. \n" + "\n" + "A value of 0 will set this counter to have no max."

//	milestone(integer)					: "Milestone Value" : 10  : "The value we consider a milestone. \n" + "\n" + "By default, every ten numbers added to the counter will be considered a milestone, and fire the onMilestone() output. \n" + "So for example:\n" + "0..1..2..3..4..5..6..7..8..9..10 Milestone reached! \n" + "11..12..13..14..15..16..17..18..19..20 Milestone reached! \n" + "21..22..23 etc."

//this is the key im referring to above.
//	model(studio)						: "World Model"		: 		"models/gunman/digitgod.mdl" : "What model should this counter be represented by? \n" + "WARNING! The model MUST have at least 10 skins to represent all 10 digits. Otherwise, the model will not load and will go back to default."

	//sound(sound) 						: "Sound Name" 		: ""  : "The sound to play whenever the value changes.\n" + " Example would be making the counter make a 'ticking' sound when it increments.\n" + " Must be a .wav file. If left blank, no sound will play."
	
	//sndvol(integer) 					: "Sound Volume"	: 5   : "The volume to play the sound at. Only works if a sound was selected."
	
	//sndpitch(integer) 				: "Sound Pitch"		: 100 : "The pitch to play the sound at. Only works if a sound was selected."
	
	scaledmg(choices)					: "Scale by Damage" : 0	  : "Should we scale all increments, additions, subtractions, etc by the damage of the player's current weapon?" = 
	[
		0 : "No"
		1 : "Yes"
	]
	
	StartDisabled(choices) 				: "Start Disabled" 	: 0   : "Should this counter be off when spawned in?" =
	[
		0 : "No"
		1 : "Yes"
	] 

	DisableShadows(choices) 			: "Disable Shadows" : 0   : "Should this counter's model not render shadows?"  =
	[
		0 : "No"
		1 : "Yes"
	] 
	
	input Add(integer)					: "Add this value to the counter."
	input Sub(integer)					: "Subtract this value from the counter."
	input Increment(void)				: "Increment the counter."
	input Decrement(void)				: "Decrement the counter."
	input Toggle(void)					: "Will toggle the counter."
	input Enable(void)					: "Will enable the counter. Fires the onEnabled output."
	input Disable(void)					: "Will disable the counter. It will no longer function. Fires the onDisabled output."
	input Clear(void)					: "Clears the current value of this counter and resets it to 0. \n" + "But if the 'Clear to initial value' flag is set, it will instead reset to whatever the initial value was."
	//input getValue(void)				: "Will get the current value that this counter is at.\n" + "This works through some lua trickery. basically, if its an entity that can hold values, like a 'logic_case' or a 'math_counter',\n" + "we will fire their respective 'invalue' or 'setvalue' inputs and feed them the value you asked for here.\n" + "This means that the entity you're making the output from should be something that can hold values. Like logic_case.\n" + "\n" + "If the entity isn't recognized as an entity that can hold values, it will then try to add an output with the value inside it.\n" + "It should be findable by searching through the entity that asked for the value's keyvalues.\n" + " This will be the way all of our get inputs will work."
	input setValue(integer)				: "Will set our value to what you specify. Cannot be negative and cannot pass the max limit."
	//input getLastValue(void)			: "Will get the last value that this counter had. This is only set when the value has previously changed.\n" + "It will return 0 if nothing changed."
	input setMax(integer)				: "Will set the maximum value of this counter to the parameter value."
	//input getMax(void)					: "Will get our maximum value."
	input setTarget(integer)			: "Will set the target value of this counter to the parameter value."
	//input getTarget(void)				: "Will get our target value."
	//input setSound(integer)				: "Will change the sound to play to whatever you give us. Does not support gamesound entries."
	//input setSoundVolume(integer)		: "Will change the volume of the sound to whatever you give us."
	//input setSoundPitch(integer)		: "Will change the pitch of the sound to whatever you give us."
	//input getSound(void)				: "Will get the sound we currently are using. Wont work with any entites that can hold values, will be an output."
	//input getSoundVolume(void)			: "Will get the volume we're currently playing the sound at."
	//input getSoundPitch(void)			: "Will get the pitch of our sound."
	//input getModel(void)				: "Gets our model."
	//input setModel(void)				: "Sets our model. Model must have at least ten skins to represent all 10 digits."
	//input isMaxReached(void)			: "Have we reached our maximum value? returns 0 for false, 1 for true."
	
	output onIncrement(integer)			: "Fired when this counter is incremented. Returns the value the counter is now at."
	output onDecrement(integer)			: "Fired when this counter is decremented. Returns the value the counter is now at."
	output onAdd(integer)				: "Fired when this counter is added to. Returns the value added to it."
	output onSub(integer)				: "Fired when this counter is subtracted from. Returns the value subtracted from it."
	//output onMilestone(integer)			: "Fired when this counter reaches the next milestone. \n" + "By default, a milestone is reached by every 10. Will return it's current value."
	output onTargetReached(integer)		: "Fired when this counter reaches its target value. Will return it's current value."
	output onValueChanged(integer)		: "Fired when this counter's value is changed. Returns the new value. You can retrieve the old value through getLastValue()."
	output onMaxReached(integer)		: "Fired when this counter reaches its max value. Will return it's current value."
	output onEnabled(void)				: "Fired when this counter is enabled."
	output onDisabled(void)				: "Fired when this counter is disabled."
	output onCleared(void)				: "Fired when this counter's value has been cleared."
	output onMaxSet(integer)			: "Fired when this counter's maximum value has been set to something. Returns what it was set to."
	output onValueSet(integer)			: "Fired when this counter's value has been set to something. Returns what it was set to."
	output onTargetSet(integer)			: "Fired when this counter's target value has been set to something. Returns what it was set to."
	//output onSoundChanged(string)		: "Fired when our sound is changed. Returns the new sound file."
	//output onModelChanged(string)		: "Fired when our model is changed. Returns the new model file."
]


--]]

--?TODO?: properly implement removePanel()
--?TODO?: add panels to left and right respectively.


--basic stuff for entity declarations.
AddCSLuaFile()
ENT.Type = "anim" --anim because we have a model. If it's point, we can't set our model. We could just make a prop_dynamic to represent us, but i dont think it matters. everything still works fine.
ENT.DisableDuplicator = true
--

--global vars


PANEL_OFFSET = 16 -- the offset to spawn each panel by.

--flags
SF_FIRE_TARGET_ONCE = 1 --the spawnflag that will tell us if we should reset targetValue once we reached it or not.
SF_TARGET_EXACT_MATCH = 2 --flag for if we should use == to compare the targetvalue instead of looser terms like < or >
SF_INVISIBLE = 4

--

--our variables.

--core
ENT.bInit = false --somethings in here need to know when we've initialised. (We consider us in this state when our keyvalues are verified and our panels are properly spawned in.)
ENT.value = 0 --the heart of this entity. this is what value we currently need to represent on the counter.
ENT.targetValue = 0 --target value. when value is equal to this targetvalue or greater than (only equal to for subtractions), it will trigger the "onTargetReached" output.
ENT.maxValue = 0 --our maximum value. targetvalue cannot be higher than this, but can be equal. value cannot be higher than this.
ENT.mdl = "models/gunman/digitgod.mdl" -- the model we're going to use. If you change this, keep in mind that the system expects a model with 10 skins to represent all 10 digits. You also have to change the PANEL_OFFSET variable to match the size of your new model.
ENT.panels = {} --keeps track of the panels we've spawned.
ENT.bEnabled = true --are we enabled?
ENT.bDisableRender = false
--


ENT.wpnFilter = nil --We'll only allow this weapon type to affect the counter. (weapon type is defined by the ammo type that the weapon uses.) If empty, or set to 'No', no filter will be used. Supports classnames. If this fails, will fire onFilterFailed, if successful, onFilterPassed.
ENT.dmgEnt = nil --If set, this entity will add to the counter the amount of damage its taken.
ENT.bTargetFireOnce = false --set by a spawnflag in hammer. this will tell us if we should unset our target value after we reach it.
ENT.bStartDisabled = false -- we do it this way because we want the entity to be properly initialized, but if we disable it during the keyvalue analyisis, it wont set values right. so we need to wait til verify keyvalues to do it.
ENT.bTargetMustMatch = false
--


include("gunman/gunmanUtil.lua") --include that useful utility library baby

--nice debug function that will print out to you all the data related to the entity.
function ENT:printInfo()

	local name = self:GetName()

	if (isStrInvalid(name)) then
		name = tostring(self)
	end
	--header
	print("\n\n========" .. self:GetClass() .. " - " .. name .. " Info========\n\n")
	
	--basic stuff.
	print("Name:", "", "", self:GetName())
	print("Flags:", "", "", self:GetSpawnFlags())
	print("Initialised?", "", self.bInit)
	print("Enabled?", "", self.bEnabled)
	
	--implementation
	print("Value:", "", "", self.value)
	print("Target Value:", "", self.targetValue)
	print("Max Value:", "", self.maxValue)
	print("Model:", "", "", self.mdl)
	print("Rendering?", "", !self.bDisableRender)
	print("Panels:")
	PrintTable(self.panels)
	print("\n")
	print("Damage Entity", "", self.dmgEnt:GetName())
	print("Filter", "", "", self.wpnFilter)
	print("Target Fire Once?", self.bTargetFireOnce)
	print("Start Disabled?", "", self.bStartDisabled)
	print("Target Match Exactly?", self.bTargetMustMatch)
	
	
	--footer
	print("\n")
	print("\n\n========Info END========\n\n")
	print("\n\n")
end
--


--basic core setup (IN ORDER OF EXECUTION!)

--set up our ACTIVATOR and CALLER globals.
function ENT:SetupGlobals( activator, caller )

	ACTIVATOR = activator
	CALLER = caller

	if ( IsValid( activator ) && activator:IsPlayer() ) then
		TRIGGER_PLAYER = activator
	end

end

--delete them. should be done after the input execution ends.
function ENT:KillGlobals()

	ACTIVATOR = nil
	CALLER = nil
	TRIGGER_PLAYER = nil

end
--

--here is where we read in all the keyvalues passed in to our entity. our specific object of this entity class.
function ENT:KeyValue( k, v )

	if ( isKey("initialvalue", k) ) then
		if (!isKeyValueValid(k, v, true)) then return end

		self:setValue(util.StringToType(v, "int")) --dont need to do a isvaluevalid check here because setValue() does that already.

	elseif (isKey("targetvalue", k)) then
		if (!isKeyValueValid(k, v, true)) then return end

		local val = util.StringToType(v, "int")
		if (val == 0) then return end

		self.targetValue = val

	elseif (isKey("maxvalue", k)) then
		if (!isKeyValueValid(k, v, true)) then return end

		local val = util.StringToType(v, "int")

		if (val == 0) then return end

		self.maxValue = val
	
	elseif (isKey("dmgent", k)) then
		if (isStrInvalid(v)) then return end
		
		self.dmgEnt = v
		
	elseif (isKey("wpnfilter", k)) then
		if (isStrInvalid(v)) then return end
		if (v == "0") then return end
		local filter = getItemFromType(v, false, false)
		
		if (filter == nil) then
			if (strIsInvalidEntity(v, false)) then print(self, "was given a filter with a bad class.") return end
			filter = v
		end
		
		
		self.wpnFilter = filter

	elseif (isKey("StartDisabled", k)) then
		if (v == "1") then 
			self.bStartDisabled = true
		end
	
	elseif (isKey("DisableShadows", k)) then
		if (v == "1") then 
			self:DrawShadow(false)
		end
	end


	
	--scans for outputs we made using this entity. Normally this would probably suck, but in our specific case, we prefixed all of our outputs with "on" so we're good.
	if ( string.Left( k, 2 ) == "on" ) then
		self:StoreOutput( k, v )
	end

end

--does some additional verification of the key values we took in. These checks cant be done in ent:keyvalue. This also sets values according to spawnflags.
function ENT:verifyKeys()
	if (CLIENT) then return end --mostly becuase we use getname in our error printouts.

	if (self.targetValue != 0) then
		if (self.targetValue <= self.value) then
			print(self:GetName() .. " tried to set a target value ('" .. self.targetValue .. "') less than or equal to our current value. Reset.")
			self.targetValue = 0
		end
	end

	if (self.maxValue > 0) then --we dont know when maxvalue will be set, so we have to wait till we know for a fact that we set it. Thus, we do it here.
		if (self.value > self.maxValue) then
			print(self:GetName() .. " tried to set an initial value ('" .. self.value .. "') over the max value. Clamped.")
			self.value = self.maxValue
		end

		if (self.targetValue > self.maxValue) then

			print(self:GetName() .. " tried to set a target value ('" .. self.targetValue .. "') over the max value. (" .. self.maxValue .. ") Clamped.")
			self.targetValue = self.maxValue
		end
	end

	if (self.dmgEnt != nil) then
		if (strIsInvalidEntity(self.dmgEnt, true)) then
			print(self:GetName() .. " tried to set a damage entity ('" .. self.dmgEnt .. "') which did not exist. Resetting.")
			self.dmgEnt = nil
		else
			self.dmgEnt = ents.FindByName(self.dmgEnt)[1]
			self:hookDamageEntity() --hook our designated damage entity.
		end
	end

	if (self:HasSpawnFlags(SF_FIRE_TARGET_ONCE)) then -- if we have the flag for firing target output once, then set our bool for it to true.
		self.bTargetFireOnce = true
	end

	if (self:HasSpawnFlags(SF_TARGET_EXACT_MATCH)) then
		self.bTargetMustMatch = true
	end
	
	if (self:HasSpawnFlags(SF_INVISIBLE)) then
		self:SetRenderMode(RENDERMODE_NONE)
		self.bDisableRender = true
		self:DrawShadow(false)
	end
	
	

	if (self.bStartDisabled) then --will screw up initial value addition if we do it in ent:keyvalue()
		self.bEnabled = false
	end
end

function ENT:setupPanels()

	self.panels[1] = self --initialize the first value of panels with ourselves. spawnPanel will take it from here.
	
	if (self.bDisableRender) then return end
	
	if (self.maxValue == 0) then --if maxvalue is zero (it isn't set) then our value is over 1 digit, spawn panels for every digit we dont yet represent.
		if (self.value > 9) then
			self:spawnPanel(string.len(tostring(self.value)) - 1)
		end
	else --we have a max value, which makes things easier. spawn a panel for every digit we dont currently represent according to the difference between our max value and our current value.
		self:spawnPanel(string.len(tostring(self.maxValue)) - string.len(tostring(self.value)))
	end
end

function ENT:OnRemove()
	if (CLIENT) then return end
	
	hook.Remove("EntityTakeDamage", "HK_DG_ENTDMG_" .. self:GetName())
end

function ENT:hookDamageEntity() --adds a EntityTakeDamage hook into our designated damage entity. (self.dmgEnt)
	hook.Add("EntityTakeDamage", "HK_DG_ENTDMG_" .. self:GetName(), function(ent, dmg)
		
		if (!self.bInit or !self.bEnabled) then return end
		if (self.dmgEnt == nil) then return end
		if (ent != self.dmgEnt) then return end
		
		if (isStrValid(self.wpnFilter)) then
			
			if (dmg:GetAttacker():GetActiveWeapon():GetClass() == self.wpnFilter) then
				self:fireEvent("onFilterPassed")
				self:add(dmg:GetDamage())
				
			else
				self:fireEvent("onFilterFailed")
				return
			end
		end
	end)
end

--we start main execution here.
function ENT:Initialize()
	self:verifyKeys() --check our keys again.

	if (!bDisableRender) then
		self:SetModel(self.mdl) --set our model.
	end

	self:setupPanels() --setup our panels to start with.

	self.bInit = true

	self:updateDisplay() --have to do this here because the add call to updateDisplay() above in ent:keyvalues wont work due to panel references being nil.
end

--spawns in panels in an amount of your choosing then indexes them into the panels table. it will automatically move them to the right of the counter. can create as many as you need.
function ENT:spawnPanel(nPanelsToSpawn)
	if (self.bDisableRender) then return end

	if (CLIENT) then
		return end

	if (nPanelsToSpawn != nil) then
		if (nPanelsToSpawn == 0) then return end
	end

	

	if (!isValValid(nPanelsToSpawn)) then nPanelsToSpawn = 1 end --if we weren't given a nPanelsToSpawn argument, assume its 1

	
	for i = table.maxn(self.panels) + 1, table.maxn(self.panels) + nPanelsToSpawn, 1 do --for every panel, start at the first blank space in the table, for as long as we haven't spawned in the amount we need, based on the amount we have. If we have 4 panels and we want to spawn 1, wait til we get to index 5, then spawn. increment by 1

		local off = PANEL_OFFSET * table.maxn(self.panels)

		--our offset is based on a magical number (PANEL_OFFSET) that has to be manually determined by the programmer based on the model's size. I could try and make this automatic, but it serves my purpose, and in true programmer fashion, if it works, then fuck it.


		self.panels[i] = ents.Create("prop_dynamic") --create the next panel, it will be a prop_dynamic.
		self.panels[i]:SetModel(self.mdl) -- set its model to our model.
		self.panels[i]:SetPos(self:GetPos() + (self:GetRight() * off)) --now get the position of the current panel and then get its right. times that by the offset, and we'll move it to the right by our offset based on its current position.
		self.panels[i]:SetAngles(self:GetAngles()) --set its angles to match the others.
		self.panels[i]:Spawn() --spawn that baby!
	end
end

--does the opposite of above. removes the panel or panels if you choose multiple, and gets rid of it in the table. WARNING!: Not sure how much i tested this!
function ENT:removePanel(nPanelsToDel)
	if (self.bDisableRender) then return end
	
	if (CLIENT) then
		return end

	if (nPanelsToDel != nil) then
		if (nPanelsToDel == 0) then return end
	end

	if (!isValValid(nPanelsToDel)) then nPanelsToDel = 1 end

	for i = table.maxn(self.panels), table.maxn(self.panels) - nPanelsToDel, 1 do
		self.panels[i]:Remove()
		self.panels[i] = nil
	end
end

--changes the skin of the passed panel to the passed digit.
function ENT:displayDigit(digit, panel)
	panel:SetSkin(digit)
end

--splits apart our value into seperate digits and displays them onto the appropiate panels.
function ENT:updateDisplay()
	if (CLIENT) then --fuck client. all my homies hate client
		return end

	if (!IsValid(self.panels[1])) then return end --if the first reference is nil, we got a problem. end here.

	local digits = {} --create a place to store our digits.

	local divisor = 10 --create our divisor.

	digits[1] = math.Truncate(self.value % 10) --get our first digit since the first digit will never be divided.

	for i = 2, table.maxn(self.panels), 1 do -- for 2, since we got the first one, as long as we're less than the number of panels present, increment by 1
		digits[i] = math.Truncate((self.value / divisor) % 10) --set this place to the extracted digit, which we can get by dividing the value and then modding it by 10. we truncate it because it might have a decimal point. and we cant represent those.
		divisor = divisor * 10; --now increment the divisor by timesing it by 10. so we go 10, 100, 1000, 10000. with those, we can extract all possible numerical places and display them as seperate digits on the panels.
	end

	--now for every digit we've got, display it on a panel that represents its place.
	for i = 1, table.maxn(self.panels), 1 do
		self:displayDigit(digits[i], self.panels[i])
	end
end

--the heart and soul of this entity. This baby reads in hammer i/o input and translates it into LUA calls. This will allow you to use the inputs in the fgd in hammer to actually use this entity in the map with hammer's scripting.
function ENT:AcceptInput( name, activator, caller, data )
	if (CLIENT) then self:KillGlobals() return false end --mostly becuase we use getname in our error printouts.
	if (isStrInvalid(name)) then	print(self:GetName() .. " was shot a bad input!") return end --you never know.
	if (strIsNum(name)) then print(self:GetName() .. " was fired an invalid input. Input name contained numbers.") self:KillGlobals() return false end

	self:SetupGlobals(activator, caller)

	--for every input we have in the fgd, we make an if statement for it. then we return true if we found our input, false if we didn't. (dont ask me why, im honestly not sure, just do it.)
	if (isInput("add", name)) then
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given non numerical data.") self:KillGlobals() return false end
		local val = util.StringToType(data, "int")
		if (!isValValid(val)) then self:KillGlobals() return false end

		self:add(val) 
		self:KillGlobals()
	return true end
	
	if (isInput("sub", name)) then
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given non numerical data.") self:KillGlobals() return false end
		local val = util.StringToType(data, "int")
		if (!isValValid(val)) then self:KillGlobals() return false end

		self:sub(val) 
		self:KillGlobals()
	return true end

	if (isInput("Increment", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		self:add(1)
		self:fireEvent("onIncrement")
		self:KillGlobals()
	return true end

	if (isInput("Decrement", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		self:sub(1) 
		self:fireEvent("onDecrement")
		self:KillGlobals()
	return true end

	if (isInput("Toggle", name)) then
		if (self.bEnabled) then
			self.bEnabled = false 
			self:fireEvent("onDisabled")
		else
			self.bEnabled = true 
			self:fireEvent("onEnabled")
		end

		self:KillGlobals()
	return true end

	if (isInput("Enable", name)) then
		if (self.bEnabled) then self:KillGlobals() return false end
		self.bEnabled = true
		self:fireEvent("onEnabled")

		self:KillGlobals()
	return true end

	if (isInput("Disable", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		self.bEnabled = false
		self:fireEvent("onDisabled")

		self:KillGlobals()
	return true end

	if (isInput("Clear", name)) then
		self:clear()
		self:KillGlobals()
	return true end

	if (isInput("setValue", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given non numerical data.") self:KillGlobals() return false end
		self:setValue(util.StringToType(data, "int"))

		self:KillGlobals()

	return true end

	if (isInput("setMax", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given non numerical data.") self:KillGlobals() return false end
		local val = util.StringToType(data, "int")
		if (isStrInvalid(data)) then print(self:GetName() .. " was fired a bad input." .. name .. " requires a valid parameter value.") self:KillGlobals() return false end
		if (!isValValid(val)) then print(self:GetName() .. " was fired a bad input." .. name .. " requires a valid value.") self:KillGlobals() return false end
		if (val <= self.value) then self:KillGlobals() return false end


		self.maxValue = val
		self:fireEvent("onMaxSet")

		if (string.len(tostring(self.maxValue )) > table.maxn(self.panels)) then
			
			--if so, then we need to get the difference between the amount of digits our new value has versus the number of panels we have. With this difference, spawn in that amount of new panels to represent this value.
			self:spawnPanel(string.len(tostring(self.maxValue)) - table.maxn(self.panels))
		end

		self:KillGlobals()
	return true end

	if (isInput("setTarget", name)) then
		if (!self.bEnabled) then self:KillGlobals() return false end
		if (!strIsNum(data)) then print(self:GetName() .. "'s " .. name .. " input was given non numerical data.") self:KillGlobals() return false end
		local val = util.StringToType(data, "int")
		if (isStrInvalid(data)) then print(self:GetName() .. " was fired a bad input." .. name .. " requires a valid parameter value.") self:KillGlobals() return false end
		if (!isValValid(val)) then print(self:GetName() .. " was fired a bad input." .. name .. " requires a valid value.") self:KillGlobals() return false end
		if (self.maxValue > 0) then
			if (val > self.maxValue) then print(self:GetName() .. " was fired a bad input." .. name .. " target value cannot be higher than the maximum value.") return end 
		end

		
		self.targetValue = val
		self:fireEvent("onTargetSet")

		self:KillGlobals()
	return true end
	
	if (isInput("setFilter", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. " was fired a bad input." .. name .. " requires a valid parameter value.") self:KillGlobals() return false end
		
		if (data == "0") then self.wpnFilter = nil self:KillGlobals() return true end
		local filter = getItemFromType(data, false, false)
		
		if (filter == nil) then
			if (strIsInvalidEntity(data, false)) then print(self:GetName() .. " was fired a bad input." .. name .. " was given a filter with a bad class.") return end
			filter = data
		end
		
		
		self.wpnFilter = filter

		self:KillGlobals()
	return true end
	
	if (isInput("setDamageEntity", name)) then
		if (isStrInvalid(data)) then print(self:GetName() .. " was fired a bad input." .. name .. " requires a valid parameter value.") self:KillGlobals() return false end
		
		if (strIsInvalidEntity(data, true)) then
			print(self:GetName() .. " was fired a bad input." .. name .. " which requires a valid entity. No entity was found.")
			
			self:KillGlobals()
			self.dmgEnt = nil
			return false
		else
			self.dmgEnt = ents.FindByName(data)[1]
			hook.Remove("EntityTakeDamage", "HK_DG_ENTDMG_" .. self:GetName())
			
			self:hookDamageEntity() --hook this as our new designated damage entity.
		end

		self:KillGlobals()
	return true end
	
	if (isInput("printInfo", name)) then
		self:printInfo()
		self:KillGlobals()
	return true end
	
	print(self:GetName() .. " was shot an unknown input! ('" .. name .. "')")
	self:KillGlobals()
	return false

end

--

--main implementation

-- --a function to that gets the damage of the activator's current weapon. --no longer needed, we have a hook to EntityTakeDamage.
-- function ENT:getDamage()
	-- if (CLIENT) then return 0 end --mostly because we use getname. i'm sorry, but i cant stop. its an addiction. i need hel
	-- if (!self.bScaleDmg) then return 0 end
	
	-- local ent = ACTIVATOR

	-- if (!IsValid(ent)) then --ACTIVATOR will ALWAYS be null the first time around. dont know why, but we handle that here.
		-- if (IsValid(Entity(1))) then
			-- ent = Entity(1)
		-- else 
			-- print(self:GetName() .. " found no players to use as a reference for damage scaling. Is anyone there?") 
			-- return 0 
		-- end
	-- end

	-- local wpn = ent:GetActiveWeapon()

	-- if (!IsValid(wpn)) then return 0 end

	-- local ammoDat = game.GetAmmoData(wpn:GetPrimaryAmmoType())

	-- if (ammoDat == nil) then return 0 end

	-- local dmg = GetConVar(ammoDat.plydmg):GetInt()

	-- if (dmg == nil) then return 0 end

	-- return dmg
-- end

function ENT:add(value)
	if (CLIENT) then return end
	if (!self.bEnabled) then return end --implements the enable/disable/startdisabled functionality.
	if (self.maxValue != 0 and self.value >= self.maxValue) then return end --if we've hit the maxvalue, fire the output and return here. We say 'or greater than' despite knowing we should never be higher than max, but we do so anyway just to be certain.
	if (!isValValid(value) or value == 0) then return end --if the value is invalid, tell the caller to go fuck emselves.





	--set that value baby
	self.value = self.value + value


	--if we dont have a maxvalue
	if (self.maxValue == 0) then
		--then get the length of the value in string. this will give us the number of digits in the value. 
		--is this number greater than the number of panels we have? remember, every possible digit place must have a panel to represent it. 
		--so if we have a 5 digit value and 4 panels, we need to add 1.
		if (string.len(tostring(self.value )) > table.maxn(self.panels)) then
			
			--if so, then we need to get the difference between the amount of digits our new value has versus the number of panels we have. With this difference, spawn in that amount of new panels to represent this value.
			self:spawnPanel(string.len(tostring(self.value)) - table.maxn(self.panels))
		end
	elseif (self.value >= self.maxValue) then --fuck all that noise, just make sure that our value doesn't exceed maxValue. -greater than OR EQUAL TO for the sake of the output.

		--if it does, then set our value to maxValue. clamp it basically.
		self.value = self.maxValue

		--then fire our output for reaching max value
		self:fireEvent("onMaxReached")
	end

	if (self.targetValue > 0) then --if our targetValue is not zero, (it cant be a negative number) then we must have a valid targetValue
		
		if (self.bTargetMustMatch) then --in this case, set by our spawnflags, we MUST be equal EXACTLY to the target value.
			if (self.value == self.targetValue) then --if we are equal to it

				--fire the output for it
				self:fireEvent("onTargetReached")
	
				--if our spawnflag said to fire once, then set our target value back to zero.
				if (self.bTargetFireOnce) then
					self.targetValue = 0
				end
			end
		else
			if (self.value >= self.targetValue) then --if we exceed the target or are equal to it

				--fire the output for it
				self:fireEvent("onTargetReached")
	
				--if our spawnflag said to fire once, then set our target value back to zero.
				if (self.bTargetFireOnce) then
					self.targetValue = 0
				end
			end
		end

		
	end

	--fire the corresponding outputs.
	self:fireEvent("onAdd")
	self:fireEvent("onValueChanged")

	self:updateDisplay() --now finally, update our displays to show the changes.
end

--mostly the same as above, but simpler, and for subtraction.
function ENT:sub(value)
	if (CLIENT) then return end
	if (!self.bEnabled) then return end --ditto
	if (self.value == 0) then return end --we cant subtract into the negative.
	if (!isValValid(value) or value == 0) then return end
	

	self.value = self.value - value

	if (self.value < 0) then self.value = 0 end --if we went into the negative, clamp to zero.
		
	if (self.targetValue > 0) then --if we have a target value
		if (self.bTargetMustMatch) then
			if (self.value == self.targetValue) then --and its equal to the target. we do equal here because otherwise we'll end up firing this output too much.

				--fire the output
				self:fireEvent("onTargetReached")
				if (self.bTargetFireOnce) then
					self.targetValue = 0
				end
			end
		else
			if (self.value <= self.targetValue) then --and its equal to the target. we do equal here because otherwise we'll end up firing this output too much.

				--fire the output
				self:fireEvent("onTargetReached")
				if (self.bTargetFireOnce) then
					self.targetValue = 0
				end
			end
		end
	end 

	self:fireEvent("onSub")
	self:fireEvent("onValueChanged")

	self:updateDisplay()
end

--clears our value and fires the appropiate outputs.
function ENT:clear()
	if (CLIENT) then return end
	--if (!self.bEnabled) then return end --i've found it more useful to avoid disabling this function when disabled.
	if (self.value == 0) then return end

	self.value = 0

	self:fireEvent("onCleared")
	self:fireEvent("onValueChanged", self.value)

	self:updateDisplay()
end

--directly sets our value.
function ENT:setValue(value)
	if (CLIENT) then return end	
	if (!isValValid(value)) then print(self:GetName() .. " tried to set an invalid value.") return end
	
	if (self.bInit) then --since we're called by ent:keyvalue, we need to NOT do this during that time. setupPanels() is already on this.
		if (self.maxValue == 0) then
			if (string.len(tostring(value)) > table.maxn(self.panels)) then
				self:spawnPanel(string.len(tostring(value)) - table.maxn(self.panels))
			end
		elseif (value >= self.maxValue) then --and this case will be handled by verifyKeys(), so we dont worry about it.
			value = self.maxValue
			self:fireEvent("onMaxReached")
		end
	end

	self.value = value

	if (self.targetValue > 0) then --if our targetValue is not zero, (it cant be a negative number) then we must have a valid targetValue
		
		if (self.bTargetMustMatch) then --in this case, set by our spawnflags, we MUST be equal EXACTLY to the target value.
			if (self.value == self.targetValue) then --if we are equal to it

				--fire the output for it
				self:fireEvent("onTargetReached")
	
				--if our spawnflag said to fire once, then set our target value back to zero.
				if (self.bTargetFireOnce) then
					self.targetValue = 0
				end
			end
		else
			if (self.value >= self.targetValue) then --if we exceed the target or are equal to it

				--fire the output for it
				self:fireEvent("onTargetReached")
	
				--if our spawnflag said to fire once, then set our target value back to zero.
				if (self.bTargetFireOnce) then
					self.targetValue = 0
				end
			end
		end

		
	end

	self:fireEvent("onValueChanged")
	self:fireEvent("onValueSet")

	self:updateDisplay()
end

--