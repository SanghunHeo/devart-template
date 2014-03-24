# @depthInfo = [
# 			{
# 				name:"alpine"
# 				height:.1
# 			}
# 			{
# 				name:"hill"
# 				height:.2
# 			}
# 			{
# 				name:"field"
# 				height:.4
# 			}
# 			{
# 				name:"beach"
# 				height:.5
# 			}
# 			{
# 				name:"coast"
# 				height:.6
# 			}
# 			{
# 				name:"ocean"
# 				height:.8
# 			}
# 			{
# 				name:"deepSea"
# 				height:1.0
# 			}
# 		]

species = [
    "sea-creature",
    "beach-creature",
    "land-creature",
]

class DefaultUnitConfig
	constructor:()->
		@config = 
			name: "nimo"
			species: "sea-creature"
			view:
				name: "fish01"
				animateType: "sprite" # scale sprite
			scale:
				xy: .4
				x: 1
				y: 1
			position:
				x: 0
				y: 0
			reg:
				x:2/3
				y:1/2
			rotation: 0
			moveType: "movable" #fixed
			moveSpeed: .1
			rotationType: true
			rotateSpeed: .1
			life:
				total: 1
				birthTime: 0
			habitat:
				restricted: true
				from: "coast"
				to: "deepSea"
		return @config

window.DefaultUnitConfig = DefaultUnitConfig


window.creatureConfig = [
	{
		name:"fish01"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
		data:null
	}
	{
		name:"fish02"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
		data:null
	}
	{
		name:"fish03"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
		data:null
	}
	{
		name:"fish04"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
		data:null
	}
	{
		name:"fish05"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
		data:null
	}
	{
		name:"coral01"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.moveType = "fixed"
			@data.view.animateType = "scale"
		data:null
	}
	{
		name:"coral02"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.moveType = "fixed"
			@data.view.animateType = "scale"
		data:null
	}
	{
		name:"shark"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "ocean"
			@data.habitat.to = "deepSea"
				
		data:null
	}
	{
		name:"Whale"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "ocean"
			@data.habitat.to = "deepSea"
				
		data:null
	}
	{
		name:"jellyFish"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "coast"
			@data.habitat.to = "deepSea"
			@data.scale.xy = .2
				
		data:null
	}
	{
		name:"crab"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "field"
			@data.habitat.to = "beach"
				
		data:null
	}
	{
		name:"Shellfish02"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "field"
			@data.habitat.to = "beach"
			@data.moveType = "fixed"
				
		data:null
	}
	{
		name:"Satrfish01"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "field"
			@data.habitat.to = "beach"
			@data.moveType = "fixed"
				
		data:null
	}
	{
		name:"Starfish02"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "field"
			@data.habitat.to = "beach"
			@data.moveType = "fixed"
				
		data:null
	}
	{
		name:"Starfish03"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "field"
			@data.habitat.to = "beach"
			@data.moveType = "fixed"
				
		data:null
	}
	{
		name:"Tree01"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "alpine"
			@data.habitat.to = "field"
			@data.moveType = "fixed"
			@data.view.animateType = "scale"
				
		data:null
	}
	{
		name:"Tree02"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "alpine"
			@data.habitat.to = "field"
			@data.moveType = "fixed"
			@data.view.animateType = "scale"
				
		data:null
	}
	{
		name:"Tree03"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "alpine"
			@data.habitat.to = "field"
			@data.moveType = "fixed"
			@data.view.animateType = "scale"
				
		data:null
	}
	{
		name:"Tree04"
		constructor:()->
			@data = new DefaultUnitConfig()
			@data.view.name = @.name
			@data.habitat.from = "alpine"
			@data.habitat.to = "field"
			@data.moveType = "fixed"
			@data.view.animateType = "scale"
				
		data:null
	}

]


for item,i in window.creatureConfig
	item.constructor()
console.log "start"






