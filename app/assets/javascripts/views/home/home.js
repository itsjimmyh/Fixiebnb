FixieBNB.Views.HomeView = Backbone.CompositeView.extend({

  template: JST['homes/home'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.addCenter);
    this.listenTo(this.collection, 'sync', this.render);
    this.addTop();
  },

  addTop: function () {
    var topView = new FixieBNB.Views.TopView({});
    this.addSubview("div.home-top", topView);
  },

  addCenter: function () {
    var arrayListings = [];
    this.collection.forEach(function (model) {
      arrayListings.push(model);
    })

    var centerView = new FixieBNB.Views.CenterView({
      collection: arrayListings
    });
    this.addSubview("div.home-center", centerView);
  },

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

})
