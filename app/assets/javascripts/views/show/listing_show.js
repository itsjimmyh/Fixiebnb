FixieBNB.Views.ListingShow = Backbone.CompositeView.extend({

  template: JST["listing/show"],

  initialize: function () {
    this.addCarousel();

    this.listenTo(this.model, 'sync', this.render)
  },

  addCarousel: function () {
    var carouselView = new FixieBNB.Views.CarouselView({
      model: this.model
    })

    this.addSubview("div.carousel", carouselView);
  },

  render: function () {
    var renderedContent = this.template({

    });

    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  },

});
