class Movable
	constructor:(@view) ->
		@pX = @view.x
		@pY = @view.y
		@rotationSpeed = .03
		@followSpeed = .01
		@life = false
		@leader = new Leader(@view.x,@view.y)

		createjs.Ticker.addEventListener("tick", @loop);
		@birth()
	birth:() =>
		@life = true
	death:() =>
		@life = false
	loop:() =>
		if not @life then return
		@follow()
		@setRotation()

	follow:()=>
		@view.x += (@leader.location.x - @view.x) * @followSpeed;
		@view.y += (@leader.location.y - @view.y) * @followSpeed;
		
	setRotation:()=>
		
		diff_X = @pX - @view.x;
		diff_Y = @pY - @view.y;
		start = @view.rotation
		end = Math.atan2(diff_Y,diff_X)*(180/Math.PI);
		end %= 360
		diff_R = end - start;
		@view.rotation += diff_R * @rotationSpeed
		@pX = @view.x
		@pY = @view.y

window.Movable = Movable