FixieBNB.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl
  },

  routes: {
    '': 'home',
    'search/index': "searchIndex",
    'listing/:id': "listingShow",

  },

  home: function () {
    FixieBNB.Collections.listings.fetch();
    var homeView = new FixieBNB.Views.HomeView({
      collection: FixieBNB.Collections.listings
    })
    this._swapView(homeView);
  },

  searchIndex: function () {
    FixieBNB.Collections.listings.fetch();
    var listingIndexView = new FixieBNB.Views.ListingsIndex({
      collection: FixieBNB.Collections.listings
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
