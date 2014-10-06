FixieBNB.Views.ListingsIndex = Backbone.CompositeView.extend({

  template: JST['listings/index'],

  className: 'listings-index',

  initialize: function (options) {
    this.city = options.city

    this.listenTo(this.collection, "add", this.addListingView)
    this.listenTo(this.collection, "remove", this.removeListing)

    // this.addListings();
    this.addMapView();
    this.addSliderView();
  },

  addSliderView: function () {
    var sliderView = new FixieBNB.Views.SliderView({})
    this.addSubview("div.search-box-index", sliderView);
  },

  addMapView: function () {
    var mapView = new FixieBNB.Views.MapView({
      collection: this.collection,
      city: this.city
    });
    this.addSubview("div.map", mapView);
  },

  addListingView: function (listing) {
    var listingIndexItemView = new FixieBNB.Views.ListingsIndexItem ({
      model: listing
    })
    this.addSubview(".listings", listingIndexItemView)
  },

  // addListings: function () {
  //   this.removeSubviews(".listings");
  //   this.collection.each(this.addListingView.bind(this))
  // },

  removeListing: function (listing) {
    var subview = _.find(
      this.subviews(".listings"),
      function (subview) {
        return subview.model === listing;
      }
    );

    this.removeSubview(".listings", subview);
  },

  render: function () {
    var renderedContent = this.template({});
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },
});
