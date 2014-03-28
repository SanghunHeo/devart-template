class Leader
	constructor:(@parent)->
		@startX = @parent.view.x + Math.random()-.5
		@startY = @parent.view.y + Math.random()-.5
		
		@delayDefault = 1000
		@location = new Point(@startX,@startY)
		@nextLocation = new Point(@startX,@startY);
		@delay = 100
		@try = 0
		# @interval()
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
		@delay = Math.random() * 3000 + 1500
		setTimeout(@interval, @delay)
		

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