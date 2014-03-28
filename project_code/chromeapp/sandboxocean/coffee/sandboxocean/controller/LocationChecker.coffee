class LocationChecker
	constructor:(@parent)->
		@view = @parent.view
		@config = @parent.config
		@loop()
		@depth = window.depth
	loop:() =>
		requestAnimFrame(@.loop)
		@locationCheck()

	locationCheck:()=>
		if(@parent.life == 0)
			return
		x = parseInt @view.x
		y = parseInt @view.y
		# console.log(x + " " + y)
		if(x && y )
			result = window.depth.getDepthLevelToDOA(x,y,@config)
			if(result == "over" || result == "under")
				$(this).trigger(result)

window.LocationChecker = LocationChecker