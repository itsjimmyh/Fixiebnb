FixieBNB.Views.ListingShow = Backbone.CompositeView.extend({

  template: JST["listing/show"],

  initialize: function () {
    console.log("finish form submission for listing/show")
    this.listenTo(this.model, 'sync', this.render)
    this.listenTo(this.model, 'sync', this.addCarousel)
    this.listenTo(this.model, 'sync', this.addListingInfo)
    this.listenTo(this.model, 'sync', this.addFeatureImg)
    this.addRequestThisRide();
  },

  addFeatureImg: function () {
    var featureImgView = new FixieBNB.Views.ImgView({
      model: this.model
    })
    this.addSubview("div.feature-img-view", featureImgView)
  },

  addCarousel: function () {
    var carouselView = new FixieBNB.Views.CarouselView({
      model: this.model
    })
    this.addSubview("div.carousel", carouselView);
  },

  addRequestThisRide: function () {
    var requestView = new FixieBNB.Views.RequestView({
      model: this.model
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
