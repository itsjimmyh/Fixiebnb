window.FixieBNB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new PostApp.Routers.Router({
      $rootEl: $('#content')
    })

    Backbone.history.start();
  }
};

$(document).ready(function(){
  FixieBNB.initialize();
});
