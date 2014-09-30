FixieBNB.Views.UserContent = Backbone.CompositeView.extend({

  template: JST["users/usercontent"],

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }

});
