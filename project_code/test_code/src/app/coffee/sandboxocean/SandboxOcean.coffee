class SandboxOcean
	constructor:()->
		@creatures = []
		@stageSetup()
		@inialize()
		console.clear()
		
	stageSetup:()=>
		@stage = new createjs.Stage("stage")
		# @shadowContext = $("#shadow")[0].getContext('2d');
		window.stage = @stage
		createjs.Ticker.setFPS(30)
		createjs.Ticker.addEventListener("tick", @update)

		$("#stage").click (e) =>
			@creatureMaker?.make e.offsetX,e.offsetY

	inialize:()=>
		@initDepth()
		@make()

	make:()=>
		@creatureMaker = new creatureMaker

	initDepth:()=>
		window.depthMap = new Image()
		window.depth = new Depth(depthMap)

	update:()=>
		@stage.update()
		# @shadowContext.clearRect(0,0,1024,768)
		# @shadowContext.drawImage($("#stage")[0],10,10)

window.SandboxOcean = SandboxOcean