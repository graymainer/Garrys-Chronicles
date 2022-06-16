--[[ Here is the definition of this entity in 'hammer i/o'-speak. Paste this into an fgd and it will allow you to use create the entity in hammer.
@PointClass base(Targetname, Parentname, Angles) studioprop() = gunman_digitgod : "This entity is apart of the Garry's Chronicles project. \n" + "It recreates the entity_digitgod entity.\n"+ "\n"+ "\n"+ "An entity that will hold a value and display it visually on a counter. \n" + "Supports only three-digit numbers. \n" + "Does NOT support negative numbers or decimals.\n" + "\n" + "Source is lua/entities/gunman_digitgod.lua"
[
	spawnflags(flags) =
	[
		2 : "Clear to initial value" : 0
	]

	initialvalue(integer)				: "Initial Value"	: 0	  : "The value that the counter should be set at when spawned in. \n" + "If 'Clear to initial value' is ticked, when cleared, this value will be what the counter is set back to."

	targetvalue(integer)				: "Value Target"	: 0   : "The value this counter should aim to achieve. Once reached, the onValueReached output will fire. \n" + "\n" + "A value of 0 will disable."
	
	maxvalue(integer)					: "Maximum Value"	: 999 : "The max value that this counter can go to. \n" + "Will fire onMaxReached output when reached. \n" + "\n" + "A value of 0 will default to 999."

	milestone(integer)					: "Milestone Value" : 10  : "The value we consider a milestone. \n" + "\n" + "By default, every ten numbers added to the counter will be considered a milestone, and fire the onMilestone() output. \n" + "So for example:\n" + "0..1..2..3..4..5..6..7..8..9..10 Milestone reached! \n" + "11..12..13..14..15..16..17..18..19..20 Milestone reached! \n" + "21..22..23 etc."
	
	model(studio)						: "World Model"		: 		"models/gunman/digitgod.mdl" : "What model should this counter be represented by? \n" + "WARNING! The model MUST have at least 10 skins to represent all 10 digits. Otherwise, the model will not load and will go back to default."

	sndfile(sound) 						: "Sound Name" 		: ""  : "The sound to play whenever the value changes.\n" + " Example would be making the counter make a 'ticking' sound when it increments.\n" + " Must be a .wav file. If left blank, no sound will play."
	
	sndvol(integer) 					: "Sound Volume"	: 5   : "The volume to play the sound at. Only works if a sound was selected."
	
	sndpitch(integer) 					: "Sound Pitch"		: 100 : "The pitch to play the sound at. Only works if a sound was selected."
	
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

	DisableShadows(choices) 			: "Disable Shadows" : 0   : "Should this counter's model have its shadows disabled?"  =
	[
		0 : "No"
		1 : "Yes"
	] 
	

	// Inputs
	
	input Add(integer)					: "Add this value to the counter."
	input Sub(integer)					: "Subtract this value from the counter."
	input Increment(void)				: "Increment the counter."
	input Decrement(void)				: "Decrement the counter."
	input Toggle(void)					: "Will toggle the counter."
	input Enable(void)					: "Will enable the counter. Fires the onEnabled output."
	input Disable(void)					: "Will disable the counter. It will no longer function. Fires the onDisabled output."
	input Clear(void)					: "Clears the current value of this counter and resets it to 0. \n" + "But if the 'Clear to initial value' flag is set, it will instead reset to whatever the initial value was."
	input getValue(void)				: "Will get the current value that this counter is at.\n" + "This works through some lua trickery. basically, if its an entity that can hold values, like a 'logic_case' or a 'math_counter',\n" + "we will fire their respective 'invalue' or 'setvalue' inputs and feed them the value you asked for here.\n" + "This means that the entity you're making the output from should be something that can hold values. Like logic_case.\n" + "\n" + "If the entity isn't recognized as an entity that can hold values, it will then try to add an output with the value inside it.\n" + "It should be findable by searching through the entity that asked for the value's keyvalues.\n" + " This will be the way all of our get inputs will work."
	input setValue(integer)				: "Will set our value to what you specify. Cannot be negative and cannot pass the max limit."
	input getLastValue(void)			: "Will get the last value that this counter had. This is only set when the value has previously changed.\n" + "It will return 0 if nothing changed."
	input setMax(integer)				: "Will set the maximum value of this counter to the parameter value."
	input getMax(void)					: "Will get our maximum value."
	input setTarget(integer)			: "Will set the target value of this counter to the parameter value."
	input getTarget(void)				: "Will get our target value."
	input setSound(integer)				: "Will change the sound to play to whatever you give us. Does not support gamesound entries."
	input setSoundVolume(integer)		: "Will change the volume of the sound to whatever you give us."
	input setSoundPitch(integer)		: "Will change the pitch of the sound to whatever you give us."
	input getSound(void)				: "Will get the sound we currently are using. Wont work with any entites that can hold values, will be an output."
	input getSoundVolume(void)			: "Will get the volume we're currently playing the sound at."
	input getSoundPitch(void)			: "Will get the pitch of our sound."
	input getModel(void)				: "Gets our model."
	input setModel(void)				: "Sets our model. Model must have at least ten skins to represent all 10 digits."
	input isMaxReached(void)			: "Have we reached our maximum value? returns 0 for false, 1 for true."
	
	output onIncrement(integer)			: "Fired when this counter is incremented. Returns the value the counter is now at."
	output onDecrement(integer)			: "Fired when this counter is decremented. Returns the value the counter is now at."
	output onAdd(integer)				: "Fired when this counter is added to. Returns the value added to it."
	output onSub(integer)				: "Fired when this counter is subtracted from. Returns the value subtracted from it."
	output onMilestone(integer)			: "Fired when this counter reaches the next milestone. \n" + "By default, a milestone is reached by every 10. Will return it's current value."
	output onTargetReached(integer)		: "Fired when this counter reaches its target value. Will return it's current value."
	output onValueChanged(integer)		: "Fired when this counter's value is changed. Returns the new value. You can retrieve the old value through getLastValue()."
	output onMaxReached(integer)		: "Fired when this counter reaches its max value. Will return it's current value."
	output onEnabled(void)				: "Fired when this counter is enabled."
	output onDisabled(void)				: "Fired when this counter is disabled."
	output onCleared(void)				: "Fired when this counter's value has been cleared."
	output onMaxSet(integer)			: "Fired when this counter's maximum value has been set to something. Returns what it was set to."
	output onTargetSet(integer)			: "Fired when this counter's target value has been set to something. Returns what it was set to."
	output onSoundChanged(string)		: "Fired when our sound is changed. Returns the new sound file."
	output onModelChanged(string)		: "Fired when our model is changed. Returns the new model file."
]
--]]

