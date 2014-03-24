class Depth
	constructor:(@img) ->
		@depthInfo = [
			{
				name:"alpine"
				height:.1
			}
			{
				name:"hill"
				height:.2
			}
			{
				name:"field"
				height:.4
			}
			{
				name:"beach"
				height:.5
			}
			{
				name:"coast"
				height:.6
			}
			{
				name:"ocean"
				height:.8
			}
			{
				name:"deepSea"
				height:1.0
			}
		]

		if not(@img.naturalWidth)
			$(@img).on "load",()=>
				@setCanvas()
				@animloop()
		else
			@setCanvas()
			@animloop()

	setCanvas:()=>
		@canvas = document.createElement('canvas')
		@canvas.id = 'canvasId';
		# document.body.appendChild(@canvas)
		@$img = $(@img)
		@canvas.width = @img.width
		@canvas.height = @img.height
		@ctx = @canvas.getContext('2d')
		
	animloop:() =>
		requestAnimFrame(@.animloop)
		@render()

	render:()=>
		if @ctx?
			@ctx.drawImage(@img, 0, 0, @img.width, @img.height)

	getDepthLevel:(x,y)=>
		result = @ctx?.getImageData(x,y,1,1).data

	getDepthLevelToString:(x,y)=>
		level = @getDepthLevelToInt(x,y)
		name = @depthInfo[level].name

	getDepthLevelToInt:(x,y)=>
		# console.log x + ":" + y
		depth = @getDepthLevel(x,y)?[0]
		depth /= 255

		level = -1
		for base,i in @depthInfo
			#set base value
			height1 = 0
			if(i >= 1)
				height1 = @depthInfo[i-1].height
			height2 = base.height

			#compare
			if(height1 < depth and depth < height2)
				level = i
				break
		level
	convertDepthNameToDepthLevel:(name)=>
		result = -1
		for el,i in @depthInfo
			if el.name is name
				result = i
				break
		result

	getDepthLevelToDOA:(x,y,config)=>
		# DOA == "dead or alive"
		# config
		currentLevel = @getDepthLevelToInt(x,y)
		from = @convertDepthNameToDepthLevel(config.habitat.from)
		to = @convertDepthNameToDepthLevel(config.habitat.to)
		if(currentLevel == -1)
			return "not ready"
		if(currentLevel < from)
			return "over"
		if(currentLevel > to)
			return "under"
		if(from <= currentLevel  and currentLevel <= to)
			return "between"


window.Depth = Depth





















