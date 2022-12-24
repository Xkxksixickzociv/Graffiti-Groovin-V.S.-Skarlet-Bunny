function onCreate()
    
		makeLuaSprite('bartop','',0.5,-20)
		makeGraphic('bartop',1280,130,'000000')
		addLuaSprite('bartop',true)

		makeLuaSprite('barbot','',0.5,630)
		makeGraphic('barbot',1280,130,'000000')
		addLuaSprite('barbot',true)
		
		setScrollFactor('bartop',0,0)
		setScrollFactor('barbot',0,0)
		
		setObjectCamera('bartop','hud')
		setObjectCamera('barbot','hud')
		
end