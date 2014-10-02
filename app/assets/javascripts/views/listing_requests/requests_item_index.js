FixieBNB.Views.RequestIndexView = Backbone.CompositeView.extend({
  template: JST["requests/index"],

  className: "list-group-item",

  initialize: function (options) {
    this.listing = options.listing;

    this.addRequestsItems();
  },

  events: {
    
  },

  addRequestsItems: function () {
    var requests = this.listing.requests();

    requests.each(function (request) {
      var requestItem = new FixieBNB.Views.listingRequestItems({
        request: request
      })

      this.addSubview(".requests", requestItem)
    }.bind(this))
  },

  render: function () {
    var renderedContent = this.template({

    })
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
