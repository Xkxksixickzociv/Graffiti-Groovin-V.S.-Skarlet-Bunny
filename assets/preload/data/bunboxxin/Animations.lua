function goodNoteHit(id, noteData, noteType, isSustainNote)
    
    if isSustainNote == false then
		if noteData == 0 then
		
		objectPlayAnimation('bag','hit',true)
		end
		
		if noteData == 1 then
		
		objectPlayAnimation('bag','hit',true)
		end
		
		if noteData == 2 then
		
		objectPlayAnimation('bag','hit',true)
		end
		
		if noteData == 3 then
		
		objectPlayAnimation('bag','hit',true)
		end
	end
end