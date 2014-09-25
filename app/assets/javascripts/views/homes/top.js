FixieBNB.Views.HomeView = Backbone.CompositeView.extend({

  template: JST['homes/top'],

  initialize: function () {
    console.log("homeView");
  },

  render: function () {
    var renderedContent = this.template({

    })

    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },



});
