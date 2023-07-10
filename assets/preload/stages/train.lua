function onCreate()
	-- background shit
	makeLuaSprite('tren1', 'train/tren1', 0, 0);
	setScrollFactor('tren1', 1, 1);
	scaleObject('tren1', 1.1, 1.1);

	makeLuaSprite('tren2', 'train/tren2', 100, 0);
	setScrollFactor('tren2', 1, 1);
	scaleObject('tren2', 1.1, 1.1);
	        
	makeAnimatedLuaSprite('bg_mountain', 'train/bg_mountain', -10,0)
	setScrollFactor('bg_mountain', 1, 1);
	scaleObject('bg_mountain', 1.1, 1.1);


		addLuaSprite('bg_mountain', false);
		addAnimationByPrefix('bg_mountain', 'idle', 'bg_mountain idle', 24, true);
		addLuaSprite('tren2', false);
		addLuaSprite('tren1', false);


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end