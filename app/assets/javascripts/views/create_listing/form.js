FixieBNB.Views.CreateListing = Backbone.CompositeView.extend({

  template: JST["listings/form"],

  

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }

});
