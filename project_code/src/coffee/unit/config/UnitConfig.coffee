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
				id: 0
				animateType: "sprite" # scale
			scale:
				xy: Math.random() * .3 + .7
				x: 1
				y: 1
			position:
				x: 0
				y: 0
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