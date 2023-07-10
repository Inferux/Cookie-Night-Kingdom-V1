function onCreate()
	-- background shit
	makeLuaSprite('sly', 'backgrounds/pool/sly', -350, -300);
	setLuaSpriteScrollFactor('sly', 0.9, 0.9);

		makeLuaSprite('back', 'backgrounds/pool/back', -650, -400);
		setLuaSpriteScrollFactor('back', 0.9, 0.9);
		scaleObject('back', 1.1, 1.1);
		
		makeLuaSprite('pool-back', 'backgrounds/pool/pool-back', -650, -400);
		setLuaSpriteScrollFactor('pool-back', 0.9, 0.9);
		scaleObject('pool-back', 1.1, 1.1);

		makeLuaSprite('pool', 'backgrounds/pool/pool', -570, -400);
		setLuaSpriteScrollFactor('pool', 0.9, 0.9);
		scaleObject('pool', 1.1, 1.1);

		makeLuaSprite('grass', 'backgrounds/pool/grass', -600, -430);
		setLuaSpriteScrollFactor('grass', 0.9, 0.9);
		scaleObject('grass', 1.1, 1.1);

		makeLuaSprite('fence', 'backgrounds/pool/fence', -650, -430);
		setLuaSpriteScrollFactor('fence', 0.9, 0.9);
		scaleObject('fence', 1.1, 1.1);

		makeLuaSprite('arbusto', 'backgrounds/pool/arbusto', -650, -430);
		setLuaSpriteScrollFactor('arbustou', 0.9, 0.9);
		scaleObject('arbusto', 1.1, 1.1);

		makeLuaSprite('rules', 'backgrounds/pool/rules', -650, -430);
		setLuaSpriteScrollFactor('rules', 0.9, 0.9);
		scaleObject('rules', 1.1, 1.1);


	makeLuaSprite('bar', 'backgrounds/pool/cooler borders', 0, 0);
	setObjectCamera('bar', 'hud')

	addLuaSprite('sly', false);
	addLuaSprite('back', false);
	addLuaSprite('pool-back', false);
	addLuaSprite('pool', false);
	addLuaSprite('grass', false);
	addLuaSprite('fence', false);
	addLuaSprite('arbusto', false);
	addLuaSprite('rules', false);
	addLuaSprite('bar', false);
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

