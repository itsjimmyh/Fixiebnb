FixieBNB.Views.ListingInfoView = Backbone.CompositeView.extend({
  template: JST["listing/info"],

  initialize: function () {
    console.log(this.model.attributes + " from ListingInfoView")
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent);
    return this;
  }

});
