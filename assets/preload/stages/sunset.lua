function onCreate()
	-- background shit
	makeLuaSprite('sly', 'backgrounds/herb/sky', -650, -400);
	setLuaSpriteScrollFactor('sly', 0.9, 0.9);

		makeLuaSprite('mountains', 'backgrounds/herb/mountains', -650, -400);
		setLuaSpriteScrollFactor('mountains', 0.9, 0.9);
		scaleObject('mountains', 1.1, 1.1);
		
		makeLuaSprite('caja', 'backgrounds/herb/caja', -650, -400);
		setLuaSpriteScrollFactor('caja', 0.9, 0.9);
		scaleObject('caja', 1.1, 1.1);

		makeLuaSprite('cafesito', 'backgrounds/herb/cafesito', -680, -400);
		setLuaSpriteScrollFactor('cafesito', 0.9, 0.9);
		scaleObject('cafesito', 1.1, 1.1);

		makeLuaSprite('tree', 'backgrounds/herb/tree', -600, -430);
		setLuaSpriteScrollFactor('tree', 0.9, 0.9);
		scaleObject('tree', 1.1, 1.1);

		makeLuaSprite('sneed', 'backgrounds/herb/sneed', -650, -430);
		setLuaSpriteScrollFactor('sneed', 0.9, 0.9);
		scaleObject('sneed', 1.1, 1.1);

		makeLuaSprite('sun', 'backgrounds/herb/sun', -650, -430);
		setLuaSpriteScrollFactor('sun', 0.9, 0.9);
		scaleObject('sun', 1.1, 1.1);


	makeLuaSprite('bar', 'backgrounds/tranzit/cooler borders', 0, 0);
	setObjectCamera('bar', 'hud')

	addLuaSprite('sly', false);
	addLuaSprite('mountains', false);
	addLuaSprite('caja', false);
	addLuaSprite('tree', false);
	addLuaSprite('sneed', false);
	addLuaSprite('cafesito', false)
	addLuaSprite('sun', false);
	addLuaSprite('bar', false);
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

