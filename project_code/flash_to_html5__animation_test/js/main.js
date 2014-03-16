(function($) {
    var stage;
    var initalize = function() {
        stage = new createjs.Stage("stage");
        window.stage = stage;
        make();

        createjs.Ticker.setFPS(30);
        createjs.Ticker.addEventListener("tick", tick);
    }
    var tick = function() {
        stage.update();
    }

    var make = function () {
    	var view = new fish_01_instance_1();
        // var size = Math.random() * .5 + .2; 
        var size = .5; 
        view.setTransform(0, 0, -size, size);
        
        window.fish = new Fish(view);
        fish.birth()

        var bound = view.getBounds();
		view.regX = bound.width * 2/3;
		view.regY = bound.height/2;
    }

    $(function() {
        initalize();
    })
})(jQuery)