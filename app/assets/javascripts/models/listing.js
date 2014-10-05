FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  requests: function () {
    if(!this._requests) {
      this._requests = new FixieBNB.Collections.ListingRequests([], { listing: this })
    }
    return this._requests;
  },

  parse: function (response) {
    if(response.requests && response.requests.length >= 1) {
      this.requests().set(response.requests, { parse: true });
      delete response.requests;
    }

    return response;
  },
})
