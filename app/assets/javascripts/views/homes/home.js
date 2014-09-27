FixieBNB.Views.HomeView = Backbone.CompositeView.extend({

  template: JST['homes/home'],

  initialize: function () {
    this.addTop();
  },

  addTop: function () {
    var topView = new FixieBNB.Views.TopView({});
    this.addSubview("div.home-top", topView);
  },

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

})
