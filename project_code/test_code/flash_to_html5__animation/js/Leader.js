// Generated by CoffeeScript 1.6.2
(function() {
  var Leader,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Leader = (function() {
    function Leader(startX, startY, canvas) {
      this.startX = startX;
      this.startY = startY;
      this.canvas = canvas;
      this.isSafe = __bind(this.isSafe, this);
      this.findSafeLocation = __bind(this.findSafeLocation, this);
      this.startInterval = __bind(this.startInterval, this);
      this.interval = __bind(this.interval, this);
      this.delayDefault = 1000;
      this.location = new Point(this.startX, this.startY);
      this.nextLocation = new Point(this.startX, this.startY);
      this.startInterval();
      this.shape = new createjs.Shape();
      this.shape.graphics.beginFill("#ff0000").drawRect(-2, -2, 4, 4);
      stage.addChild(this.shape);
    }

    Leader.prototype.interval = function() {
      this.findSafeLocation();
      this.location.x = this.nextLocation.x;
      this.location.y = this.nextLocation.y;
      this.shape.x = this.location.x;
      this.shape.y = this.location.y;
      return this.startInterval();
    };

    Leader.prototype.startInterval = function() {
      return setTimeout(this.interval, Math.random() * 3000 + 3500);
    };

    Leader.prototype.findSafeLocation = function() {
      if (this.isSafe()) {
        this.nextLocation.x = Math.random() * stage.canvas.width;
        return this.nextLocation.y = Math.random() * stage.canvas.height;
      } else {
        return this.findSafeLocation();
      }
    };

    Leader.prototype.isSafe = function() {
      if (Math.random() > .5) {
        return true;
      } else {
        return false;
      }
    };

    return Leader;

  })();

  window.Leader = Leader;

}).call(this);

/*
//@ sourceMappingURL=Leader.map
*/