--clean this shit up, find out what functions we do and dont need.
--fix up the functions that still use us references. 
	--Functions are singular, they do not copy across entites, 	
		--that or we fucked things up (possibly that they call functions that aren't prefixed with ENT:, 
			--in such case they dont copy) either way we need functions to use a passed ent ref.


AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.RenderGroup = RENDERGROUP_OPAQUE

MAX_DIGIT_SIZE = 999
PANEL_OFFSET = 16 --magic number. it needs to be determined based on the model's size. You could automate it, but here, we are only using the digitgod mdl which suits our purpose.
SUPPRESS_ALL_WARNINGS = false

ENT.flags = 0
ENT.model = "models/gunman/digitgod.mdl"
ENT.initialValue = 0
ENT.currentValue = 0
ENT.lastValue = 0
ENT.maxValue = 0
ENT.targetValue = 0
ENT.milestoneValue = 0
ENT.milestoneCounter = 0
ENT.soundFile = nil
ENT.soundVolume = 5
ENT.soundPitch = 100
ENT.us = nil
ENT.bUseTargetVal = false
ENT.bEnabled = true
ENT.bDamageScale = false
ENT.panels = {}
ENT.keys = {}
ENT.values = {}
ENT.bSearchOutputs = false 
ENT.bDone = false 
dgAllEnts = {}
dgAllKeys = {}
dgAllValues = {}
ENT.pendingInputs = {}

