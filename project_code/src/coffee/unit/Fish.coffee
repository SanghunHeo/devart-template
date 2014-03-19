class Fish
	constructor:(@config)->
		# console.log(@config.view.constructor)
		@spriteFactory = SpriteFactory.get()
		@view = @spriteFactory.makeSprite(@config.view.id)
		bound = @view.getBounds()
		@view.regX = bound.width*2/3
		@view.regY = bound.height/2
		@view.setTransform(0, 0, -@config.scale.xy, @config.scale.xy);
		@view.x = @config.position.x
		@view.y = @config.position.y
		@movable = new Movable(@)
		@locationChecker = new LocationChecker(@)
		
		$(@locationChecker).on("over",@death)
		$(@locationChecker).on("under",@death)

	birth:()=>
		@life = 1
		@movable.birth()
		@view.alpha = 0
		stage.addChild(@view)
		TweenMax.to(@view,1,{
			alpha:1
			onUpdate:(e)=>
			onComplete:(e)=>
			})
		this

	death:()=>
		@life = 0
		@movable.death();
		TweenMax.to(@view,1,{
			alpha:0
			onComplete:()=>
				stage.removeChild(@view)		
			})
		this

window.Fish = Fish