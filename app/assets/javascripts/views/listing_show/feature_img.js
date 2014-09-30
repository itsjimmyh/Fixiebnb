FixieBNB.Views.ImgView = Backbone.CompositeView.extend({
  template: JST["listing/img"],

  initialize: function () {
    console.log(this.model);
  },

  render: function () {
    var image = this.model.get('images')[0].url
    console.log(image + "from imgView")
    var renderedContent = this.template({
      image: image
    })

    this.$el.html(renderedContent);
    return this;
  }

})
