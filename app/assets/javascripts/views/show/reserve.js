FixieBNB.Views.ReserveView = Backbone.CompositeView.extend({

  template: JST["listing/reserve"],

  initialize: function () {
    console.log("reserveView")
  },

  render: function () {
    var renderedContent = this.template({})

    this.$el.html(renderedContent);
    return this;
  },

});
