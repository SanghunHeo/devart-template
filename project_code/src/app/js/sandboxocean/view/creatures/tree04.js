(function(window) {
Tree04_instance_1 = function() {
	this.initialize();
}
Tree04_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/tree04.png"], frames: [[0,0,66,57,0,35.9,26.2]]});
var Tree04_instance_1_p = Tree04_instance_1.prototype = new createjs.BitmapAnimation();
Tree04_instance_1_p.BitmapAnimation_initialize = Tree04_instance_1_p.initialize;
Tree04_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(Tree04_instance_1._SpriteSheet);
	this.paused = false;
}
window.Tree04_instance_1 = Tree04_instance_1;
}(window));

