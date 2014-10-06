FixieBNB.Views.ListingsIndexItem = Backbone.CompositeView.extend({

  template: JST['listings/item'],

  className: 'listing-item col-md-6 col-sm-12',

  initialize: function () {
  },

  events: {
    "mouseover #bike-listing-mouseover": "handleMouseOver",
    "mouseout #bike-listing-mouseover": "handleMouseOut"
  },

  handleMouseOver: function (event) {
    PubSub.publish("mouseOverBikeListing", this)
  },

  handleMouseOut: function (event) {
    PubSub.publish("mouseOutBikeListing", this)
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent)
    return this;
  },

});
