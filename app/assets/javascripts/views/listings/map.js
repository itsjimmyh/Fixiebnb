FixieBNB.Views.ListingsMap = Backbone.CompositeView.extend({

  template: JST["listings/map"],
  mapTemplate: JST["listings/map_template_view"],

  initialize: function (options) {
    this.city = options.city
    this.moveToSearchCenter();

    this.listenTo(this.collection, "sync", this.addMarkers);
  },

  moveToSearchCenter: function () {
    var geocoder = new google.maps.Geocoder();
    var center = { lat: 31.1310, lng: 29.9769 }
    var mapOptions = {
      zoom: 4,
      center: { lat: 0, lng: 0 }
    };

    geocoder.geocode( { 'address': this.city }, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK && status !== "ZERO_RESULTS") {
        this.map.setCenter(results[0].geometry.location);
      } else {
        this.map.setOptions( { options: mapOptions } )
      }
    }.bind(this))
  },

  render: function () {
    var renderedContent = this.template()
    this.$el.html(renderedContent);
    return this;
  },

  addMarkers: function () {
    var that = this;

    this.collection.each(function (listing) {
      var lat = listing.get('lat');
      var lng = listing.get('long')
      var mark = new google.maps.LatLng(lat, lng);

      addMark(listing, mark);
    });

    function addMark(listing, location) {
      var marker = new google.maps.Marker({
        position: location,
        title: listing.get('list_title'),
        map: that.map,
      });

      var infowindow = new google.maps.InfoWindow({
        content: that.mapTemplate({ listing: listing })
      });

      google.maps.event.addListener(marker, "click", function () {
        infowindow.open(that.map, marker);
      });

      marker.setMap(that.map);
    }
  },

  onRender: function () {
    var mapOptions = {
      zoom: 13,
    };

    this.map = new google.maps.Map(this.$("#map-canvas")[0], mapOptions);
    google.maps.event.addListener(this.map, "bounds_changed", this._handleMapUpdate.bind(this));
  },


  _handleMapUpdate: _.throttle(function () {
    var bounds = this.map.getBounds();
    var searchCity = this.city
    this.collection.fetch({
      data: {
        bounds: {
          top_right_lat: bounds.getNorthEast().lat(),
          top_right_long: bounds.getNorthEast().lng(),
          bottom_left_lat: bounds.getSouthWest().lat(),
          bottom_left_long: bounds.getSouthWest().lng()
        },

        city: {
          city: searchCity
        }
      },
      success: function (data) {

      }.bind(this)
    })

  }, 2000)
});
