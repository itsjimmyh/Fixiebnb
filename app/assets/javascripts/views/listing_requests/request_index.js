FixieBNB.Views.ListingRequestsView = Backbone.CompositeView.extend({
  template: JST["requests/index"],

  initialize: function (options) {
    this.listing = options.listing
    console.log(this.listing.attributes)
    console.log(this.listing + " from listingRequestView")

    this.listenTo(this.listing, 'sync', this.render);
  },



  render: function () {
    debugger
    var renderedContent = this.template({
      listing: this.listing
    })
    this.$el.html(renderedContent);
    return this;
  }
});
