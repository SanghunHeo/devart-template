class SpriteFactory
	instance = null
	
	class Factory
		@spriteList = []
		makeSprite:(id) ->
			new @spriteList[id] if @spriteList[id]?
	@get:()->
		instance ?= new Factory

window.SpriteFactory = SpriteFactory