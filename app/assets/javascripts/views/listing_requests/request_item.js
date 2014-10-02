FixieBNB.Views.listingRequestItems = Backbone.CompositeView.extend({

  template: JST["requests/item"],

  initialize: function (options) {
    this.requests = options.listing
  },

  render: function () {
    var renderedContent = this.template({
    })

    this.$el.html(renderedContent);
    return this;
  }
})
