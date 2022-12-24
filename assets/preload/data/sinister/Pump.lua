idle = true

function onCreate()

	makeAnimatedLuaSprite('Pump', 'characters/pump', getProperty('dad.x', getProperty('dad.y')))

	addAnimationByPrefix('Pump', 'idle', 'idle', 24, true);

	addAnimationByPrefix('Pump', 'singLEFT', 'pump_left', 24, false);
	addAnimationByPrefix('Pump', 'singDOWN', 'pump_down', 24, false);
	addAnimationByPrefix('Pump', 'singUP', 'pump_up', 24, false);
	addAnimationByPrefix('Pump', 'singRIGHT', 'pump_right', 24, false);
	addAnimationByPrefix('Pump', 'stare', 'stare switch', 24, false);
    setProperty('Pump.flipX', false);
    setObjectOrder('Pump', 16);
	objectPlayAnimation('Pump', 'idle', true);
	addLuaSprite('Pump', false);
end