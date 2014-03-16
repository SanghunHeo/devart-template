class Leader
	constructor:(@startX,@startY,@canvas)->
		@delayDefault = 1000
		@location = new Point(@startX,@startY)
		@nextLocation = new Point(@startX,@startY);
		@startInterval()
		@shape = new createjs.Shape()
		@shape.graphics.beginFill("#ff0000").drawRect(-2, -2, 4, 4);
		stage.addChild(@shape)
		# var shape = new createjs.Shape();
 	# 	shape.graphics.beginFill("#ff0000").drawRect(0, 0, 100, 100);

	interval:()=>
		@findSafeLocation()
		@location.x = @nextLocation.x
		@location.y = @nextLocation.y
		@shape.x = @location.x
		@shape.y = @location.y
		@startInterval()
		
	startInterval:()=>
		setTimeout(@interval, Math.random() * 3000 + 3500)

	findSafeLocation:()=>
		if(@isSafe())
			@nextLocation.x = Math.random() * stage.canvas.width;
			@nextLocation.y = Math.random() * stage.canvas.height;
		else 
			@findSafeLocation()
	
	isSafe:()=>
		if Math.random() > .5 then return true
		else return false

window.Leader = Leader