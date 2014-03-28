(function(window) {
Tree01_instance_1 = function() {
	this.initialize();
}
Tree01_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/tree01.png"], frames: [[0,0,28,30,0,13.4,14.2]]});
var Tree01_instance_1_p = Tree01_instance_1.prototype = new createjs.BitmapAnimation();
Tree01_instance_1_p.BitmapAnimation_initialize = Tree01_instance_1_p.initialize;
Tree01_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Tree01_instance_1._SpriteSheet);
	this.paused = false;
}
window.Tree01_instance_1 = Tree01_instance_1;
}(window));

