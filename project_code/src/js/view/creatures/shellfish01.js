(function(window) {
Shellfish02_instance_1 = function() {
	this.initialize();
}
Shellfish02_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/shellfish01.png"], frames: [[0,0,33,31,0,15.7,12.4]]});
var Shellfish02_instance_1_p = Shellfish02_instance_1.prototype = new createjs.BitmapAnimation();
Shellfish02_instance_1_p.BitmapAnimation_initialize = Shellfish02_instance_1_p.initialize;
Shellfish02_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Shellfish02_instance_1._SpriteSheet);
	this.paused = false;
}
window.Shellfish02_instance_1 = Shellfish02_instance_1;
}(window));

