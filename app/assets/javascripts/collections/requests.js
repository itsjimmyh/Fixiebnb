FixieBNB.Collections.ListingRequests = Backbone.Collection.extend({
  model: FixieBNB.Models.Request,

  url: "api/requests",

  initialize: function (models, options) {
    this.request = options.request
  }
  
});
