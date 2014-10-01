FixieBNB.Views.ListingsIndexItem = Backbone.CompositeView.extend({

  template: JST['listings/item'],

  className: 'listing-item col-xs-6',

  initialize: function () {
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent)
    return this;
  },

});
