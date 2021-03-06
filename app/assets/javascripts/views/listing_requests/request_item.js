FixieBNB.Views.listingRequestItems = Backbone.CompositeView.extend({

  template: JST["requests/item"],

  initialize: function (options) {
    this.listenTo(this.model, 'sync', this.render)
  },

  events: {
    "click button": "_handleRequest",
  },

  _handleRequest: function (event) {
    event.preventDefault();
    var $approveOrDeny = $(event.target).data().status;
    this.model.set({ status: $approveOrDeny });
    this.model.save()
  },

  render: function () {
    var renderedContent = this.template({
      request: this.model
    })

    this.$el.html(renderedContent);
    return this;
  }
})
