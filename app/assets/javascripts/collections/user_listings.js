FixieBNB.Collections.CurrentUserListings = Backbone.Collection.extend({
  url: 'api/current_user_listings',
  model: FixieBNB.Models.Listing,

  getOrFetch: function (id) {
    var listing = this.get(id)

    if (!listing) {
      listing = new FixieBNB.Models.Listing({ id: id });
      listing.fetch({
        success: function () {
          this.add(listing);
        }.bind(this)
      });
    } else {
      listing.fetch();
    }

    return listing;
  },

});

FixieBNB.Collections.currentUserListings = new FixieBNB.Collections.CurrentUserListings();
