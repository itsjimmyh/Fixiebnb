FixieBNB.Views.CarouselView = Backbone.CompositeView.extend({
  template: JST["listing/carousel"],

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render)
  },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent);
    return this;
  },

});
