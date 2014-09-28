FixieBNB.Views.ListingShow = Backbone.CompositeView.extend({

  template: JST["listing/show"],

  initialize: function () {
    console.log(" from listing/show")
    this.listenTo(this.model, 'sync', this.render)
    this.listenTo(this.model, 'sync', this.addCarousel)

    this.addRequestThisRide();
  },

  events: {
    "submit": "submit"
  },

  submit: function (event) {
    event.preventDefault();
    console.log("prevented");

  },

  addCarousel: function () {
    var carouselView = new FixieBNB.Views.CarouselView({
      model: this.model
    })

    this.addSubview("div.carousel", carouselView);
  },

  addRequestThisRide: function () {
    var requestView = new FixieBNB.Views.RequestView({
    })

    this.addSubview("div.reserve-this-ride", requestView);
  },

  render: function () {
    var renderedContent = this.template({

    });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

});
