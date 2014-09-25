FixieBNB.Views.ListingsMap = Backbone.CompositeView.extend({
  template: JST["listings/map"],

  initialize: function (options) {
    if (typeof options === "undefined" ) {
      this.mapOptions = {
        center: { lat: 37.781898, lng: -122.411536 },
        zoom: 14
      }
    } else {
      this.mapOptions = options.mapOptions;
    };
  },

  events: {

  },


  render: function () {
    var renderedContent = this.template();

    this.$el.html(renderedContent);

    this.map = new google.maps.Map(this.$("#map-canvas")[0], this.mapOptions);
    var latLngObj = this.map.getCenter();
    console.log(latLngObj + " latLngObj");
    console.log(latLngObj.lat() + " latitude");
    console.log(latLngObj.lng() + " longitude");

    return this;
  },

  onRender: function () {
    console.log(this.$el.height());
  },
})
