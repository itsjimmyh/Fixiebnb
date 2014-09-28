FixieBNB.Views.RequestView = Backbone.CompositeView.extend({
  template: JST["listing/request"],

  initialize: function () {
  },

  render: function () {
    var renderedContent = this.template({})

    this.$el.html(renderedContent);
    return this;
  },
});
