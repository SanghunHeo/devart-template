class Fish
	constructor:(@view)->
		@movable = new Movable(@view)
	birth:()=>
		@movable.birth()
		stage.addChild(@view)
	death:()=>
		@movable.death();
		stage.removeChild(@view)

window.Fish = Fish