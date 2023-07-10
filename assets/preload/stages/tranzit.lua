function onCreate()
	-- background shit
	math.randomseed(os.time())

	makeLuaSprite('sky', 'backgrounds/tranzit/fondo', -500, -500);
	setLuaSpriteScrollFactor('sky', 0.9, 0.9);

		makeLuaSprite('nube2', 'backgrounds/tranzit/nubes2', -650, -500);
		setLuaSpriteScrollFactor('nube2', 0.9, 0.9);
		scaleObject('nube2', 1.1, 1.1);
		
		makeLuaSprite('nube', 'backgrounds/tranzit/nubes', -650, -400);
		setLuaSpriteScrollFactor('nube', 0.9, 0.9);
		scaleObject('nube', 1.1, 1.1);

		makeLuaSprite('arenita', 'backgrounds/tranzit/sand', -650, -400);
		setLuaSpriteScrollFactor('arenita', 0.9, 0.9);
		scaleObject('arenita', 1.1, 1.1);

		makeLuaSprite('city2', 'backgrounds/tranzit/city2', -650, -430);
		setLuaSpriteScrollFactor('city2', 0.9, 0.9);
		scaleObject('city2', 1.1, 1.1);

		makeLuaSprite('city', 'backgrounds/tranzit/city', -650, -500);
		setLuaSpriteScrollFactor('city', 0.9, 0.9);
		scaleObject('city', 1.1, 1.1);

		makeLuaSprite('escalerasenperu', 'backgrounds/tranzit/stairs', -650, -500);
		setLuaSpriteScrollFactor('escalerasenperu', 0.9, 0.9);
		scaleObject('escalerasenperu', 1.1, 1.1);

		makeLuaSprite('palitos', 'backgrounds/tranzit/palitos', -650, -500);
		setLuaSpriteScrollFactor('palitos', 0.9, 0.9);
		scaleObject('palitos', 1.1, 1.1);

		makeLuaSprite('palotes', 'backgrounds/tranzit/hj', -650, -500);
		setLuaSpriteScrollFactor('palotes', 0.9, 0.9);
		scaleObject('palotes', 1.1, 1.1);

		makeLuaSprite('floor', 'backgrounds/tranzit/asg', -650, -500);
		setLuaSpriteScrollFactor('floor', 0.9, 0.9);
		scaleObject('floor', 1.1, 1.1);

		makeLuaSprite('juggernog', 'backgrounds/tranzit/soda', -650, -500);
		setLuaSpriteScrollFactor('juggernog', 0.9, 0.9);
		scaleObject('juggernog', 1.1, 1.1);

	makeLuaSprite('vehicle1', 'backgrounds/tranzit/vehicles/carro-pisa', -6500, 100);
	scaleObject('vehicle1', 0.5, 0.5);
	makeLuaSprite('vehicle2', 'backgrounds/tranzit/vehicles/motomoto', -6500, 100);
	scaleObject('vehicle2', 0.5, 0.5);
	makeLuaSprite('vehicle3', 'backgrounds/tranzit/vehicles/tony_hawk_pro_skater', -6500, 100);
	scaleObject('vehicle3', 0.5, 0.5);
	makeLuaSprite('vehicle4', 'backgrounds/tranzit/vehicles/truck', -6500, 100);
	scaleObject('vehicle4', 0.5, 0.5);

	makeLuaSprite('bar', 'backgrounds/tranzit/cooler borders', 0, 0);
	setObjectCamera('bar', 'hud')

	addLuaSprite('sky', false);
	addLuaSprite('nube2', false);
	addLuaSprite('nube', false);
	addLuaSprite('arenita', false);
	addLuaSprite('city2', false);
	addLuaSprite('city', false);
	addLuaSprite('escalerasenperu', false);
	addLuaSprite('palitos', false);
	addLuaSprite('palotes', false);
	addLuaSprite('floor', false);
	addLuaSprite('juggernog', false);
	addLuaSprite('vehicle1', true);
	addLuaSprite('vehicle2', true);
	addLuaSprite('vehicle3', true);
	addLuaSprite('vehicle4', true);
	addLuaSprite('bar', false);
	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

local canDo = 2

function onBeatHit()
	if curBeat % 4 == 0 then
		if canDo <= 0 then
			if math.random(1, 10) == 4 then
				canDo = 4
				randomVehicle = math.random(1, 4)
				setProperty('vehicle'..randomVehicle..'.x', -1300)
				doTweenX('vehicular manslaughter jk', 'vehicle'..randomVehicle, 2500, 0.1, 'linear')
			end
		else
			canDo = canDo - 1
		end
	--debugPrint(canDo)
	end
end

