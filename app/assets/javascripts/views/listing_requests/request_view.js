FixieBNB.Views.ListingRequestsView = Backbone.CompositeView.extend({

  template: JST["requests/view"],

  initialize: function (options) {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model, 'sync', this.addRequestsIndexView);
  },

  addRequestsIndexView: function () {
    var requestsView = new FixieBNB.Views.RequestIndexView({
      collection: this.model.requests()
    })
    this.addSubview(".listing-requests-index", requestsView)
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
