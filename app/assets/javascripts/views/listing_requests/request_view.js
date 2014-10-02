FixieBNB.Views.ListingRequestsView = Backbone.CompositeView.extend({

  template: JST["requests/view"],

  initialize: function (options) {
    this.listing = options.listing

    this.addRequestsIndexView();

    this.listenTo(this.listing, 'sync', this.render);


  },

  addRequestsIndexView: function () {
    var requestsView = new FixieBNB.Views.ListingIndexView({
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
