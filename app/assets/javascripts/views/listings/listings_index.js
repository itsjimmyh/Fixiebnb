FixieBNB.Views.ListingsIndex = Backbone.CompositeView.extend({

  template: JST['listings/index'],

  className: 'listings-index',

  initialize: function (options) {
    this.listenTo(this.collection, 'sync', this.render)
    this.listenTo(this.collection, 'add', this.addListingView)

    this.collection.each(this.addListingView.bind(this))
    this.addMapView();

    // this.mapView = options.mapView;
    // this.listenTo(this.mapView, 'map_moved', this.updateListings);
  },

  addMapView: function () {
    var mapView = new FixieBNB.Views.ListingsMap({
      collection: this.collection
    });
    this.addSubview("div.map", mapView);
  },

  render: function () {
    var renderedContent = this.template({
      listings: this.collection
    })

    this.$el.html(renderedContent);

    this.attachSubviews();
    return this;
  },

  addListingView: function (listing) {
    var listingIndexItemView = new FixieBNB.Views.ListingsIndexItem ({
      model: listing
    })

    this.addSubview(".listings", listingIndexItemView)
  },
});
