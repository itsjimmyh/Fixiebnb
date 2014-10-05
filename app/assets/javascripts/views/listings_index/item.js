FixieBNB.Views.ListingsIndexItem = Backbone.CompositeView.extend({

  template: JST['listings/item'],

  className: 'listing-item col-md-6 col-sm-12',

  initialize: function () {
  },

  events: {
    "mouseover #bike-listing-mouseover": "handleMouseOver",
  },

  handleMouseOver: function (event) {
    console.log("after")
    console.log(this.model.id)


    PubSub.publish("mouseOverBikeListing", this)

  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent)
    return this;
  },

});
