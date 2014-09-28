FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  // requests: function () {
  //   this._requests = this._requests ||
  //     new FixieBNB.Collections.Requests([], { reqeust: this });
  //   return this._requests;
  // },

  // parse: function(response) {
  //
  //   if (response.requests) {
  //     this.requests().set(response.requests, {parse: true});
  //     delete response.requests;
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
    this.set("list_desc", response.list_desc);
    this.set("deposit", response.deposit);
    this.set("lat", response.latitude);
    this.set("long", response.longitude);
    this.set("price", response.price);
    this.set("address", response.address);
    //TODO include city for search
  },
})
