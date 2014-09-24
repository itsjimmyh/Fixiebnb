FixieBNB.Collections.Listings = Backbone.Collection.extend({
  url: 'api/listings',
  model: FixieBNB.Models.Listing,



});

FixieBNB.Collections.listings = new FixieBNB.Collections.Listings();
