(function(window) {
Starfish03_instance_1 = function() {
	this.initialize();
}
Starfish03_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/starfish03.png"], frames: [[0,0,26,26,0,12.5,11.7]]});
var Starfish03_instance_1_p = Starfish03_instance_1.prototype = new createjs.BitmapAnimation();
Starfish03_instance_1_p.BitmapAnimation_initialize = Starfish03_instance_1_p.initialize;
Starfish03_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Starfish03_instance_1._SpriteSheet);
	this.paused = false;
}
window.Starfish03_instance_1 = Starfish03_instance_1;
}(window));

