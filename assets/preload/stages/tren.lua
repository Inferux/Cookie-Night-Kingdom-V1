function onCreate()
	makeLuaSprite('Sky BG', 'backgrounds/train/cielo', -1000, -1000);
	setScrollFactor('Sky BG', 0, 0);
	scaleObject('Sky BG', 2, 4);
	addLuaSprite('Sky BG', false);

	makeLuaSprite('Sun', 'backgrounds/train/sun', 0, -50);
	setScrollFactor('Sun', 0.4, 0.4);
	addLuaSprite('Sun', false);
	
	makeLuaSprite('Clouds', 'backgrounds/train/nubes', -5000, -200);
	setScrollFactor('Clouds', 0.7, 0.3);
	scaleObject('Clouds', 2, 2);
	addLuaSprite('Clouds', false);
	doTweenX('CloudMove', 'Clouds', -2420, 3.5, 'linear')
	cloudTweenTime = 3.5

	makeLuaSprite('Mount1', 'backgrounds/train/montañas', -100, 20);
	setScrollFactor('Mount1', 0.9, 0.5)
	addLuaSprite('Mount1', false);
	makeLuaSprite('Mount2', 'backgrounds/train/montañas', -100 - getProperty('Mount1.width'), 20);
	setScrollFactor('Mount2', 0.9, 0.5)
	addLuaSprite('Mount2', false);
	makeLuaSprite('Mount3', 'backgrounds/train/montañas', -100 - getProperty('Mount1.width') * 2, 20);
	setScrollFactor('Mount3', 0.9, 0.5)
	addLuaSprite('Mount3', false);
	doTweenX('MountMove', 'Mount1', -100 + getProperty('Mount1.width'), 1.5, 'linear')
	doTweenX('MountMove2', 'Mount2', -100, 1.5, 'linear')
	doTweenX('MountMove3', 'Mount3', -100 - getProperty('Mount1.width'), 1.5, 'linear')
	mountTweenTime = 1.5

	makeLuaSprite('BackTrain', 'backgrounds/train/tren2', 900, 10);
	setScrollFactor('BackTrain', 1, 0.9)
	addLuaSprite('BackTrain', false);

	makeLuaSprite('Train', 'backgrounds/train/tren1', -420, -550);
	setScrollFactor('Train', 0.9, 0.9)
	scaleObject('Train', 2, 2);
	addLuaSprite('Train', false);

	runTimer('timeDecrease', 0.01, 0)
end

function onCreatePost()
	setScrollFactor('dad', 1, 0.9)
end

function onTweenCompleted(tag)
	if tag == 'CloudMove' then
		setProperty('Clouds.x', -5000)
		doTweenX('CloudMove', 'Clouds', -2420, 3.5, 'linear')
		cloudTweenTime = 3.5
	end
	if tag == 'MountMove' then
		setProperty('Mount1.x', -100)
		setProperty('Mount2.x', -100 - getProperty('Mount1.width'))
		setProperty('Mount3.x', -100 - getProperty('Mount1.width') * 2)
		doTweenX('MountMove', 'Mount1', -100 + getProperty('Mount1.width'), 1.5, 'linear')
		doTweenX('MountMove2', 'Mount2', -100, 1.5, 'linear')
		doTweenX('MountMove3', 'Mount3', -100 - getProperty('Mount1.width'), 1.5, 'linear')
		mountTweenTime = 1.5
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timeDecrease' then
		cloudTweenTime = cloudTweenTime - 0.01
		mountTweenTime = mountTweenTime - 0.01
	end
end

function onPause()
	cancelTween('CloudMove')
	cancelTween('MountMove')
	cancelTween('MountMove2')
	cancelTween('MountMove3')
	cancelTimer('timeDecrease')
end

function onResume()
	runTimer('timeDecrease', 0.01, 0)
	doTweenX('CloudMove', 'Clouds', -2420, cloudTweenTime, 'linear')
	doTweenX('MountMove', 'Mount1', -100 + getProperty('Mount1.width'), mountTweenTime, 'linear')
	doTweenX('MountMove2', 'Mount2', -100, mountTweenTime, 'linear')
	doTweenX('MountMove3', 'Mount3', -100 - getProperty('Mount1.width'), mountTweenTime, 'linear')
end

function onEvent(name, value1, value2)
	if name == 'black' then
		if value1 == 'On' or value1 == 'on' or value1 == 'ON' then
			doTweenColor('MountBlack', 'Mount1', 'aaaaaa', '0.5', 'linear')
			doTweenColor('Mount2Black', 'Mount2', 'aaaaaa', '0.5', 'linear')
			doTweenColor('Mount3Black', 'Mount3', 'aaaaaa', '0.5', 'linear')
			doTweenColor('BFBlack', 'boyfriend', '000000', '0.5', 'linear')
			doTweenColor('GFBlack', 'gf', '000000', '0.5', 'linear')
			doTweenColor('OpBlack', 'dad', '000000', '0.5', 'linear')
			doTweenColor('Train1Black', 'Train', '000000', '0.5', 'linear')
			doTweenColor('Train2Black', 'BackTrain', '000000', '0.5', 'linear')
			doTweenColor('SkyBlack', 'Sky BG', 'aaaaaa', '0.5', 'linear')
		else
			doTweenColor('MountBlack', 'Mount1', 'ffffff', '0.5', 'linear')
			doTweenColor('Mount2Black', 'Mount2', 'ffffff', '0.5', 'linear')
			doTweenColor('Mount3Black', 'Mount3', 'ffffff', '0.5', 'linear')
			doTweenColor('BFBlack', 'boyfriend', 'ffffff', '0.5', 'linear')
			doTweenColor('GFBlack', 'gf', 'ffffff', '0.5', 'linear')
			doTweenColor('OpBlack', 'dad', 'ffffff', '0.5', 'linear')
			doTweenColor('Train1Black', 'Train', 'ffffff', '0.5', 'linear')
			doTweenColor('Train2Black', 'BackTrain', 'ffffff', '0.5', 'linear')
			doTweenColor('SkyBlack', 'Sky BG', 'ffffff', '0.5', 'linear')
		end
	end
end