class Creature
	constructor:(@name,x,y)->
		@config = @selectItemFromName(@name,creatureConfig).data
		@config.position.x = x
		@config.position.y = y
		@initView()
		@initMove()
		@initLocationChecker()

	initView:()=>
		@view = SpriteFactory.get().makeSprite(@config.view.name)
		if @config.shadow then @view.shadow = new createjs.Shadow("#000000", 10, 10, 0)
		if @config.randomRotation then @view.rotation = parseInt(Math.random() * 360)
		bound = @view.getBounds()
		console.log @view.shadow
		@view.regX = bound.width*@config.reg.x
		@view.regY = bound.height*@config.reg.y
		@view.setTransform(0, 0, -@config.scale.xy, @config.scale.xy);
		@view.x = @config.position.x
		@view.y = @config.position.y

	initMove:()=>
		if @config.moveType is "movable"
			@movable = new Movable(@)

	initLocationChecker:()=>
		@locationChecker = new LocationChecker(@)
		$(@locationChecker).on("over",@death)
		$(@locationChecker).on("under",@death)

	birth:()=>
		@life = 1
		@movable?.birth()
		stage.addChild(@view)
		@birthAnimation()
		this
	birthAnimation:()=>
		switch @config.view.animateType
			when "sprite"
				@view.alpha = 0
				TweenMax.to(@view,1,{alpha:1})
			when "scale"
				@view.scaleX = 0
				@view.scaleY = 0
				TweenMax.to(@view,10,{scaleX:@config.scale.xy,scaleY:@config.scale.xy})
	death:()=>
		@life = 0
		@movable?.death();
		TweenMax.to(@view,1,{
			alpha:0
			onComplete:()=>
				stage.removeChild(@view)		
			})
		this
	selectItemFromName:(name,arr)=>
		for item,i in arr
			if item.name is name
				return item
window.Creature = Creature