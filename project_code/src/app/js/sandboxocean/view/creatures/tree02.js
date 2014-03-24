(function(window) {
Tree02_instance_1 = function() {
	this.initialize();
}
Tree02_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/tree02.png"], frames: [[0,0,49,50,0,23.95,25.3]]});
var Tree02_instance_1_p = Tree02_instance_1.prototype = new createjs.BitmapAnimation();
Tree02_instance_1_p.BitmapAnimation_initialize = Tree02_instance_1_p.initialize;
Tree02_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Tree02_instance_1._SpriteSheet);
	this.paused = false;
}
window.Tree02_instance_1 = Tree02_instance_1;
}(window));

