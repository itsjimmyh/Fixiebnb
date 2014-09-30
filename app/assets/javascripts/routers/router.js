FixieBNB.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "home",
    "users/dashboard/": "userDashBoard",
    "search/index/:city": "searchIndex",
    "listing/:id": "listingShow",

  },

  userDashBoard: function () {
    FixieBNB.Collections.currentUserListings.fetch();
    var userView = new FixieBNB.Views.UserView({
      collection: FixieBNB.Collections.currentUserListings
    })
    this._swapView(userView);
  },

  home: function () {
    FixieBNB.Collections.listings.fetch();
    var homeView = new FixieBNB.Views.HomeView({
      collection: FixieBNB.Collections.listings
    })
    this._swapView(homeView);
  },

  searchIndex: function (city) {
    var searchCity = city;
    FixieBNB.Collections.listings.reset();
    FixieBNB.Collections.listings.fetch();
    var listingIndexView = new FixieBNB.Views.ListingsIndex({
      collection: FixieBNB.Collections.listings,
      city: searchCity
    })

    this._swapView(listingIndexView);
  },

  listingShow: function (id) {
    var listing = FixieBNB.Collections.listings.getOrFetch(id)
    var listingShowView = new FixieBNB.Views.ListingShow({
      model: listing
    })

    this._swapView(listingShowView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
    view.onRender && view.onRender();
  },

})
