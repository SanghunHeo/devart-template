(function(window) {
Satrfish01_instance_1 = function() {
	this.initialize();
}
Satrfish01_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/starfish01.png"], frames: [[0,0,22,21,0,10.5,9.6]]});
var Satrfish01_instance_1_p = Satrfish01_instance_1.prototype = new createjs.BitmapAnimation();
Satrfish01_instance_1_p.BitmapAnimation_initialize = Satrfish01_instance_1_p.initialize;
Satrfish01_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Satrfish01_instance_1._SpriteSheet);
	this.paused = false;
}
window.Satrfish01_instance_1 = Satrfish01_instance_1;
}(window));

