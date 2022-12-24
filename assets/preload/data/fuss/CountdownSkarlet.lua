function onCreate()
    
    setProperty('dad.visible', false);
    makeAnimatedLuaSprite('SkarletCount', 'characters/countdown', getProperty('dad.x'), getProperty('dad.y'));
    addAnimationByPrefix('SkarletCount', 'three', 'three');
    addAnimationByPrefix('SkarletCount', 'two', 'two');
    addAnimationByPrefix('SkarletCount', 'one', 'one');
    addAnimationByPrefix('SkarletCount', 'go', 'go');
    setObjectOrder('SkarletCount',getObjectOrder('boppers') -1)
end

function onCountdownTick(counter)
    
    if counter == 0 then
        objectPlayAnimation('SkarletCount', 'three', true)
    end
    if counter == 1 then
        objectPlayAnimation('SkarletCount', 'two', true)
    end
    if counter == 2 then
        objectPlayAnimation('SkarletCount', 'one', true)
    end
    if counter == 3 then
        objectPlayAnimation('SkarletCount', 'go', true)
    end
end

function onBeatHit()
    
    if curBeat == 1 then
        setProperty('SkarletCount.x',-9999)
        setProperty('dad.visible', true)
    end
end