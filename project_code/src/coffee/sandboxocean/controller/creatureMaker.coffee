class creatureMaker
	constructor:() ->
		
	make:(@x, @y) =>
		list = []
		for item,i in window.creatureConfig
			if window.depth.getDepthLevelToDOA(x,y, item.data) is "between"
				list.push(item.data)
		num = parseInt list.length * Math.random()
		name = list[num].view.name
		new Creature(name,x,y).birth()


	getCreatureListOnLocation:(@location)=>
		

	clone:(obj) ->
		if not obj? or typeof obj isnt 'object'
			return obj

		if obj instanceof Date
			return new Date(obj.getTime()) 

		if obj instanceof RegExp
			flags = ''
			flags += 'g' if obj.global?
			flags += 'i' if obj.ignoreCase?
			flags += 'm' if obj.multiline?
			flags += 'y' if obj.sticky?
			return new RegExp(obj.source, flags) 

		newInstance = new obj.constructor()

		for key of obj
			newInstance[key] = clone obj[key]

		return newInstance

window.creatureMaker = creatureMaker