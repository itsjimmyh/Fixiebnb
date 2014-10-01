FixieBNB.Views.ListingShow = Backbone.CompositeView.extend({

  template: JST["listing/show"],

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render)
    this.listenTo(this.model, 'sync', this.addCarousel)
    this.listenTo(this.model, 'sync', this.addListingInfo)
    this.listenTo(this.model, 'sync', this.addFeatureImg)
    this.addRequestThisRide();
    this.addFooter();
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

  addFooter: function () {
    var footerView = new FixieBNB.Views.FooterView({})
    this.addSubview("div.show-footer", footerView);
  },

  render: function () {
    var renderedContent = this.template({

    });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

});
