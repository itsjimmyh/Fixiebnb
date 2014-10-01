FixieBNB.Views.FooterView = Backbone.CompositeView.extend({
  template: JST["homes/footer"],

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }
});
