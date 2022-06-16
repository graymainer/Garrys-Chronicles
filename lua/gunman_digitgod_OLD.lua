

--this is the OLD version of this entity. Originally i planned to integrate it with hammer's io system, but i couldn't find a way to identify who the incoming inputs and outputs were supposed to go to.
--so with this version, you can only place ONE on a map at a time. Any more than that will result in strange behavior.
--you'll also have to rename this file from 'gunman_digitgod_OLD.lua' to 'gunman_digitgod.lua', otherwise source wont spawn it.





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



--we'll switch to using a single function that will be called from hammer and given a target name plus an input, plus a value. essentially we'll be making our own keyvalue system.
--dont know if outputs will work or not.

AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.RenderGroup = RENDERGROUP_OPAQUE

MAX_DIGIT_SIZE = 999
PANEL_OFFSET = 16 --magic number. it needs to be determined based on the model's size. You could automate it, but here, we are only using the digitgod mdl which suits our purpose.

local flags = 0
local model = "models/gunman/digitgod.mdl"
local initialValue = 0
local currentValue = 0
local lastValue = 0
local maxValue = 0
local targetValue = 0
local milestoneValue = 0
local milestoneCounter = 0
local soundFile = nil
local soundVolume = 5
local soundPitch = 100
local us = nil
local bUseTargetVal = false
local bEnabled = true
local bDamageScale = false
local panels = {}

function spawnPanels(nPanels)
	if (CLIENT) then
		return end

	if (nPanels == nil) then
		nPanels = 3
	end

	local off = PANEL_OFFSET

	for i = 2, nPanels, 1 do --one is already spawned in. so 2
		panels[i] = ents.Create("prop_dynamic")
		panels[i]:SetModel(model)
		panels[i]:SetAngles(us:GetAngles())
		panels[i]:SetPos(us:GetPos() + (us:GetRight() * off)) --offset is a magic number. it needs to be determined based on the model's size.
		panels[i]:Spawn()

		off = off + PANEL_OFFSET
	end
end

function addPanel()
	if (CLIENT) then
		return end

	local off = PANEL_OFFSET * table.maxn(panels)

	local i = table.maxn(panels) + 1

	panels[i] = ents.Create("prop_dynamic")
	panels[i]:SetModel(model)
	panels[i]:SetPos(us:GetPos() + (us:GetRight() * off)) --offset is a magic number. it needs to be determined based on the model's size.
	panels[i]:SetAngles(us:GetAngles())
	panels[i]:Spawn()



end

function reset() --IF ANYTHING ABOVE IS CHANGED, UPDATE THIS TO REFLECT!!!
	flags = 0
	model = "models/gunman/digitgod.mdl"
	initialValue = 0
	currentValue = 0
	lastValue = 0
	maxValue = 0
	targetValue = 0
	milestoneValue = 0
	soundFile = nil
	soundVolume = 5
	soundPitch = 100
	us = nil
	bUseTargetVal = false
	bEnabled = true
	bDamageScale = false
	
--	PrintTable(panels)

	for i = 1, table.maxn(panels), 1 do
		panels[i]:Remove()
	end

	
end

hook.Add("PreCleanupMap", "HK_CLEAN", function() 
	reset()
end)

function isStrValid(str)
	if (str == nil) then return false end
	str = string.Replace(str, " ", "")
	if (str == "") then return false end
return true end

--Will print a message into console. 
--Prefixing every message will be the entity's map name or specific entity reference if the name isn't valid. No space before your message.
--Before the logger, is the log level which can be 0=notice, 1=warning, or 2=error.
--However if us isn't valid, we will still print, but with an added part to the message. It will also default to an error message.
function logMsg(lvl, msg)
	if (!isStrValid(msg)) then return end
	if (lvl == nil or lvl < 0 or lvl > 2) then lvl = 0 end

	local logger

	if (!IsValid(us)) then
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

	local lvlMsg

	if (lvl == 0) then
		lvlMsg = "Notice: "
	elseif (lvl == 1) then
		lvlMsg = "~WARNING~ "
	elseif (lvl == 2) then
		lvlMsg = "!ERROR! "
	end
	

	print(lvlMsg .. logger .. " " .. msg)

end

function isKey(key, name)
	if (!isStrValid(key) or !isStrValid(name)) then return false end

	if (string.lower(name) == string.lower(key)) then return true end
return false end


