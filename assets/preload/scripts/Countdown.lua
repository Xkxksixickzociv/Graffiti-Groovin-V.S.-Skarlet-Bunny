function onCreate()
    makeAnimatedLuaSprite('Count', 'countdown', 520, 200, true)
    addAnimationByPrefix('Count', 'three', 'three', 24, true)
    addAnimationByPrefix('Count', 'two', 'two', 24, true)
    addAnimationByPrefix('Count', 'one', 'one', 24, true)
    addAnimationByPrefix('Count', 'go', 'go', 24, true)
    setObjectCamera('Count', 'other')
    addLuaSprite('Count', true)
    
end

function onCountdownTick(counter)
    
    if counter == 0 then
        objectPlayAnimation('Count', 'three', true)
    end
    if counter == 1 then
        objectPlayAnimation('Count', 'two', true)
        setProperty('Count.x', 480);
        setProperty('Count.y', 220);
    end
    if counter == 2 then
        objectPlayAnimation('Count', 'one', true)
        setProperty('Count.x', 540);
        setProperty('Count.y', 200);
    end
    if counter == 3 then
        objectPlayAnimation('Count', 'go', true)
        setProperty('Count.x', 350);
        setProperty('Count.y', 90);
    end
end

function onBeatHit()
    
    if curBeat == 1 or curBeat > 2 then
        setProperty('Count.x',-9999)
        -- idk why but using setProperty('Count.visible', false) wasn't working :sob:
    end
end