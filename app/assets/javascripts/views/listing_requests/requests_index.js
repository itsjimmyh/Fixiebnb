FixieBNB.Views.RequestIndexView = Backbone.CompositeView.extend({
  template: JST["requests/index"],

  // className: "list-group-item",

  initialize: function (options) {
    this.addRequestsItems();
  },

  addRequestsItems: function () {
    this.collection.each(function (request) {
      var requestItem = new FixieBNB.Views.listingRequestItems({
        model: request
      })

      this.addSubview(".requests-index", requestItem)
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