function ENT:KeyValue(key, value) --loads all the keys and their values given to us by hammer. including pending outputs. will all be verifed at Initialize
	--WARNING! all messages logged from here will bitch about us being invalid.
	if (isKey("spawnflags", key)) then
		flags = util.StringToType(value, "int")
	elseif (isKey("initialvalue", key)) then
		currentValue = util.StringToType(value, "int")
		initialValue = currentValue
	elseif (isKey("targetvalue", key)) then
		targetValue = util.StringToType(value, "int")
	elseif (isKey("maxvalue", key)) then			
		maxValue = util.StringToType(value, "int")
	elseif (isKey("milestone", key)) then			
		milestoneValue = util.StringToType(value, "int")
	elseif (isKey("model", key)) then
		--logMsg(0, " Found model key, extracting value... " .. value)		
		model = value
	elseif (isKey("sndfile", key)) then	
		soundFile = value
	elseif (isKey("sndvol", key)) then			
		soundVolume = util.StringToType(value, "int")
	elseif (isKey("sndpitch", key)) then			
		soundPitch = util.StringToType(value, "int")
	elseif (isKey("scaledmg", key)) then
		if (value == "1") then
			bDamageScale = true
		end
	elseif (isKey("StartDisabled", key)) then
		if (value == "1") then
			bEnabled = false
		end
	elseif (isKey("DisableShadows", key)) then
		if (value == "1") then
			self:DrawShadow(false)
		else
			self:DrawShadow(true)
		end
	elseif ( string.Left( key, 2 ) == "On" or string.Left( key, 2 ) == "on") then --we can assume its an output given to us by hammer
		print(key, value)
		self:StoreOutput(key, value)
	end
end


function verifyKeyvalues()
	
	if (SERVER) then
	--	logMsg(0, " Verifying keys on server.")
		if (flags > 2) then
			flags = 0
			logMsg(1, " had unknown flags. Defaulting to 0.")
		end

		if (currentValue < 0) then
			currentValue = 0
			initialValue = currentValue
			logMsg(1, " had an invalid value. Reset.")
		elseif (currentValue > maxValue) then
			currentValue = maxValue
			initialValue = currentValue
			logMsg(1, " had an initial value of over " .. maxValue .. ". Clamping!")
		end

		if (targetValue != nil and targetValue > 0 and targetValue < maxValue) then
			bUseTargetVal = true
		else
			logMsg(1, " had an invalid targetValue. Ignored.")
		end

		if (maxValue == nil or maxValue < 0) then
			maxValue = MAX_DIGIT_SIZE
			logMsg(1, " had an invalid maxValue. Reset.")
		end

		if (milestoneValue <= 0 or milestoneValue >= maxValue) then
			milestoneValue = 0
			logMsg(1, " had a bad milestone value. Reset to 0.")
		end
		
		if (!isStrValid(soundFile)) then
			soundFile = ""
			logMsg(1, " had a bad sound file directory. Reset.")
		else
			soundFile = string.Replace(soundFile, '92', "/")
		end

		if (soundVolume < 0 or soundVolume > 10) then
			soundVolume = 0.5
			logMsg(1, " had a bad volume. Volume must be within 0-10. Reset.")
		end

		if (soundPitch <= 0 or soundPitch > 999) then
			soundPitch = 100
			logMsg(1, " had a bad pitch. Pitch cannot be 0, negative, or above 999. Reset.")
		end
	end

	

	if (CLIENT) then
		--logMsg(0, " model at verifyKeyvalues is " .. model)
		--logMsg(0, " checking model.")
		if (!isStrValid(model)) then
			model = "models/gunman/digitgod.mdl"
			logMsg(1, " had a bad model directory. Reset to default.")
		else
			if (IsUselessModel(model)) then
				logMsg(1, "'s model (model: " .. model ..") is a bad model or file directory. Reset to default.")
				model = "models/gunman/digitgod.mdl"
			return end

			if (NumModelSkins(model) < 10) then
				logMsg(1, "'s model (" .. model ..", skins: " .. NumModelSkins(model) .. ") doesn't have enough skins to represent all 10 digits. Reset to default.")
				model = "models/gunman/digitgod.mdl"
			return end
			--logMsg(0, model .. " ok. Checking for back slashes.")
			model = string.Replace(model, '92', "/") --replace all \ with /. cant reference \ directly without code commiting suicide.
		end
	end

end

