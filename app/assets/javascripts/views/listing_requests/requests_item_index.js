FixieBNB.Views.ListingIndexView = Backbone.CompositeView.extend({
  template: JST["requests/index"],

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }
});
