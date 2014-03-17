(function($) {
    var canvas, context, img, frameCount = 0;
    var initalize = function() {
        canvas = document.getElementById('stage');
        context = canvas.getContext('2d');
        img = $("img")[0];
        setInterval(loop, 1000/30);
    }

    var loop = function () {
        context.drawImage(img, 0, 0);
        frameCount++;
    }
    
    $(function() {
        initalize();
    })
})(jQuery)
