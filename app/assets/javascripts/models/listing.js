FixieBNB.Models.Listing = Backbone.Model.extend({
  urlRoot: 'api/listings',

  listings: function () {

  },

  parse: function (response) {
    console.log(response);
  },

})
