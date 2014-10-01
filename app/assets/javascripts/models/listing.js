FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',


  parse: function (response) {
    if (response.feature_img && response.feature_img.length >= 1) {
      this.set("feature_img", response.feature_img[0].url);
    }

    this.set("images", response.images);
    this.set("id", response.id);
    this.set("listing_id", response.listing_id);
    this.set("user_id", response.user_id);
    this.set("list_title", response.list_title);
    this.set("list_desc", response.list_desc);
    this.set("deposit", response.deposit);
    this.set("lat", response.latitude);
    this.set("long", response.longitude);
    this.set("price", response.price);
    this.set("address", response.address);
    this.set("requests", response.requests);

    //TODO include city by search
  },
})
