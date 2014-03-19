$ ()->
    initalize = ()->
        window.app = new SandboxOcean()
    
    initalize()

# (function($) {
#     var initalize = function() {
#         window.app = new SandboxOcean()
#     }
    
#     $(function() {
#         initalize();
#          (function() {
#              var doCheck = true;
#              var check = function() {
#                  $("#canvas")[0].width = $(window).width();
#                  $("#canvas")[0].height = $(window).height();

#                  $("#stage")[0].width = $(window).width();
#                  $("#stage")[0].height = $(window).height();
#              };
#              window.addEventListener("resize", function() {
#                  if (doCheck) {
#                      check();
#                      doCheck = false;
#                      setTimeout(function() {
#                          doCheck = true;
#                          check();
#                      }, 500)
#                  }
#              });
#          })();
#     })
# })(jQuery)
