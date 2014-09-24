FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  listings: function () {
    if (!this._listings) {
      this._listings = new FixieBNB.Collections.Listings([], { listing: this });
    }

    return this._lists;
  },

  parse: function (response) {
    if (response.listings) {
      this.listings().set(response.listings, { parse: true });
      delete response.listings;
    }

    return response;
  },

})
