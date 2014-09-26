FixieBNB.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl
  },

  routes: {
    '': 'home',
    'search/index': "searchIndex",

  },

  home: function () {
    var homeView = new FixieBNB.Views.HomeView({
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

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
    view.onRender && view.onRender();
  },

})
