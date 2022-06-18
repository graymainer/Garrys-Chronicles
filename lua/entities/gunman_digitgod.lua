--[[ Here is the definition of this entity in 'hammer i/o'-speak. Paste this into an fgd and it will allow you to use create the entity in hammer.
@PointClass base(Targetname, Parentname, Angles) studioprop() = gunman_digitgod : "This entity is apart of the Garry's Chronicles project. \n" + "It recreates the entity_digitgod entity.\n"+ "\n"+ "\n"+ "An entity that will hold a value and display it visually on a counter. \n" + "Supports only three-digit numbers. \n" + "Does NOT support negative numbers or decimals.\n" + "\n" + "Source is lua/entities/gunman_digitgod.lua"
[

	initialvalue(integer)				: "Initial Value"	: 0	  : "The value that the counter should be set at when spawned in. \n" + "If 'Clear to initial value' is ticked, when cleared, this value will be what the counter is set back to."

	targetvalue(integer)				: "Value Target"	: 0   : "The value this counter should aim to achieve. Once reached, the onValueReached output will fire. \n" + "\n" + "A value of 0 will disable."
	
	maxvalue(integer)					: "Maximum Value"	: 999 : "The max value that this counter can go to. \n" + "Will fire onMaxReached output when reached. \n" + "\n" + "A value of 0 will default to 999."

	milestone(integer)					: "Milestone Value" : 10  : "The value we consider a milestone. \n" + "\n" + "By default, every ten numbers added to the counter will be considered a milestone, and fire the onMilestone() output. \n" + "So for example:\n" + "0..1..2..3..4..5..6..7..8..9..10 Milestone reached! \n" + "11..12..13..14..15..16..17..18..19..20 Milestone reached! \n" + "21..22..23 etc."
	
	model(studio)						: "World Model"		: 		"models/gunman/digitgod.mdl" : "What model should this counter be represented by? \n" + "WARNING! The model MUST have at least 10 skins to represent all 10 digits. Otherwise, the model will not load and will go back to default."

	sound(sound) 						: "Sound Name" 		: ""  : "The sound to play whenever the value changes.\n" + " Example would be making the counter make a 'ticking' sound when it increments.\n" + " Must be a .wav file. If left blank, no sound will play."
	
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

	--Functions are singular, they do not copy across entites, 	
		--that or we fucked things up (possibly that they call functions that aren't prefixed with ENT:, 
			--in such case they dont copy) either way we need functions to use a passed ent ref.

--this shit is doing something funky as fuck with the i/o system. and lua_run is being a bitch and not running our dgFire inputs due to size shaming. what the fuck


AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.RenderGroup = RENDERGROUP_OPAQUE

MAX_DIGIT_SIZE = 999
PANEL_OFFSET = 16 --magic number. it needs to be determined based on the model's size. You could automate it, but here, we are only using the digitgod mdl which suits our purpose.
SUPPRESS_ALL_WARNINGS = false

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

function reset(ent) --IF ANYTHING ABOVE IS CHANGED, UPDATE THIS TO REFLECT!!!
	ent.model = "models/gunman/digitgod.mdl"
	ent.initialValue = 0
	ent.currentValue = 0
	ent.lastValue = 0
	ent.maxValue = 0
	ent.targetValue = 0
	ent.milestoneValue = 0
	ent.milestoneCounter = 0
	ent.soundFile = nil
	ent.soundVolume = 5
	ent.soundPitch = 100
	ent.us = nil
	ent.bUseTargetVal = false
	ent.bEnabled = true
	ent.bDamageScale = false
	ent.panels = {}
	ent.keys = {}
	ent.values = {}
	ent.bSearchOutputs = false 
	ent.bDone = false 
	dgAllEnts = {}
	dgAllKeys = {}
	dgAllValues = {}
	ent.pendingInputs = {}

	if (CLIENT) then return end
	for i = 1, table.maxn(ent.panels), 1 do
		ent.panels[i]:Remove()
	end
end

function isStrValid(str)
	if (str == nil) then return false end
	str = string.Replace(str, " ", "")
	if (str == "") then return false end
return true end

function isInput(input, name)
	if (!isStrValid(input) or !isStrValid(name)) then print("isStrValid was given a bad argument.") return end

	if (string.lower(name) == string.lower(input)) then return true end
return false end

function fireOutput(ent, output, data)
	if(!IsValid(ent)) then
		ent = us
	end

	print(ent, output, data)

	if(!IsValid(ent)) then return end
	if (!isStrValid(output)) then logMsg(2, " fireOutput was given a bad output!") return end

	
	if (data != nil) then
		ent:TriggerOutput(output, ent, tostring(data))
	else
		ent:TriggerOutput(output, ent, "")
	end
end

function outputValue(ent, reciever, value)
	if (CLIENT) then return end

	if(!IsValid(ent)) then
		ent = us
	end
	if(!IsValid(ent)) then return end

	if (!isStrValid(value)) then return end

	if (!IsValid(reciever)) then 
		if (IsValid(Entity(1))) then
			reciever = Entity(1)
		else
			logMsg(1, "'s outputValue() could not identify the reciever. Are there no players in this server?")
		end
	end

	if (isstring(value)) then
		reciever:Fire("AddOutput", value, 0, reciever, ent)
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
		reciever:Fire("InValue", tostring(value), 0, reciever, ent)
	elseif (class == "math_counter" or class == "logic_compare" or class == "logic_branch") then
		reciever:Fire("SetValue", tostring(value), 0, reciever, ent)
	else --we cant identify this entity, so just try to give them the value as an output.
		reciever:Fire("AddOutput", tostring(value), 0, reciever, ent)
	end
end


function dgFire(data)
	local input, target, params
	print(data)

	local dataExploded = string.Explode(" ", data)

	input = dataExploded[1]
	target = dataExploded[2]
	params = dataExploded[3]
	

	local ent = ents.FindByName(target)[1]

	if (!IsValid(ent)) then print("dgFire was shot an input with an unknown target. ") return end --if its not for us, then fuck off
	if (!isStrValid(input)) then logMsg(2, " was shot a bad input. Unknown input type!") return end
	if (!isStrValid(target)) then logMsg(2, " was shot a bad input. Target was invalid!") return end
	
	--process the input
	if (isInput(input, "increment")) then
		ent:add(1, ent)
		fireOutput(ent, "onIncrement", ent.currentValue)
	
	elseif (isInput(input, "decrement")) then
		ent:sub(1)
		fireOutput(ent, "onDecrement", ent.currentValue)
	
	elseif (isInput(input, "add")) then
		if (!isStrValid(params)) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end
		
		ent:add(util.StringToType(params, "int"), ent)
	
	elseif (isInput(input, "sub")) then
		if (!isStrValid(params)) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end
		
		ent:sub(util.StringToType(params, "int"), ent)

	elseif (isInput(input, "toggle")) then
		if (ent.bEnabled) then
			ent.bEnabled = false 
			fireOutput(ent, "onDisabled")
		else
			ent.bEnabled = true 
			fireOutput(ent, "onEnabled")
		end
		
	elseif (isInput(input, "enable")) then
		ent.bEnabled = true
		fireOutput(ent, "onEnabled")
		
	elseif (isInput(input, "disable")) then
		ent.bEnabled = false
		fireOutput(ent, "onDisabled")
		
	elseif (isInput(input, "clear")) then
		ent.currentValue = 0
		fireOutput(ent, "onCleared", params)
		fireOutput(ent, "onValueChanged", ent.currentValue)
		updateDisplay(ent)
			
	elseif (isInput(input, "setvalue")) then
		if (!isStrValid(params)) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end

		local newVal = util.StringToType(params, "int")
		if (newVal < 0) then print(target .. " was shot a bad input. Value to set cannot be lower than zero.") return end

		if (ent.maxValue > 0) then
			if (newVal > ent.maxValue) then return end
		end
		
		ent.currentValue = newVal

		fireOutput(ent, "onValueSet", ent.currentValue)
		fireOutput(ent, "onValueChanged", ent.currentValue)
		updateDisplay(ent)
				
	elseif (isInput(input, "setmax")) then
		if (!isStrValid(params)) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end

		local newVal = util.StringToType(params, "int")
		if (newVal < 0) then print(target .. " was shot a bad input. Value to set as max cannot be lower than zero.") return end
		
		ent.maxValue = newVal

		fireOutput(ent, "onMaxSet", ent.maxValue)
			
	elseif (isInput(input, "settarget")) then
		if (!isStrValid(params)) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end

		local newVal = util.StringToType(params, "int")
		if (newVal < 0) then print(target .. " was shot a bad input. Value to set as the target cannot be lower than zero.") return end

		if (ent.maxValue > 0) then
			if (newVal > ent.maxValue) then print(target .. " was shot a bad input. Value to set as the target cannot be greater than the maximum value.") return end
		end

		if (newVal == 0) then
			ent.bUseTargetVal = false 
		else
			ent.bUseTargetVal = true
		end
		
		ent.targetValue = newVal

		fireOutput(ent, "onTargetSet", ent.targetValue)

	elseif (isInput(input, "setsound")) then

		if (!isStrValid(params)) then print(target .. " was shot a bad input. Sound to set to was invalid!") return end
			
		ent.soundFile = string.Replace(params, '92', "/")

		fireOutput(ent, "onSoundChanged", ent.soundFile)

	elseif (isInput(input, "setmodel")) then

		if (!isStrValid(params)) then print(target .. " was shot a bad input. " .. input " input requires a valid parameter.") return end
			
		local newmdl = string.Replace(params, '92', "/")

		if (IsUselessModel(newmdl)) then print(target .. " was shot a bad input. Model to set to was invalid!") return end

		ent.model = newmdl

		fireOutput(ent, "onModelChanged", ent.soundFile)
	end
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
	print(us) 
	reset(us)
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

function printDGInfo(entName)
	local ent = ents.FindByName(entName)[1]

	print("\n")
	print("----KEYS----")
	PrintTable(ent.keys)
	print("------------")
	print("\n")
	print("---VALUES---")
	PrintTable(ent.values)
	print("------------")
	print("\n")
	print("------------")
	print("\n")
	print("---OUTPUTS---")
	PrintTable(ent.pendingInputs)
	print("------------")
	print("\n")

end

function loadKeyValues(ent)

	for i = 1, table.maxn(ent.keys), 1 do
		local key = string.lower(ent.keys[i])
		local val = ent.values[i]

		if (isKey("initialvalue", key)) then
			ent.currentValue = util.StringToType(val, "int")
			ent.initialValue = ent.currentValue
		elseif (isKey("targetvalue", key)) then
			ent.targetValue = util.StringToType(val, "int")
		elseif (isKey("maxvalue", key)) then
			ent.maxValue = util.StringToType(val, "int")
		elseif (isKey("milestone", key)) then
			ent.milestoneValue = util.StringToType(val, "int")
		elseif (isKey("model", key)) then
			ent.model = val
		elseif (isKey("sound", key)) then
			ent.soundFile = val
		elseif (isKey("sndVol", key)) then
			ent.soundVolume = util.StringToType(val, "int") / 10
		elseif (isKey("sndPitch", key)) then
			ent.soundPitch = util.StringToType(val, "int")
		elseif (isKey("scaledmg", key)) then
			if (val == "1") then
				ent.bDamageScale = true 
			end
		elseif (isKey("startdisabled", key)) then
			if (val == "1") then
				ent.bEnabled = false 
			end
		elseif (isKey("startdisabled", key)) then
			if (val == "1") then
				ent:DrawShadow(true)
			else
				ent:DrawShadow(false)
			end
		end
	end

	updateDisplay(ent)
end

function verifyKeyvalues(ent)
	if (!IsValid(ent)) then
		if (IsValid(us)) then
			ent = us
		else
			return 
		end
	end

	if (SERVER) then

		if (ent.currentValue < 0) then
			ent.currentValue = 0
			ent.initialValue = ent.currentValue
			print(ent:GetName() .. " had an invalid value. Reset.")
		elseif (ent.maxValue > 0) then
			if (ent.currentValue > ent.maxValue) then
				ent.currentValue = ent.maxValue
				ent.initialValue = ent.currentValue
				print(ent:GetName() .. " had an initial value of over " .. ent.maxValue .. ". Clamping!")
			end
		end

		if (ent.targetValue != 0) then
			if (ent.targetValue != nil and ent.targetValue > 0 and ent.targetValue < ent.maxValue) then
				ent.bUseTargetVal = true
			else
				print(ent:GetName() .. " had an invalid targetValue. Ignored.")
			end
		end

		if (ent.maxValue == nil or ent.maxValue < 0) then
			ent.maxValue = MAX_DIGIT_SIZE
			print(ent:GetName() .. " had an invalid maxValue. Reset.")
		end

		if (ent.milestoneValue <= 0 or ent.milestoneValue >= ent.maxValue) then
			ent.milestoneValue = 0
			print(ent:GetName() .. " had a bad milestone value. Reset to 0.")
		end
		
		if (!isStrValid(ent.soundFile)) then
			ent.soundFile = ""
			print(ent:GetName() .. " had a bad sound file directory. Reset.")
		else
			ent.soundFile = string.Replace(ent.soundFile, '92', "/")
		end

		if (ent.soundVolume < 0 or ent.soundVolume > 10) then
			ent.soundVolume = 0.5
			print(ent:GetName() .. " had a bad volume. Volume must be within 0-10. Reset.")
		end

		if (ent.soundPitch <= 0 or ent.soundPitch > 999) then
			ent.soundPitch = 100
			print(ent:GetName() .. " had a bad pitch. Pitch cannot be 0, negative, or above 999. Reset.")
		end
	end

	

	if (CLIENT) then
		--logMsg(0, " model at verifyKeyvalues is " .. model)
		--logMsg(0, " checking model.")
		if (!isStrValid(ent.model)) then
			ent.model = "models/gunman/digitgod.mdl"
			print( " had a bad model directory. Reset to default.")
		else
			if (IsUselessModel(ent.model)) then
				print( "'s model (model: " .. ent.model ..") is a bad model or file directory. Reset to default.")
				ent.model = "models/gunman/digitgod.mdl"
			return end

			if (NumModelSkins(ent.model) < 10) then
				print( "'s model (" .. ent.model ..", skins: " .. NumModelSkins(ent.model) .. ") doesn't have enough skins to represent all 10 digits. Reset to default.")
				ent.model = "models/gunman/digitgod.mdl"
			return end
			--logMsg(0, model .. " ok. Checking for back slashes.")
			ent.model = string.Replace(ent.model, '92', "/") --replace all \ with /. cant reference \ directly without code commiting suicide.
		end
	end
end


hook.Add("EntityKeyValue", "HK_KEYVAL", function(ent, key, val) 
	
	table.insert(dgAllEnts, ent)
	table.insert(dgAllKeys, key)
	table.insert(dgAllValues, val)

end)

function loadInputs() --disgusting, i know, but i dont know of any other way than this. I cant figure out a way to reference ourselves while in the EntityKeyValue hook. 
	for i = 1, table.maxn(dgAllKeys), 1 do
		if (dgAllKeys[i] == "targetname" or dgAllKeys[i] == "a0luaname" or dgAllKeys[i] == "SourceEntityName") then continue end

		if (string.find(dgAllValues[i], us:GetName())) then
			us.pendingInputs[dgAllEnts[i]] = dgAllKeys[i] .. "	" .. dgAllValues[i]
		end
	end
end

function ENT:KeyValue(key, value) --loads all the keys and their values given to us by hammer. including pending outputs. will all be verifed at Initialize

	
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


end

function getModel()
	print(us.model)
end

function ENT:Initialize() --self is only valid within this scope.


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
		fireOutput(ent, "onMaxReached", ent.currentValue)
	return true end
return false end

function playsound(ent)
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
	
		local wpn = Entity(1):GetActiveWeapon()
	
		if (!IsValid(wpn)) then return end

		local ammoDat = game.GetAmmoData(wpn:GetPrimaryAmmoType())

		if (ammoDat == nil) then return end

		local dmg = GetConVar(ammoDat.plydmg):GetInt()

		if (dmg == nil) then return end

		local scaledValue = value + dmg * 2

		print(scaledValue)

		if (ent.maxValue > 0) then
			if (scaledValue + ent.currentValue > ent.maxValue) then
				scaledValue = 0
			end
		end

		value = scaledValue
	end

	ent.lastValue = ent.currentValue
	ent.currentValue = ent.currentValue + value
	fireOutput(ent, "onValueChanged", ent.currentValue)
	fireOutput(ent, "onAdd", value)

	isMaxReached(ent)

	if (ent.milestoneValue > 0) then
		
		if (ent.milestoneCounter >= ent.milestoneValue) then
			fireOutput(ent, "onMilestone", ent.currentValue)
			ent.milestoneCounter = 0
		else
			ent.milestoneCounter = ent.milestoneCounter + 1
		end

	end

	if (ent.bUseTargetVal) then
		if (ent.currentValue >= ent.targetValue) then
			fireOutput(ent, "onTargetReached", ent.currentValue)
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

	fireOutput(ent, "onValueChanged", ent.currentValue)
	fireOutput(ent, "onSub", value)

	updateDisplay(ent)
	playsound(ent)
end
