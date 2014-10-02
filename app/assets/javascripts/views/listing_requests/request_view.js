FixieBNB.Views.ListingRequestsView = Backbone.CompositeView.extend({

  template: JST["requests/view"],

  initialize: function (options) {
    this.listing = options.listing
    this.requests = options.listing.requests();
    this.listenTo(this.listing, 'sync', this.render);
    this.listenTo(this.listing, 'sync', this.addRequestsIndexView);

  },

  addRequestsIndexView: function () {
    var requestsView = new FixieBNB.Views.RequestIndexView({
      collection: this.requests
    })
    this.addSubview(".listing-requests-index", requestsView)
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.listing
    })

    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
