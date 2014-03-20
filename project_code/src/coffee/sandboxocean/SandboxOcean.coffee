class SandboxOcean
	constructor:()->
		@creatures = []
		@stageSetup()
		@inialize()
		
	stageSetup:()=>
		@stage = new createjs.Stage("stage")
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
		@stage.update();

window.SandboxOcean = SandboxOcean