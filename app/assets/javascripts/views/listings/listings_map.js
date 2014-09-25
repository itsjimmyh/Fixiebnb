FixieBNB.Views.ListingsMap = Backbone.CompositeView.extend({
  template: JST["listings/map"],

  initialize: function (options) {
    this.mapOptions = {
      center: { lat: 37.781898, lng: -122.411536 },
      zoom: 14
    };
  },


  render: function () {
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    this.map = new google.maps.Map(this.$("#map-canvas")[0], this.mapOptions);

    return this;
  }
})
