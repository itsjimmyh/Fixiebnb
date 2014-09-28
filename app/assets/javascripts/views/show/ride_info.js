FixieBNB.Views.ListingInfoView = Backbone.CompositeView.extend({
  template: JST["listing/info"],

  initialize: function () {
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent);
    return this;
  }
});
