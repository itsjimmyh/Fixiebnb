FixieBNB.Views.CarouselView = Backbone.CompositeView.extend({
  template: JST["listing/carousel"],

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render)
  },

  render: function () {
    var images = this.model.get('images'),
        arrImages = [];


    images.forEach(function (image) {
      arrImages.push(image.url)
    })

    var renderedContent = this.template({
      images: arrImages
    })

    this.$el.html(renderedContent);
    return this;
  },

});
