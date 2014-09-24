window.FixieBNB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new FixieBNB.Routers.Router({
      $rootEl: $('#main')
    })

    Backbone.history.start();
  }
};

$(document).ready(function(){
  FixieBNB.initialize();
});
