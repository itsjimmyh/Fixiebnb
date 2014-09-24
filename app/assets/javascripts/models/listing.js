FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  listings: function () {
    if (!this._listings) {
      this._lists = new FixieBNB.Collections.Listings([], { listing: this });
    }

    return this._lists;
  },

  parse: function (response) {
    console.log("from parse");
    console.log(response);

    if (response.listings) {
      this.listings().set(response.listings, { parse: true });
      delete response.listings;
    }

    return response;
  },

})
