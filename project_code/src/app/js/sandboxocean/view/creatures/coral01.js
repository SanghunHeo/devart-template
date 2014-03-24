(function(window) {
coral01_instance_1 = function() {
	this.initialize();
}
coral01_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/coral01.png"], frames: [[0,0,94,113,0,48.95,61.2]]});
var coral01_instance_1_p = coral01_instance_1.prototype = new createjs.BitmapAnimation();
coral01_instance_1_p.BitmapAnimation_initialize = coral01_instance_1_p.initialize;
coral01_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(coral01_instance_1._SpriteSheet);
	this.paused = false;
}
window.coral01_instance_1 = coral01_instance_1;
}(window));