function isStrValid(str)
	if (str == nil) then return false end
	str = string.Replace(str, " ", "")
	if (str == "") then return false end
return true end

function isInput(input, name)
	if (!isStrValid(input) or !isStrValid(name)) then print("isStrValid was given a bad argument.") return end

	if (string.lower(name) == string.lower(input)) then return true end
return false end

function dgFire(data)
	local input, target, params

	local dataExploded = string.Explode(" ", data)

	input = dataExploded[1]
	target = dataExploded[2]
	params = dataExploded[3]

	local ent = ents.FindByName(target)[1]



	if (!IsValid(ent)) then print("dgFire was shot an input with an unknown target. ") return end --if its not for us, then fuck off
	if (!isStrValid(input)) then logMsg(2, " was shot a bad input. Unknown input type!") return end
	if (!isStrValid(target)) then logMsg(2, " was shot a bad input. Target was invalid!") return end

	print(ent)
	-- local startp, endp = string.find(data, " ", 0)

	-- input = string.Trim(string.sub(data, 0, startp), " ")

	-- local startp2, endp2 = string.find(data, " ", endp)

	-- target = string.Trim(string.sub(data, endp, startp2), " ")

	-- params = string.Trim(string.sub(data, endp2), " ")

	--print(input, target, params)
	
	if (isInput(input, "increment")) then
		ent:add(1, ent)
	end
	if (isInput(input, "decrement")) then
		ent:sub(1)
	end

	if (isInput(input, "add")) then
		ent:add(1, ent)
	end

	if (isInput(input, "sub")) then
		if (params == nil) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end
		
		ent:sub(util.StringToType(params, "int"))
	end



end

function reset() --IF ANYTHING ABOVE IS CHANGED, UPDATE THIS TO REFLECT!!!
	us.flags = 0
	us.model = "models/gunman/digitgod.mdl"
	us.initialValue = 0
	us.currentValue = 0
	us.lastValue = 0
	us.maxValue = 0
	us.targetValue = 0
	us.milestoneValue = 0
	us.soundFile = nil
	us.soundVolume = 5
	us.soundPitch = 100
	us.bUseTargetVal = false
	us.bEnabled = true
	us.bDamageScale = false
	us.us = nil

	if (CLIENT) then return end
	for i = 1, table.maxn(us.panels), 1 do
		us.panels[i]:Remove()
	end
end

