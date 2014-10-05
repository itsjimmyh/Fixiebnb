FixieBNB.Views.ListingsIndexItem = Backbone.CompositeView.extend({

  template: JST['listings/item'],

  className: 'listing-item col-md-6 col-sm-12',

  initialize: function () {
  },

  events: {
    "mouseover #bike-listing-mouseover": "handleMouseOver",
  },

  handleMouseOver: function (event) {
    console.log(this.model.id)
    this.trigger("mouseOverBikeListing")
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent)
    return this;
  },

});
