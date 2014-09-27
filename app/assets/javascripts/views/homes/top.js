FixieBNB.Views.TopView = Backbone.CompositeView.extend({

  template: JST['homes/top'],

  className: 'home-top',

  initialize: function () {
    console.log("topView");
  },

  render: function () {
    var renderedContent = this.template({})

    this.$el.html(renderedContent);
    return this;
  },



});
