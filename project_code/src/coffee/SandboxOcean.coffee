class SandboxOcean
	constructor:()->
		@stageSetup()
		@inialize()
	stageSetup:()=>
		@stage = new createjs.Stage("stage")
		window.stage = @stage
		createjs.Ticker.setFPS(30)
		createjs.Ticker.addEventListener("tick", @update)

	inialize:()=>
		window.depthMap = new Image()
		window.depth = new Depth(depthMap)

		@factory = SpriteFactory.get()
		@factory.spriteList = [
			fish01_instance_1
			fish02_instance_1
			fish03_instance_1
			fish04_instance_1
			fish05_instance_1
			coral01_instance_1
			coral02_instance_1
			crab_instance_1
			jellyFish_instance_1
			shark_instance_1
			Shellfish02_instance_1
			Satrfish01_instance_1
			Starfish02_instance_1
			Starfish03_instance_1
			Tree01_instance_1
			Tree02_instance_1
			Tree03_instance_1
			Tree04_instance_1
			turtle_instance_1
			Whale_instance_1
		]

		config = new DefaultUnitConfig()
		config.position.x = 300;
		config.position.y = 300;

		fish = new Fish(config)
		fish.birth()
		# fishs.push(fish)

	update:()=>
		@stage.update();

window.SandboxOcean = SandboxOcean