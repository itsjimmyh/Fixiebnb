FixieBNB.Views.ImgView = Backbone.CompositeView.extend({
  template: JST["listing_show/img"],

  initialize: function () {
  },

  render: function () {
    var image = this.model.get('images')[0].url
    var renderedContent = this.template({
      image: image
    })

    this.$el.html(renderedContent);
    return this;
  }

})