function ENT:AcceptInput( name, activator, caller, data )

	print("ssssdosssosss")
	print("\n\n", us:GetName(), "\n\n")

	
	-- if (SERVER) then
	-- 	print("\n\n", us:GetName(), "\n\n")
	-- 	PrintTable(us.pendingInputs)
	-- end
	self:StoreOutput(name, "caller")
	self:TriggerOutput(name, activator, caller)

	if (!us.bEnabled) then return end


	local bValid = false 
	local inputKeys = table.GetKeys(us.pendingInputs)

	for i = 1, table.maxn(inputKeys), 1 do
		if (inputKeys[i] == caller) then
			print("INPUT MATCH!")
			bValid = true
			break 
		end
	end

	if (!bValid) then print("NO MATCH") return end


	

	name = string.lower(name)

	if (isInput("add", name)) then
		add(util.StringToType(data, "int"))
	return end

	if (isInput("sub", name)) then
		sub(util.StringToType(data, "int"))
	return end

	if (isInput("increment", name)) then
		add(1)
		fireOutput("onIncrement", us.currentValue)
	return end

	if (isInput("decrement", name)) then
		sub(1)
		fireOutput("onDecrement", us.currentValue)
	return end

	if (isInput("toggle", name)) then
		if (us.bEnabled) then
			us.bEnabled = false 
			fireOutput("onDisabled")
		else
			us.bEnabled = true 
			fireOutput("onEnabled")
		end
	return end

	if (isInput("enable", name)) then
		us.bEnabled = true
		fireOutput("onEnabled")
	return end

	if (isInput("disable", name)) then
		us.bEnabled = false
		fireOutput("onDisabled")
	return end

	if (isInput("clear", name)) then
		if (us.flags == 2) then
			us.currentValue = us.initialValue
		else
			us.currentValue = 0
		end

		updateDisplay()
		fireOutput("onValueChanged", us.currentValue)
		fireOutput("onCleared")
	return end

	if (isInput("getvalue", name)) then
		outputValue(caller, us.currentValue)
	return end

	if (isInput("setValue", name)) then
		local valInt = util.StringToType(data, "int")
		if (valInt < 0 or valInt > MAX_DIGIT_SIZE or valInt > us.maxValue) then return end

		us.currentValue = valInt

		isMaxReached()
		playsound()
		updateDisplay()
		fireOutput("onValueChanged", valInt)
	return end

	if (isInput("getlastvalue", name)) then
		outputValue(caller, us.lastValue)
	return end

	if (isInput("setMax", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end

		local valInt = util.StringToType(data, "int")
		if (valInt < 0 or valInt > MAX_DIGIT_SIZE) then return end
		us.maxValue = valInt
		fireOutput("onMaxSet", valInt)
	return end
	
	if (isInput("getmax", name)) then
		outputValue(caller, us.maxValue)
	return end

	if (isInput("setTarget", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end

		local valInt = util.StringToType(data, "int")
		if (valInt <= 0) then return end
		us.targetValue = valInt
		us.bUseTargetVal = true
		fireOutput("onTargetSet", valInt)
	return end
	
	if (isInput("getTarget", name)) then
		outputValue(caller, us.targetValue)
	return end

	if (isInput("setSound", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had a bad sound file directory. Ignored.") return end
		local newSound = string.Replace(data, '92', "/")
		us.soundFile = newSound
		fireOutput("onSoundChanged", newSound)
	return end

	if (isInput("setSoundVolume", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end
		local valInt = util.StringToType(data, "int")
		
		if (valInt < 0 or valInt > 10) then logMsg(1, " recieved an input from " .. caller .. " with a bad volume. Volume must be within 0-10.") return end
		us.soundVolume = valInt / 10
	return end

	if (isInput("setSoundPitch", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end
		local valInt = util.StringToType(data, "int")
		
		if (valInt <= 0 or valInt > 999) then logMsg(1, " recieved an input from " .. caller .. " with a bad pitch. Pitch cannot be 0 or below or above 999.") return end
		us.soundPitch = valInt
	return end

	if (isInput("getSound", name)) then
		outputValue(caller, us.soundFile)
	return end

	if (isInput("getSoundVolume", name)) then
		outputValue(caller, us.soundVolume)
	return end

	if (isInput("getSoundPitch", name)) then
		outputValue(caller, us.soundPitch)
	return end

	if (isInput("getModel", name)) then
		outputValue(caller, us.model)
	return end

	if (CLIENT) then
		if (isInput("setModel", name)) then
			if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end
			local newmdl = string.Replace(data, '92', "/")
			
			if (IsUselessModel(newmdl)) then logMsg(1, " recieved an input from " .. caller .. " that was either a bad model or file directory. Ignored.") return end
			
			if (NumModelSkins(newmdl) < 10) then logMsg(1, " recieved an input from " .. caller .. "(passed model: " .. newmdl ..", skins: " .. NumModelSkins(newmdl) .. ") but that model doesn't have enough skins to represent all 10 digits. Ignored.") return end
			
			us.model = newmdl
			fireOutput("onModelChanged", newmdl)
		return end
	end

	if (isInput("isMaxReached", name)) then
		outputValue(caller, (us.currentValue >= us.maxValue))
	return end

end

function spawnPanels(nPanels)
	if (CLIENT) then
		return end

	if (nPanels == nil) then
		nPanels = 3
	end

	local off = PANEL_OFFSET

	for i = 2, nPanels, 1 do --one is already spawned in. so 2
		us.panels[i] = ents.Create("prop_dynamic")
		us.panels[i]:SetModel(us.model)
		us.panels[i]:SetAngles(us:GetAngles())
		us.panels[i]:SetPos(us:GetPos() + (us:GetRight() * off)) --offset is a magic number. it needs to be determined based on the model's size.
		us.panels[i]:Spawn()

		off = off + PANEL_OFFSET
	end
end

function addPanel(ent)
	if (CLIENT) then
		return end

	if(!IsValid(ent)) then
		ent = us
	end

	local off = PANEL_OFFSET * table.maxn(ent.panels)

	local i = table.maxn(ent.panels) + 1

	ent.panels[i] = ents.Create("prop_dynamic")
	ent.panels[i]:SetModel(ent.model)
	ent.panels[i]:SetPos(ent:GetPos() + (ent:GetRight() * off)) --offset is a magic number. it needs to be determined based on the model's size.
	ent.panels[i]:SetAngles(ent:GetAngles())
	ent.panels[i]:Spawn()



end

hook.Add("PreCleanupMap", "HK_CLEAN", function() 
	reset()
end)

function logMsg(lvl, msg)
	--Will print a message into console. 
	--Prefixing every message will be the entity's map name or specific entity reference if the name isn't valid. No space before your message.
	--Before the logger, is the log level which can be 0=notice, 1=warning, or 2=error.
	--However if us isn't valid, we will still print, but with an added part to the message. It will also default to an error message.
	if (!isStrValid(msg)) then return end
	if (lvl == nil or lvl < 0 or lvl > 2) then lvl = 0 end
	if (lvl < 2) then
		if SUPPRESS_ALL_WARNINGS then return end
	end

	local lvlMsg

	if (lvl == 0) then
		lvlMsg = "Notice: "
	elseif (lvl == 1) then
		lvlMsg = "~WARNING~ "
	elseif (lvl == 2) then
		lvlMsg = "!ERROR! "
	end

	local logger

	if (!IsValid(us.us)) then
		logger = "*gunman_digitgod had a bad us reference*"
		lvl = 2
	else
		if (SERVER) then
			if (isStrValid(us:GetName())) then
				logger = us:GetName()
			else
				logger = tostring(us)
			end
		else
			logger = tostring(us)
		end
	end

	
	

	print(lvlMsg .. logger .. " " .. msg)

end

function isKey(key, name)
	if (!isStrValid(key) or !isStrValid(name)) then return false end

	if (string.lower(name) == string.lower(key)) then return true end
return false end

function displayDigit(digit, panel)
	-- if (digit == nil or digit < 0 or digit > 9) then
	-- 	digit = 0
	-- end

	if (digit == 0) then
		panel:SetSkin(0)
	elseif (digit == 1) then
		panel:SetSkin(1)
	elseif (digit == 2) then
		panel:SetSkin(2)
	elseif (digit == 3) then
		panel:SetSkin(3)
	elseif (digit == 4) then
		panel:SetSkin(4)
	elseif (digit == 5) then
		panel:SetSkin(5)
	elseif (digit == 6) then
		panel:SetSkin(6)
	elseif (digit == 7) then
		panel:SetSkin(7)
	elseif (digit == 8) then
		panel:SetSkin(8)
	elseif (digit == 9) then
		panel:SetSkin(9)
	end
end

function updateDisplay(ent)
	if (CLIENT) then
		return end

	if (!IsValid(ent)) then
		if (IsValid(us)) then
			ent = us
		else
			logMsg(2, " could not update its display. Entity reference was nil.")
			return 
		end
	end

	if (!IsValid(ent.panels[1])) then return end

	local digits = {}

	local divisor = 10
	digits[1] = math.Truncate(ent.currentValue % 10)

	for i = 2, table.maxn(ent.panels), 1 do
		digits[i] = math.Truncate((ent.currentValue / divisor) % 10)
		divisor = divisor * 10;
	end

	--	PrintTable(digits)


	for i = 1, table.maxn(ent.panels), 1 do
		--print("Displaying digit", digits[i], "on panel", ent.panels[i])
		displayDigit(digits[i], ent.panels[i])
	end
end

function printKeysandValues()
	print("\n")
	print("----KEYS----")
	PrintTable(us.keys)
	print("------------")
	print("\n")
	print("---VALUES---")
	PrintTable(us.values)
	print("------------")
	print("\n")
end

function loadKeyValues(ent)
	ent.currentValue = util.StringToType(ent.values[12], "int")
	ent.initialValue = ent.currentValue

	PrintTable(ent.panels)

	updateDisplay(ent)
end

hook.Add("EntityKeyValue", "HK_KEYVAL", function(ent, key, val) 
	
	--print(ent, key, val)

	table.insert(dgAllEnts, ent)
	table.insert(dgAllKeys, key)
	table.insert(dgAllValues, val)

	-- if (key == "targetname" or key == "a0luaname") then
	-- end

	--table.insert()


end)

function loadInputs() --disgusting, i know, but i dont know of any other way than this. I cant figure out a way to reference ourselves while in the EntityKeyValue hook. 
	for i = 1, table.maxn(dgAllKeys), 1 do
		if (dgAllKeys[i] == "targetname" or dgAllKeys[i] == "a0luaname" or dgAllKeys[i] == "SourceEntityName") then continue end

		if (string.find(dgAllValues[i], us:GetName())) then
			us.pendingInputs[dgAllEnts[i]] = dgAllKeys[i] .. "	" .. dgAllValues[i]
			--table.insert(us.pendingInputs, tostring(dgAllEnts[i]) .. " : " .. dgAllKeys[i] .. "	" .. dgAllValues[i])

		end
	end
end

function ENT:KeyValue(key, value) --loads all the keys and their values given to us by hammer. including pending outputs. will all be verifed at Initialize
--	print(key, value)

	
	if (self.bDone) then return end

	if (self.keys == nil) then
		self.keys = {}
	end

	if (self.values == nil) then
		self.values = {}
	end

	if (self.bSearchOutputs == nil) then
		self.bSearchOutputs = false 
	end

	if (self.bDone == nil) then
		self.bDone = false
	end



	if (self.bSearchOutputs) then
		if (key == "classname") then return end --skip the next two keys.
		if (key == "hammerid") then return end

		if (string.Left(key, 2) == "on") then
			
			self:StoreOutput(key, value)
		else
			self.bDone = true 
		end
	end

	if (key == "a0luaname" and !self.bSearchOutputs) then
		if (value == self:GetName()) then
			self.bSearchOutputs = true
			loadKeyValues(self)
		else
			table.Empty(self.keys)
			table.Empty(self.values)
		end
	else
		table.insert(self.keys, key)
		table.insert(self.values, value)
	end



	--print(key, value)

	-- --WARNING! all messages logged from here will bitch about us being invalid.
	-- if (isKey("spawnflags", key)) then
	-- 	flags = util.StringToType(value, "int")
	-- elseif (isKey("initialvalue", key)) then
	-- 	currentValue = util.StringToType(value, "int")
	-- 	initialValue = currentValue
	-- elseif (isKey("targetvalue", key)) then
	-- 	targetValue = util.StringToType(value, "int")
	-- elseif (isKey("maxvalue", key)) then			
	-- 	maxValue = util.StringToType(value, "int")
	-- elseif (isKey("milestone", key)) then			
	-- 	milestoneValue = util.StringToType(value, "int")
	-- elseif (isKey("model", key)) then
	-- 	--logMsg(0, " Found model key, extracting value... " .. value)		
	-- 	model = value
	-- elseif (isKey("sndfile", key)) then	
	-- 	soundFile = value
	-- elseif (isKey("sndvol", key)) then			
	-- 	soundVolume = util.StringToType(value, "int")
	-- elseif (isKey("sndpitch", key)) then			
	-- 	soundPitch = util.StringToType(value, "int")
	-- elseif (isKey("scaledmg", key)) then
	-- 	if (value == "1") then
	-- 		bDamageScale = true
	-- 	end
	-- elseif (isKey("StartDisabled", key)) then
	-- 	if (value == "1") then
	-- 		bEnabled = false
	-- 	end
	-- elseif (isKey("DisableShadows", key)) then
	-- 	if (value == "1") then
	-- 		self:DrawShadow(false)
	-- 	else
	-- 		self:DrawShadow(true)
	-- 	end
	-- elseif ( string.Left( key, 2 ) == "On" or string.Left( key, 2 ) == "on") then --we can assume its an output given to us by hammer
	-- 	--print(key, value)
	-- 	self:StoreOutput(key, value)
	-- end
end


function verifyKeyvalues()
	
	if (SERVER) then
	--	logMsg(0, " Verifying keys on server.")
		if (us.flags > 2) then
			us.flags = 0
			print( " had unknown flags. Defaulting to 0.")
		end

		if (us.currentValue < 0) then
			us.currentValue = 0
			us.initialValue = us.currentValue
			print( " had an invalid value. Reset.")
		elseif (us.currentValue > us.maxValue) then
			us.currentValue = us.maxValue
			us.initialValue = us.currentValue
			print( " had an initial value of over " .. us.maxValue .. ". Clamping!")
		end

		if (us.targetValue != 0) then
			if (us.targetValue != nil and us.targetValue > 0 and us.targetValue < us.maxValue) then
				us.bUseTargetVal = true
			else
				print( " had an invalid targetValue. Ignored.")
			end
		end

		if (us.maxValue == nil or us.maxValue < 0) then
			us.maxValue = MAX_DIGIT_SIZE
			print(" had an invalid maxValue. Reset.")
		end

		if (us.milestoneValue <= 0 or us.milestoneValue >= us.maxValue) then
			us.milestoneValue = 0
			print( " had a bad milestone value. Reset to 0.")
		end
		
		if (!isStrValid(us.soundFile)) then
			us.soundFile = ""
			print( " had a bad sound file directory. Reset.")
		else
			us.soundFile = string.Replace(us.soundFile, '92', "/")
		end

		if (us.soundVolume < 0 or us.soundVolume > 10) then
			us.soundVolume = 0.5
			print( " had a bad volume. Volume must be within 0-10. Reset.")
		end

		if (us.soundPitch <= 0 or us.soundPitch > 999) then
			us.soundPitch = 100
			print( " had a bad pitch. Pitch cannot be 0, negative, or above 999. Reset.")
		end
	end

	

	if (CLIENT) then
		--logMsg(0, " model at verifyKeyvalues is " .. model)
		--logMsg(0, " checking model.")
		if (!isStrValid(us.model)) then
			us.model = "models/gunman/digitgod.mdl"
			print( " had a bad model directory. Reset to default.")
		else
			if (IsUselessModel(us.model)) then
				print( "'s model (model: " .. us.model ..") is a bad model or file directory. Reset to default.")
				us.model = "models/gunman/digitgod.mdl"
			return end

			if (NumModelSkins(us.model) < 10) then
				print( "'s model (" .. us.model ..", skins: " .. NumModelSkins(us.model) .. ") doesn't have enough skins to represent all 10 digits. Reset to default.")
				us.model = "models/gunman/digitgod.mdl"
			return end
			--logMsg(0, model .. " ok. Checking for back slashes.")
			us.model = string.Replace(us.model, '92', "/") --replace all \ with /. cant reference \ directly without code commiting suicide.
		end
	end
end

function getModel()
	print(us.model)
end

function ENT:Initialize() --self is only valid within this scope.
--	PrintTable(dgAllKeys)
--	PrintTable(dgAllValues)

	us = self	

	if (!IsValid(us)) then logMsg(2, "Could not get a reference to ourselves.") reset() return end

	loadInputs()
	

	verifyKeyvalues() --we currently have a serious issue where model is set for server, but not for client. So therefore currently the custom model functionality is unimplemented.


	if (CLIENT) then return end

	us:SetModel(us.model) --start rendering our model

	us.panels[1] = us

	spawnPanels(string.len(tostring(us.maxValue))) --magic number here, we only support three digits. we could support more, but three is all we need. there is still some support built in here however, so doing so would more require editing the math and the looping structure of said math that is used to split the value into digits.


	if (us.bEnabled) then
		updateDisplay(us)
	end
	
end

function isMaxReached()
	if(!IsValid(ent)) then
		ent = us
	end
	if(!IsValid(ent)) then return end

	if (ent.maxValue == 0) then return end
	if (ent.maxValue < 0) then ent.maxValue = MAX_DIGIT_SIZE logMsg(1, "'s maxValue was invalid! isMaxReached failed. Reset.") return false end
	
	if (ent.currentValue >= ent.maxValue) then
		ent.currentValue = ent.maxValue
		fireOutput("onMaxReached", ent.currentValue)
	return true end
return false end

function fireOutput(output, data, ent)
	if(!IsValid(ent)) then
		ent = us
	end
	if(!IsValid(ent)) then return end

	
	if (data != nil) then
		ent:TriggerOutput(output, ent, ent.currentValue)
	else
		ent:TriggerOutput(output, ent, "")
	end
end

function outputValue(reciever, value)
	if (CLIENT) then return end

	if (!isStrValid(value)) then  return end

	if (!IsValid(reciever)) then 
		if (IsValid(Entity(1))) then
			reciever = Entity(1)
		else
			logMsg(1, "'s outputValue() could not identify the reciever. Are there no players in this server?")
		end
	end

	if (isstring(value)) then
		reciever:Fire("AddOutput", value, 0, reciever, us)
	return end

	if (isbool(value)) then
		if (value) then
			value = 1
		else 
			value = 0
		end
	end


	local class = reciever:GetClass()

	if (class == "logic_case" or class == "math_remap" or class == "math_colorblend") then
		reciever:Fire("InValue", us.maxValue, 0, reciever, us)
	elseif (class == "math_counter" or class == "logic_compare" or class == "logic_branch") then
		reciever:Fire("SetValue", us.maxValue, 0, reciever, us)
	else --we cant identify this entity, so just try to give them the value as an output.
		reciever:Fire("AddOutput", us.maxValue, 0, reciever, us)
	end
end

function playsound()
	if(!IsValid(ent)) then
		ent = us
	end
	if(!IsValid(ent)) then return end

	--logMsg(0, " attempting to play sound.")
	if(!isStrValid(ent.soundFile)) then --[[logMsg(1, " Could not play sound, str was invalid.")--]] return end
	

	ent:EmitSound(ent.soundFile, 75, ent.soundPitch, ent.soundVolume, CHAN_AUTO)
end

function ENT:add(value, ent)
	if(!IsValid(ent)) then
		ent = us
	end
	if(!IsValid(ent)) then return end

	if (!ent.bEnabled) then return end
	if (value <= 0) then return end
	if (ent.maxValue > 0) then
		if (ent.currentValue + value > ent.maxValue) then return end
	elseif (string.len(tostring(ent.currentValue + value)) > table.maxn(ent.panels)) then
		addPanel(ent)
	end

	if (ent.bDamageScale) then
		if (!IsValid(Entity(1))) then logMsg(2, " could not get a reference to player 1 to scale damage! Is there anyone here? Cancelling.") return end
		value = value + GetAmmoData(Entity(1):GetActiveWeapon():GetPrimaryAmmoType()).npcdmg
	end

	ent.lastValue = ent.currentValue
	ent.currentValue = ent.currentValue + value
	fireOutput("onValueChanged", ent.currentValue, ent)
	fireOutput("onAdd", value, ent)

	isMaxReached(ent)

	if (ent.milestoneValue > 0) then
		
		if (ent.milestoneCounter >= ent.milestoneValue) then
			fireOutput("onMilestone", ent.currentValue, ent)
			ent.milestoneCounter = 0
		else
			ent.milestoneCounter = ent.milestoneCounter + 1
		end

	end

	if (ent.bUseTargetVal) then
		if (ent.currentValue >= ent.targetValue) then
			fireOutput("onTargetReached", ent.currentValue, ent)
			ent.bUseTargetVal = false
		end
	end

	updateDisplay(ent)
	playsound(ent)
end

function sub(value, ent)
	if(!IsValid(ent)) then
		ent = us
	end
	if(!IsValid(ent)) then return end
	
	if (!ent.bEnabled) then return end
	if (value <= 0) then return end
	if (ent.currentValue - value < 0) then return end

	ent.lastValue = ent.currentValue
	ent.currentValue = ent.currentValue - value

	fireOutput("onValueChanged", ent.currentValue, ent)
	fireOutput("onSub", value, ent)

	updateDisplay(ent)
	playsound(ent)
end
