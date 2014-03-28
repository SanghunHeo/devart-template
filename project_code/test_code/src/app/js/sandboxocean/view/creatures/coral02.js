(function(window) {
coral02_instance_1 = function() {
	this.initialize();
}
coral02_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/coral02.png"], frames: [[0,0,91,83,0,48.7,40.65]]});
var coral02_instance_1_p = coral02_instance_1.prototype = new createjs.BitmapAnimation();
coral02_instance_1_p.BitmapAnimation_initialize = coral02_instance_1_p.initialize;
coral02_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(coral02_instance_1._SpriteSheet);
	this.paused = false;
}
window.coral02_instance_1 = coral02_instance_1;
}(window));

