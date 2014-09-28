FixieBNB.Views.ListingShow = Backbone.CompositeView.extend({

  template: JST["listing/show"],

  initialize: function () {
    console.log(" from listing/show")
    this.listenTo(this.model, 'sync', this.render)
    this.listenTo(this.model, 'sync', this.addCarousel)

    this.addReserveThisRide();
  },

  addCarousel: function () {
    var carouselView = new FixieBNB.Views.CarouselView({
      model: this.model
    })

    this.addSubview("div.carousel", carouselView);
  },

  addReserveThisRide: function () {
    var reserveView = new FixieBNB.Views.ReserveView({
    })

    this.addSubview("div.reserve-this-ride", reserveView);
  },

  render: function () {
    var renderedContent = this.template({

    });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

});
