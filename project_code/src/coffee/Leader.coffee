class Leader
	constructor:(@parent)->
		@startX = @parent.view.x
		@startY = @parent.view.y
		
		@delayDefault = 1000
		@location = new Point(@startX,@startY)
		@nextLocation = new Point(@startX,@startY);
		@startInterval()
		# @shape = new createjs.Shape()
		# @shape.graphics.beginFill("#ff0000").drawRect(-2, -2, 4, 4);
		# stage.addChild(@shape)
		
	interval:()=>
		@findSafeLocation()
		@location.x = @nextLocation.x
		@location.y = @nextLocation.y
		# @shape.x = @location.x
		# @shape.y = @location.y
		@startInterval()
		
	startInterval:()=>
		setTimeout(@interval, Math.random() * 3000 + 1500)

	findSafeLocation:()=>
		@nextLocation.x = @.parent.view.x + Math.random() * 200 - 100
		@nextLocation.y = @.parent.view.y + Math.random() * 200 - 100
		if(@isSafe(@nextLocation.x,@nextLocation.y) || @try > 10)
			@try = 0
			@nextLocation
		else 
			@try++
			@findSafeLocation()
	
	isSafe:(x,y)=>
		result = window.depth.getDepthLevelToDOA(x,y,@parent.config)
		if(result == "between")
			return true
		else 
			return false
		

window.Leader = Leader