function ENT:Initialize() --self is only valid within this scope.
	us = self

	if (!IsValid(us)) then logMsg(2, "Could not get a reference to ourselves.") reset() return end



	verifyKeyvalues() --we currently have a serious issue where model is set for server, but not for client. So therefore currently the custom model functionality is unimplemented.
	
	
	if (CLIENT) then return end

	us:SetModel(model) --start rendering our model

	panels[1] = us

	spawnPanels(string.len(tostring(maxValue))) --magic number here, we only support three digits. we could support more, but three is all we need. there is still some support built in here however, so doing so would more require editing the math and the looping structure of said math that is used to split the value into digits.


	if (bEnabled) then
		updateDisplay()
	end
	
end

local function displayDigit(digit, panel)
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

function updateDisplay()
	if (CLIENT) then
		return end

	local digits = {}

	local divisor = 10
	digits[1] = math.Truncate(currentValue % 10)

	for i = 2, table.maxn(panels), 1 do
		digits[i] = math.Truncate((currentValue / divisor) % 10)
		divisor = divisor * 10;
	end

--	PrintTable(digits)


	for i = 1, table.maxn(panels), 1 do
		--print("Displaying digit", digits[i], "on panel", panels[i])
		displayDigit(digits[i], panels[i])
	end
end

function isMaxReached()
	if (maxValue == 0) then return end
	if (maxValue < 0) then maxValue = MAX_DIGIT_SIZE logMsg(1, "'s maxValue was invalid! isMaxReached failed. Reset.") return false end
	
	if (currentValue >= maxValue) then
		currentValue = maxValue
		fireOutput("onMaxReached", currentValue)
	return true end
return false end

function fireOutput(output, data)
	if (!IsValid(us)) then return end

	if (data != nil) then
		us:TriggerOutput(output, us, currentValue)
	else
		us:TriggerOutput(output, us, "")
	end
end

function isInput(input, name)
	if (string.lower(name) == string.lower(input)) then return true end
return false end

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
		reciever:Fire("InValue", maxValue, 0, reciever, us)
	elseif (class == "math_counter" or class == "logic_compare" or class == "logic_branch") then
		reciever:Fire("SetValue", maxValue, 0, reciever, us)
	else --we cant identify this entity, so just try to give them the value as an output.
		reciever:Fire("AddOutput", maxValue, 0, reciever, us)
	end
end

