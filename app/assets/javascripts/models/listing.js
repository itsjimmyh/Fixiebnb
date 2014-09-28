FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  // images: function () {
  //   this._images = this._images ||
  //     new FixieBNB.Collections.Images([], { image: this });
  //   return this._images;
  // },

  // parse: function(response) {
  //
  //   if (response.images) {
  //     this.images().set(response.images, {parse: true});
  //     delete response.images;
  //   }
  //   return response;
  // }

  parse: function (response) {
    if (response.feature_img && response.feature_img.length >= 1) {
      this.set("feature_img", response.feature_img[0].url);
    }
    this.set("images", response.images)
    this.set("id", response.id);
    this.set("user_id", response.user_id);
    this.set("list_title", response.list_title);
    this.set("lat", response.latitude);
    this.set("long", response.longitude);
    this.set("price", response.price);
    //TODO include city for search
  },
})
