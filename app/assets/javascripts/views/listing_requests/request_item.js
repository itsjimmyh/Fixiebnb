FixieBNB.Views.listingRequestItems = Backbone.CompositeView.extend({

  template: JST["requests/item"],

  initialize: function (options) {
    this.request = options.request
    console.log(this.request)
  },

  render: function () {
    var renderedContent = this.template({
      request: this.request
    })

    this.$el.html(renderedContent);
    return this;
  }
})
