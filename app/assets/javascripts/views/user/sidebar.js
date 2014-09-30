FixieBNB.Views.SideBar = Backbone.CompositeView.extend({

  template: JST["users/sidebar"],

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }

})
