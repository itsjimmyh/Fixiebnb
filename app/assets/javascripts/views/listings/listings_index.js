FixieBNB.Views.ListingsIndex = Backbone.CompositeView.extend({

  template: JST['listings/index'],

  className: 'listings-index',

  initialize: function (options) {
    this.listenTo(this.collection, 'sync', this.addListings)
    this.listenTo(this.collection, 'sync', this.render)

    this.listenTo(this.collection, 'add reset', this.addListingView)

    this.collection.each(this.addListingView.bind(this))
    this.addMapView();
  },

  addMapView: function () {
    var mapView = new FixieBNB.Views.ListingsMap({
      collection: this.collection
    });
    this.addSubview("div.map", mapView);
  },

  addListingView: function (listing) {
    var listingIndexItemView = new FixieBNB.Views.ListingsIndexItem ({
      model: listing
    })
    this.addSubview(".listings", listingIndexItemView)
  },

  addListings: function () {
    this.removeSubviews(".listings");
    this.collection.each(this.addListingView.bind(this))
  },

  render: function () {
    var renderedContent = this.template({
      // listings: this.collection
    })
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },
});
