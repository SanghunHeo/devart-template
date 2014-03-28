// Generated by CoffeeScript 1.6.2
(function() {
  var SandboxOcean,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  SandboxOcean = (function() {
    function SandboxOcean() {
      this.update = __bind(this.update, this);
      this.initDepth = __bind(this.initDepth, this);
      this.make = __bind(this.make, this);
      this.inialize = __bind(this.inialize, this);
      this.stageSetup = __bind(this.stageSetup, this);      this.creatures = [];
      this.stageSetup();
      this.inialize();
      console.clear();
    }

    SandboxOcean.prototype.stageSetup = function() {
      var _this = this;

      this.stage = new createjs.Stage("stage");
      window.stage = this.stage;
      createjs.Ticker.setFPS(30);
      createjs.Ticker.addEventListener("tick", this.update);
      return $("#stage").click(function(e) {
        var _ref;

        return (_ref = _this.creatureMaker) != null ? _ref.make(e.offsetX, e.offsetY) : void 0;
      });
    };

    SandboxOcean.prototype.inialize = function() {
      this.initDepth();
      return this.make();
    };

    SandboxOcean.prototype.make = function() {
      return this.creatureMaker = new creatureMaker;
    };

    SandboxOcean.prototype.initDepth = function() {
      window.depthMap = new Image();
      return window.depth = new Depth(depthMap);
    };

    SandboxOcean.prototype.update = function() {
      return this.stage.update();
    };

    return SandboxOcean;

  })();

  window.SandboxOcean = SandboxOcean;

}).call(this);

/*
//@ sourceMappingURL=SandboxOcean.map
*/
