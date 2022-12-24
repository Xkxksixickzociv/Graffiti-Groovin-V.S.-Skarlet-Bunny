idle = true

function onCreate()

	makeAnimatedLuaSprite('Nikku', 'characters/nikku', getProperty('bf.x', getProperty('bf.y')))

	addAnimationByPrefix('Nikku', 'idle', 'idle', 24, true);

	addAnimationByPrefix('Nikku', 'singLEFT', 'left', 24, false);
	addAnimationByPrefix('Nikku', 'singDOWN', 'down', 24, false);
	addAnimationByPrefix('Nikku', 'singUP', 'up', 24, false);
	addAnimationByPrefix('Nikku', 'singRIGHT', 'right', 24, false);
    setProperty('Nikku.flipX', false);
    setObjectOrder('Nikku', 16);
	objectPlayAnimation('Nikku', 'idle', true);
	addLuaSprite('Nikku', false);
end