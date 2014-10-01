FixieBNB.Collections.ListingRequests = Backbone.Collection.extend({
  model: FixieBNB.Models.Request,

  url: function () {
    return this.request.url() + "/requests";
  },

  initialize: function (models, options) {
    this.request = options.request
  },

  getOrFetch: function (id) {
    var request = this.get(id);

    if (!request) {
      request = new FixieBNB.Models.Request({ id: id })
      request.fetch({
        success: function () {
          this.add(request)
        }.bind(this)
      });
    } else {
      request.fetch()
    }

    return request;
  }

});
