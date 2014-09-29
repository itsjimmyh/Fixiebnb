FixieBNB.Views.ListingShow = Backbone.CompositeView.extend({

  template: JST["listing/show"],

  initialize: function () {
    console.log("finish form submission for listing/show")
    this.listenTo(this.model, 'sync', this.render)
    this.listenTo(this.model, 'sync', this.addCarousel)
    this.listenTo(this.model, 'sync', this.addListingInfo)
    this.addRequestThisRide();
  },

  events: {
    "submit": "submit"
  },

  submit: function (event) {
    event.preventDefault();
    console.log("prevented from listing/show submit now send data to rails to make request");

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

  addListingInfo: function () {
    var listingInfoView = new FixieBNB.Views.ListingInfoView({
      model: this.model
    })

    this.addSubview("div.ride-info", listingInfoView)
  },

  render: function () {
    var renderedContent = this.template({

    });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

});
