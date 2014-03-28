class SpriteFactory
	instance = null
	
	class Factory
		constructor:()->
			@spriteList = [
				{
					name:"fish01",
					func:fish01_instance_1
				},
				{
					name:"fish02",
					func:fish02_instance_1
				},
				{
					name:"fish03",
					func:fish03_instance_1
				},
				{
					name:"fish04",
					func:fish04_instance_1
				},
				{
					name:"fish05",
					func:fish05_instance_1
				},
				{
					name:"coral01",
					func:coral01_instance_1
				},
				{
					name:"coral02",
					func:coral02_instance_1
				},
				{
					name:"crab",
					func:crab_instance_1
				},
				{
					name:"jellyFish",
					func:jellyFish_instance_1
				},
				{
					name:"shark",
					func:shark_instance_1
				},
				{
					name:"Shellfish02",
					func:Shellfish02_instance_1
				},
				{
					name:"Satrfish01",
					func:Satrfish01_instance_1
				},
				{
					name:"Starfish02",
					func:Starfish02_instance_1
				},
				{
					name:"Starfish03",
					func:Starfish03_instance_1
				},
				{
					name:"Tree01",
					func:Tree01_instance_1
				},
				{
					name:"Tree02",
					func:Tree02_instance_1
				},
				{
					name:"Tree03",
					func:Tree03_instance_1
				},
				{
					name:"Tree04",
					func:Tree04_instance_1
				},
				{
					name:"turtle",
					func:turtle_instance_1
				},
				{
					name:"Whale",
					func:Whale_instance_1
				}
			]
		makeSprite:(name) =>
			sprite = null
			for item,i in @spriteList
				if item.name is name
					sprite = new item.func()
					break
			sprite
	@get:()->
		instance ?= new Factory

window.SpriteFactory = SpriteFactory