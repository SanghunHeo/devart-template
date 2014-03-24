(function(window) {
Tree03_instance_1 = function() {
	this.initialize();
}
Tree03_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/tree03.png"], frames: [[0,0,47,32,0,28.95,18.15]]});
var Tree03_instance_1_p = Tree03_instance_1.prototype = new createjs.BitmapAnimation();
Tree03_instance_1_p.BitmapAnimation_initialize = Tree03_instance_1_p.initialize;
Tree03_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Tree03_instance_1._SpriteSheet);
	this.paused = false;
}
window.Tree03_instance_1 = Tree03_instance_1;
}(window));