function ENT:AcceptInput( name, activator, caller, data )
	if (!bEnabled) then return end

	print(name, activator, caller, data)

	name = string.lower(name)

	if (isInput("add", name)) then
		add(util.StringToType(data, "int"))
	return end

	if (isInput("sub", name)) then
		sub(util.StringToType(data, "int"))
	return end

	if (isInput("increment", name)) then
		add(1)
		fireOutput("onIncrement", currentValue)
	return end

	if (isInput("decrement", name)) then
		sub(1)
		fireOutput("onDecrement", currentValue)
	return end

	if (isInput("toggle", name)) then
		if (bEnabled) then
			bEnabled = false 
			fireOutput("onDisabled")
		else
			bEnabled = true 
			fireOutput("onEnabled")
		end
	return end

	if (isInput("enable", name)) then
		bEnabled = true
		fireOutput("onEnabled")
	return end

	if (isInput("disable", name)) then
		bEnabled = false
		fireOutput("onDisabled")
	return end

	if (isInput("clear", name)) then
		if (flags == 2) then
			currentValue = initialValue
		else
			currentValue = 0
		end

		updateDisplay()
		fireOutput("onValueChanged", currentValue)
		fireOutput("onCleared")
	return end

	if (isInput("getvalue", name)) then
		outputValue(caller, currentValue)
	return end

	if (isInput("setValue", name)) then
		local valInt = util.StringToType(data, "int")
		if (valInt < 0 or valInt > MAX_DIGIT_SIZE or valInt > maxValue) then return end

		currentValue = valInt

		isMaxReached()
		playsound()
		updateDisplay()
		fireOutput("onValueChanged", valInt)
	return end

	if (isInput("getlastvalue", name)) then
		outputValue(caller, lastValue)
	return end

	if (isInput("setMax", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end

		local valInt = util.StringToType(data, "int")
		if (valInt < 0 or valInt > MAX_DIGIT_SIZE) then return end
		maxValue = valInt
		fireOutput("onMaxSet", valInt)
	return end
	
	if (isInput("getmax", name)) then
		outputValue(caller, maxValue)
	return end

	if (isInput("setTarget", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end

		local valInt = util.StringToType(data, "int")
		if (valInt <= 0) then return end
		targetValue = valInt
		bUseTargetVal = true
		fireOutput("onTargetSet", valInt)
	return end
	
	if (isInput("getTarget", name)) then
		outputValue(caller, targetValue)
	return end

	if (isInput("setSound", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had a bad sound file directory. Ignored.") return end
		local newSound = string.Replace(data, '92', "/")
		soundFile = newSound
		fireOutput("onSoundChanged", newSound)
	return end

	if (isInput("setSoundVolume", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end
		local valInt = util.StringToType(data, "int")
		
		if (valInt < 0 or valInt > 10) then logMsg(1, " recieved an input from " .. caller .. " with a bad volume. Volume must be within 0-10.") return end
		soundVolume = valInt / 10
	return end

	if (isInput("setSoundPitch", name)) then
		if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end
		local valInt = util.StringToType(data, "int")
		
		if (valInt <= 0 or valInt > 999) then logMsg(1, " recieved an input from " .. caller .. " with a bad pitch. Pitch cannot be 0 or below or above 999.") return end
		soundPitch = valInt
	return end

	if (isInput("getSound", name)) then
		outputValue(caller, soundFile)
	return end

	if (isInput("getSoundVolume", name)) then
		outputValue(caller, soundVolume)
	return end

	if (isInput("getSoundPitch", name)) then
		outputValue(caller, soundPitch)
	return end

	if (isInput("getModel", name)) then
		outputValue(caller, model)
	return end

	if (CLIENT) then
		if (isInput("setModel", name)) then
			if (!isStrValid(data)) then logMsg(1, " recieved an input from " .. caller .. " that had bad data passed to us. Ignored.") return end
			local newmdl = string.Replace(data, '92', "/")
			
			if (IsUselessModel(newmdl)) then logMsg(1, " recieved an input from " .. caller .. " that was either a bad model or file directory. Ignored.") return end
			
			if (NumModelSkins(newmdl) < 10) then logMsg(1, " recieved an input from " .. caller .. "(passed model: " .. newmdl ..", skins: " .. NumModelSkins(newmdl) .. ") but that model doesn't have enough skins to represent all 10 digits. Ignored.") return end
			
			model = newmdl
			fireOutput("onSoundChanged", newmdl)
		return end
	end

	if (isInput("isMaxReached", name)) then
		outputValue(caller, (currentValue >= maxValue))
	return end

end

function playsound()
	--logMsg(0, " attempting to play sound.")
	if(!isStrValid(soundFile)) then --[[logMsg(1, " Could not play sound, str was invalid.")--]] return end
	

	us:EmitSound(soundFile, 75, soundPitch, soundVolume, CHAN_AUTO)
end

function add(value)
	if (!bEnabled) then return end
	if (value <= 0) then return end
	if (maxValue > 0) then
		if (currentValue + value > maxValue) then return end
	elseif (string.len(tostring(currentValue + value)) > table.maxn(panels)) then
		addPanel()
	end

	if (bDamageScale) then
		if (!IsValid(Entity(1))) then logMsg(2, " could not get a reference to player 1 to scale damage! Is there anyone here? Cancelling.") return end
		value = value + GetAmmoData(Entity(1):GetActiveWeapon():GetPrimaryAmmoType()).npcdmg
	end

	lastValue = currentValue
	currentValue = currentValue + value
	fireOutput("onValueChanged", currentValue)
	fireOutput("onAdd", value)

	isMaxReached()

	if (milestoneValue > 0) then
		
		if (milestoneCounter >= milestoneValue) then
			fireOutput("onMilestone", currentValue)
			milestoneCounter = 0
		else
			milestoneCounter = milestoneCounter + 1
		end

	end

	if (bUseTargetVal) then
		if (currentValue >= targetValue) then
			fireOutput("onTargetReached", currentValue)
			bUseTargetVal = false
		end
	end

	updateDisplay()
	playsound()
end

function sub(value)
	if (!bEnabled) then return end
	if (value <= 0) then return end
	if (currentValue - value < 0) then return end

	lastValue = currentValue
	currentValue = currentValue - value

	fireOutput("onValueChanged", currentValue)
	fireOutput("onSub", value)

	updateDisplay()
	playsound()
end
