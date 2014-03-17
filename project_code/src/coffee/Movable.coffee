class Movable
	constructor:(@view) ->
		@pX = @view.x
		@pY = @view.y
		@rotationSpeed = .2
		@followSpeed = .02
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
		diff_R = end - start;

		if(diff_R < -180)then diff_R += 360
		if(diff_R > 180)then diff_R -= 360


		@view.rotation += diff_R * @rotationSpeed

		if(@view.rotation > 180)then @view.rotation -= 360
		if(@view.rotation < -180)then @view.rotation += 360

		@pX = @view.x
		@pY = @view.y

window.Movable = Movable