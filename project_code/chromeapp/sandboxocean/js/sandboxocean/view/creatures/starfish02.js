(function(window) {
Starfish02_instance_1 = function() {
	this.initialize();
}
Starfish02_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/starfish02.png"], frames: [[0,0,22,26,0,10.9,13.15]]});
var Starfish02_instance_1_p = Starfish02_instance_1.prototype = new createjs.BitmapAnimation();
Starfish02_instance_1_p.BitmapAnimation_initialize = Starfish02_instance_1_p.initialize;
Starfish02_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Starfish02_instance_1._SpriteSheet);
	this.paused = false;
}
window.Starfish02_instance_1 = Starfish02_instance_1;
}(window));

