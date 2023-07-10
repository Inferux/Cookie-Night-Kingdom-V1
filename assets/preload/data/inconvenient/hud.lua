luaDebugMode = true
local paused = false
local pauseSelect = 1
local canPause = false
local showDanger = false
local whoMadeIt = {'ERROR COMPOSER UNKNOWN'}
local whichMadeIt = 1

function onSongStart()
	canPause = true
end

function onCountdownTick(counter)
	if counter == 0 then
		objectPlayAnimation('Countdown', '3', true)
		setProperty('Countdown.visible', true)
	elseif counter == 1 then
		objectPlayAnimation('Countdown', '2', true)
	elseif counter == 2 then
		objectPlayAnimation('Countdown', '1', true)
	elseif counter == 3 then
		objectPlayAnimation('Countdown', 'GO', true)
	elseif counter == 4 then
		setProperty('Countdown.visible', false)
	end
end

function onCreatePost()
	initSaveData('justSaveDataThings', 'deathCount')
	setTextFont("scoreTxt", "CookieRun Regular.ttf")
	setTextFont("timeTxt", "CookieRun Regular.ttf")
	setTextFont('botplayTxt', "CookieRun Regular.ttf")
    addHaxeLibrary('FunkinLua');
	makeLuaSprite('blackshittakemushroom', nil, -200, -100);
	setScrollFactor('blackshittakemushroom', 0, 0);
	makeGraphic('blackshittakemushroom', screenWidth * 1.2, screenHeight * 1.2, '000000');
	setObjectCamera('blackshittakemushroom', 'other')
	setProperty('blackshittakemushroom.alpha', 0)
	addLuaSprite('blackshittakemushroom', true);
    setPropertyFromClass('flixel.FlxG','mouse.visible',true)
    setPropertyFromClass('flixel.FlxG','mouse.enabled',true)

    makeLuaSprite('pauseButton', 'hud/pause', 1200, 10)
    makeLuaSprite('healthBarCR', 'hud/bar', 0, getProperty('healthBar.y')-4)
    makeLuaSprite('danger', 'hud/danger')

    precacheImage('hud/danger')

	makeAnimatedLuaSprite('Countdown', 'Countdown', 0,0)
	addAnimationByIndices('Countdown', 'Nothing', 'intro-sequence', '12,13,14', 24)
	addAnimationByIndices('Countdown', '3', 'intro-sequence', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', 24)
	addAnimationByIndices('Countdown', '2', 'intro-sequence', '15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31', 24)
	addAnimationByIndices('Countdown', '1', 'intro-sequence', '32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47', 24)
	addAnimationByIndices('Countdown', 'GO', 'intro-sequence', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70', 24)
	addLuaSprite('Countdown', true)
	setObjectCamera('Countdown', 'HUD')
	--setProperty('Countdown.visible', false)

    addLuaSprite('pauseButton', true)
    addLuaSprite('healthBarCR', true)
    addLuaSprite('danger', true)

    setObjectCamera('pauseButton', 'camOther')
    setObjectCamera('danger', 'camOther')
    setObjectCamera('healthBarCR', 'camHUD')

    setObjectOrder('healthBarCR', getObjectOrder('healthBar')+1)

    setProperty('healthBarBG.visible', false)
    scaleObject('healthBar', 0.96, 2.8)
    screenCenter('healthBar', 'x')
    screenCenter('healthBarCR', 'x')

    setProperty('danger.alpha', 0)

    setProperty('iconP1.y', getProperty('iconP1.y')+5)
    setProperty('iconP2.y', getProperty('iconP2.y')+5)
	if songName == 'songName' then
		whichMadeIt = 2
	end

	makeLuaSprite('pauseMenuThingbg', 'hud/pausebg', 0, 0)
	addLuaSprite('pauseMenuThingbg', true)
	setObjectCamera('pauseMenuThingbg', 'camOther')
	setProperty('pauseMenuThingbg.visible', false)
	screenCenter('pauseMenuThingbg', 'x')
	makeLuaSprite('pauseMenuThing', 'hud/pause menu', 0, 0)
	addLuaSprite('pauseMenuThing', true)
	setObjectCamera('pauseMenuThing', 'camOther')
	setProperty('pauseMenuThing.visible', false)
	makeLuaSprite('pauseMenuThings', 'hud/pause select', 0, 0)
	addLuaSprite('pauseMenuThings', true)
	setObjectCamera('pauseMenuThings', 'camOther')
	setProperty('pauseMenuThings.visible', false)
	--[[debugPrint('penis: ull')
	debugPrint('penis: ',getIconColor('dad'))
	colord = getProperty("dad.healthColorArray")
	debugPrint('penis: ull', colord)
	colord = rgbToHex(colord[1], colord[2], colord[3])	
	debugPrint('penis: ull', colord)--]]
	addHaxeLibrary('Assets', 'openfl.utils')

	--[[runHaxeCode("
	var whoMadeIt:String = Assets.getText("assets/data/" + songName + "/composer.txt");
	if(whoMadeIt == null) whoMadeIt = 'NO DATA AVAILBLE';
	")--]]
		--debugPrint('mama mia: ', getProperty('dad.healthColorArray'))
	makeText('pauseMenuName', songName, 1000, screenWidth / 2 - 500, 100, 30, '5b3500', 2, 'ffffff', 'CookieRun Black.ttf', false, 'center', 'other', false)
	makeText('pauseMenuSuckCounter', 'Restarts: '..getDataFromSave('justSaveDataThings', 'deathCount'), 1000, screenWidth / 2 - 500, 200, 30, '5b3500', 2, 'ffffff', 'CookieRun Black.ttf', false, 'center', 'other', false)
end

--[[function rgbToHex(r, g, b)
    --%02x: 0 means replace " "s with "0"s, 2 is width, x means hex
	return string.format("%02x%02x%02x", 
		math.floor(r),
		math.floor(g),
		math.floor(b))
end
function getIconColor(chr) return getColorFromHex(rgbToHex(getProperty(chr..".healthColorArray"))) end
function rgbToHex(array) return string.format('ff%.2x%.2x%.2x', array[1], array[2], array[3]) end--]]

function makeText(tag, text, width, xpos, ypos, size, col, borSize, borColor, font, italy, align, cam, vis)
	makeLuaText(tag, text, width, xpos, ypos)
	addLuaText(tag)
	setTextSize(tag, size)
	setTextBorder(tag, borSize, borColor)
	setTextColor(tag, col)
	setTextFont(tag, font)
	setTextItalic(tag, italy)
	setTextAlignment(tag, align)
	setObjectCamera(tag, cam)
	setProperty(tag..'.visible', vis)
end

function onUpdate()
	curHealth = getProperty('health')
	--debugPrint(curHealth)
	if curHealth < 0.4 and showDanger == false then
		showDanger = true
		doTweenAlpha('DangerFade', 'danger', 0.5, 0.2, 'linear')
	elseif curHealth > 0.4 and showDanger == true then
		showDanger = false
		doTweenAlpha('DangerFade', 'danger', 0, 0.2, 'linear')
	end
	if paused == true then
		if keyJustPressed('down') then	
			if pauseSelect ~= 3 then
				pauseSelect = pauseSelect + 1
			else
				pauseSelect = 1
			end
		end
		if keyJustPressed('up') then	
			if pauseSelect ~= 1 then
				pauseSelect = pauseSelect - 1
			else
				pauseSelect = 3
			end
		end
		if pauseSelect == 1 then
			setProperty('pauseMenuThings.y', 0)
		elseif pauseSelect == 2 then
			setProperty('pauseMenuThings.y', 115)
		else
			setProperty('pauseMenuThings.y', 220)
		end
		--debugPrint('Option Selected: ', pauseSelect)
	end
		if getMouseX('hud') > 1200 and getMouseY('hud') < 65 and mouseClicked('left') then
			if paused == true then
				pauseSelect = 1
			end
			onPause()
		end
		--debugPrint('Paused: ', paused)
end

function onGameOverConfirm(retry)
	if retry == true then
		setDataFromSave('justSaveDataThings', 'deathCount', getDataFromSave('justSaveDataThings', 'deathCount') + 1)
	else
		setDataFromSave('justSaveDataThings', 'deathCount', 0)
	end
end


function onEndSong()
	--if getPropertyFromClass('Conductor', 'songPosition') ~= songLength - 100 then
	--	setDataFromSave('justSaveDataThings', 'deathCount', getDataFromSave('justSaveDataThings', 'deathCount') + 1)
	--else
		setDataFromSave('justSaveDataThings', 'deathCount', 0)
	--end
end

function slideIn(thingSlide)
	thingSlideY = getProperty*(thingSlide..'.y')
	setProperty(thingSlide..'.y', thingSlideY - 1280)
	doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
end

function onPause()
	if paused == false and canPause == true then
		for i =0,3 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_paused_assets');
		end
		paused = true
		setProperty('pauseMenuThingbg.visible', true)
		setProperty('boyfriend.stunned', true)
		setProperty('playbackRate', 0)
		setProperty('pauseMenuThing.visible', true)
		setProperty('pauseMenuThings.visible', true)
		setProperty('pauseMenuName.visible', true)
		setProperty('pauseMenuCredit.visible', true)
		setProperty('pauseMenuSuckCounter.visible', true)
		doTweenAlpha('blacker', 'blackshittakemushroom', 0.3, 0.2, 'linear')
		--[[thingSlide = 'pauseMenuThing'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
		thingSlide = 'pauseMenuThings'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
		thingSlide = 'pauseMenuThingName'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
		thingSlide = 'pauseMenuThingbg'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
		thingSlide = 'pauseMenuThingName'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
		thingSlide = 'pauseMenuThingCredit'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')
		thingSlide = 'pauseMenuThingSuckCounter'
		thingSlideY = getProperty(thingSlide..'.y')
		setProperty(thingSlide..'.y', thingSlideY - 1280)
		doTweenY(thingSlide, thingSlide, thingSlideY, 0.2, 'linear')--]]
		--[[slideIn('pauseMenuThingbg')
		slideIn('pauseMenuThing')
		slideIn('pauseMenuThings')
		slideIn('pauseMenuThingName')
		slideIn('pauseMenuThingCredit')
		slideIn('pauseMenuThingSuckCounter')--]]
	elseif pauseSelect == 1 and canPause == true then
		paused = false
		doTweenAlpha('blacker', 'blackshittakemushroom', 0, 0.2, 'linear')
		for i =0,3 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
		end
		setProperty('pauseMenuThingbg.visible', false)
		setProperty('playbackRate', 1)
		setProperty('pauseMenuThing.visible', false)
		setProperty('boyfriend.stunned', false)
		setProperty('pauseMenuThings.visible', false)
		setProperty('pauseMenuName.visible', false)
		setProperty('pauseMenuCredit.visible', false)
		setProperty('pauseMenuSuckCounter.visible', false)
	elseif pauseSelect == 2 and canPause == true then
		setDataFromSave('justSaveDataThings', 'deathCount', 0)
		exitSong()
	elseif pauseSelect == 3 and canPause == true then
		setDataFromSave('justSaveDataThings', 'deathCount', getDataFromSave('justSaveDataThings', 'deathCount') + 1)
		restartSong()
	end
	return Function_Stop
end