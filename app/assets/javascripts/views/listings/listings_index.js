FixieBNB.Views.ListingsIndex = Backbone.CompositeView.extend({

  template: JST['listings/index'],

  className: 'listings-index',

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render)
    this.listenTo(this.collection, 'add', this.addListing)

    this.collection.each(this.addListing.bind(this))
    this.addMap();
  },

  addMap: function () {
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

  addListing: function (listing) {
    var listingIndexItemView = new FixieBNB.Views.ListingsIndexItem ({
      model: listing
    })

    this.addSubview(".listings", listingIndexItemView)
  },
});
