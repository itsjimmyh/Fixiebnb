FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  // listings: function () {
  //   if (!this._listings) {
  //     this._listings = new FixieBNB.Collections.Listings([], { listing: this });
  //   }
  //
  //   return this._listings;
  // },

  // parse: function (response) {
  //   if (response.listings) {
  //     this.listings().set(response.listings, { parse: true });
  //     delete response.listings;
  //   }
  //
  //   return response;
  // },

  parse: function (response) {
    if (response.feature_img.length >= 1) {
      this.set("feature_img", response.feature_img[0].url);
    }

    this.set("user_id", response.user_id);
    this.set("list_title", response.list_title);
    this.set("lat", response.latitude);
    this.set("long", response.longitude);
    this.set("price", response.price);
    //TODO include city for search
  },
})
