idle = true

local Anims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if noteType == "No Animation" then
		idle = false
		objectPlayAnimation('Pump', Anims[direction + 1], false);

	if direction == 0 then
			setProperty('Pump.x', 280);
		
		setProperty('Pump.y', 630);


	elseif direction == 1 then
			setProperty('Pump.x', 299);
		
		setProperty('Pump.y', 649);

	elseif direction == 2 then
			setProperty('Pump.x', 280);
		
		setProperty('Pump.y', 610);


	elseif direction == 3 then
			setProperty('Pump.x', 273);
		
		setProperty('Pump.y', 616);

		

	if isSustainNote then
		objectPlayAnimation('Pump', Anims[direction + 1], true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
        if noteType == "No Animation" then

		objectPlayAnimation('Nikku', Anims[direction + 1], false);

	if direction == 0 then
			setProperty('Nikku.x', 280);
		
		setProperty('Nikku.y', 630);


	elseif direction == 1 then
			setProperty('Nikku.x', 299);
		
		setProperty('Nikku.y', 649);

	elseif direction == 2 then
			setProperty('Nikku.x', 280);
		
		setProperty('Nikku.y', 610);


	elseif direction == 3 then
			setProperty('Nikku.x', 273);
		
		setProperty('Nikku.y', 616);

		

	if isSustainNote then
		objectPlayAnimation('Nikku', Anims[direction + 1], true);
			end
		end
	end
end

function onBeatHit()

	-- triggered 4 times per section

	if curBeat % 1 == 0  and idle then
		objectPlayAnimation('Nikku', 'idle');
		objectPlayAnimation('Pump', 'idle');

		setProperty('Nikku.x', getProperty('bf.x'));
		setProperty('Nikku.y', getProperty('bf.y'));
		setProperty('Pump.x', getProperty('dad.x') +100);
		setProperty('Pump.y', getProperty('dad.y'));
	end
	CerbIdle = true
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 4 == 0 then
	if CerbIdle == true then
		objectPlayAnimation('Nikku', 'idle');
		setProperty('Nikku.x', getProperty('bf.x'));
		setProperty('Nikku.y', getProperty('bf.y'));
		objectPlayAnimation('Pump', 'idle');
		setProperty('Pump.x', getProperty('dad.x') +100);
		setProperty('Pump.y', getProperty('dad.y'));
		end
	end
end
