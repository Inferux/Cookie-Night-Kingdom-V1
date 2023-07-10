function onCreate()
	-- background shit
	math.randomseed(os.time())

	makeLuaSprite('back', 'backgrounds/tutorial/back', -2000, -500);
	setLuaSpriteScrollFactor('back', 0.9, 0.9);

		makeLuaSprite('floor', 'backgrounds/tutorial/floor', -2000, 270);
		setLuaSpriteScrollFactor('floor', 0.9, 0.9);
		scaleObject('floor', 1.1, 1.1);
		
		makeLuaSprite('arcades', 'backgrounds/tutorial/arcades', -2100, -100);
		setLuaSpriteScrollFactor('arcades', 0.9, 0.9);
		scaleObject('arcades', 1.1, 1.1);

		makeLuaSprite('dance_machine', 'backgrounds/tutorial/dance_machine', -1485, -440);
		setLuaSpriteScrollFactor('dance_machine', 0.9, 0.9);
		scaleObject('dance_machine', 1.1, 1.1);

		makeLuaSprite('vs_kappy', 'backgrounds/tutorial/vs_kappy', -1650, 0);
		setLuaSpriteScrollFactor('vs_kappy', 0.9, 0.9);
		scaleObject('vs_kappy', 1.1, 1.1);

		makeLuaSprite('bar', 'backgrounds/tranzit/cooler borders', 0, 0);
		setObjectCamera('bar', 'hud')

	addLuaSprite('back', false);
	addLuaSprite('arcades', false);
	addLuaSprite('floor', false);
	addLuaSprite('dance_machine', false);
	addLuaSprite('vs_kappy', false);
	addLuaSprite('cooler borders', false);
	addLuaSprite('bar', false);
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

