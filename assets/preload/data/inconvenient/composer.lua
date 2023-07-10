local composer = 'CHANGE NAME'

--YOU ONLY NEED TO CHANGE COMPOSER

--EVERYTHING WILL BE HANDLED AUTOMATICALLY

--SO DON'T WORRY ABOUT IT!

--IGNORE EVERYTHING BELOW!

------------------------------------------------------------------------------------------------------

function onSongStart()
	canPause = true
end

function onCreatePost()
	makeText('pauseMenuCredit', 'By: '..composer, 1000, screenWidth / 2 - 500, 150, 30, '5b3500', 2, 'ffffff', 'CookieRun Black.ttf', false, 'center', 'other', false)
end

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

function onPause()
	if paused == false and canPause == true then
		setProperty('pauseMenuCredit.visible', true)
		paused = true
	else
		paused = false
		setProperty('pauseMenuCredit.visible', false)
	end
end