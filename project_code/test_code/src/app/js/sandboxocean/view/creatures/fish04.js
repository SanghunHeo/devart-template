﻿(function(window) {
fish04_instance_1 = function() {
	this.initialize();
}
fish04_instance_1._SpriteSheet = new createjs.SpriteSheet({images: ["img/fish04.png"], frames: [[0,0,111,27,0,93.35,13.9],[111,0,110,27,0,93.35,13.9],[221,0,110,27,0,93.35,13.9],[221,0,110,27,0,93.35,13.9],[331,0,110,27,0,93.35,13.9],[0,27,110,27,0,93.35,13.9],[110,27,110,28,0,93.35,14.9],[220,27,110,28,0,93.35,14.9],[330,27,110,28,0,93.35,14.9],[0,55,110,28,0,93.35,14.9],[110,55,110,28,0,93.35,14.9],[220,55,110,28,0,93.35,14.9],[330,55,110,28,0,93.35,14.9],[0,83,110,28,0,93.35,14.9],[110,83,110,29,0,93.35,15.9],[220,83,110,29,0,93.35,15.9],[330,83,110,29,0,93.35,15.9],[0,112,110,29,0,93.35,15.9],[110,112,110,28,0,93.35,14.9],[220,112,111,28,0,94.35,14.9],[331,112,111,28,0,94.35,14.9],[0,141,111,28,0,94.35,14.9],[111,141,111,27,0,94.35,13.9],[222,141,111,27,0,94.35,13.9],[333,141,111,27,0,94.35,13.9],[0,169,111,27,0,94.35,13.9],[111,169,111,27,0,94.35,13.9],[222,169,111,26,0,94.35,12.9],[333,169,111,26,0,94.35,12.9],[0,196,111,26,0,94.35,12.9],[111,196,111,26,0,94.35,12.9],[222,196,111,26,0,94.35,12.9],[333,196,112,27,0,94.35,12.9],[0,223,112,27,0,94.35,12.9],[112,223,112,27,0,94.35,12.9],[224,223,112,27,0,94.35,12.9],[336,223,112,27,0,94.35,12.9],[0,250,112,28,0,94.35,12.9],[112,250,112,28,0,94.35,12.9],[224,250,112,28,0,94.35,12.9],[336,250,112,28,0,94.35,12.9],[0,278,112,28,0,94.35,12.9],[112,278,112,29,0,94.35,12.9],[224,278,112,29,0,94.35,12.9],[336,278,112,29,0,94.35,12.9],[0,307,112,28,0,94.35,12.9],[112,307,112,28,0,94.35,12.9],[224,307,112,28,0,94.35,12.9],[336,307,112,28,0,94.35,12.9],[0,335,112,28,0,94.35,12.9],[112,335,112,28,0,94.35,12.9],[224,335,112,27,0,94.35,12.9],[336,335,112,27,0,94.35,12.9],[0,363,112,27,0,94.35,12.9],[112,363,112,27,0,94.35,12.9],[224,363,112,28,0,94.35,13.9],[336,363,112,28,0,94.35,13.9],[0,391,111,27,0,93.35,13.9],[111,391,111,27,0,93.35,13.9],[222,391,111,27,0,93.35,13.9]]});
var fish04_instance_1_p = fish04_instance_1.prototype = new createjs.BitmapAnimation();
fish04_instance_1_p.BitmapAnimation_initialize = fish04_instance_1_p.initialize;
fish04_instance_1_p.initialize = function() {
	this.BitmapAnimation_initialize(fish04_instance_1._SpriteSheet);
	this.paused = false;
}
window.fish04_instance_1 = fish04_instance_1;
}(window));

