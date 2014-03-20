(function(window) {
crab_instance_1 = function() {
	this.initialize();
}
crab_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/crab01.png"], frames: [[0,0,53,43,0,26,31.85]]});
var crab_instance_1_p = crab_instance_1.prototype = new createjs.BitmapAnimation();
crab_instance_1_p.BitmapAnimation_initialize = crab_instance_1_p.initialize;
crab_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(crab_instance_1._SpriteSheet);
	this.paused = false;
}
window.crab_instance_1 = crab_instance_1;
}(window));

