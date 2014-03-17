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

    var make = function() {
        var size = 1;

        var view = new fish01_instance_1();
        view.setTransform(0, 0, -size, size);
        window.fish = new Fish(view);
        fish.birth()
        
        var view2 = new fish02_instance_1();
        view2.setTransform(0, 0, -size, size);
        var fish2 = new Fish(view2);
        fish2.birth();

        var view3 = new fish03_instance_1();
        view3.setTransform(0, 0, -size, size);
        var fish3 = new Fish(view3);
        fish3.birth();

         var view4 = new fish04_instance_1();
        view4.setTransform(0, 0, -size, size);
        var fish4 = new Fish(view4);
        fish4.birth();

         var view5 = new fish05_instance_1();
        view5.setTransform(0, 0, -size, size);
        var fish5 = new Fish(view5);
        fish5.birth();

        var bound = view.getBounds();
        view.regX = bound.width * 2 / 3;
        view.regY = bound.height / 2;
    }

    $(function() {
        initalize();
        (function() {
            var doCheck = true;
            var check = function() {
                // $("#canvas")[0].width = $("body").width();
                // $("#canvas")[0].height = $("body").width()*.75;

                //$("#stage")[0].width = $("#canvas")[0].width;
                //$("#stage")[0].height = $("#canvas")[0].height;
                //do the check here and call some external event function or something.
            };
            window.addEventListener("resize", function() {
                if (doCheck) {
                    check();
                    doCheck = false;
                    setTimeout(function() {
                        doCheck = true;
                        check();
                    }, 500)
                }
            });
        })();

    })
})(jQuery)
