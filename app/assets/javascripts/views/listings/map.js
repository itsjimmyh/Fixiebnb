FixieBNB.Views.ListingsMap = Backbone.CompositeView.extend({

  template: JST["listings/map"],
  mapTemplate: JST["listings/map_template_view"],

  initialize: function (options) {
    this.city = options.city
    this.moveToSearchCenter();

    this.arrMarkers = [];

    this.listenTo(this.collection, "sync", this.addMarkers);
    this.listenTo(this.collection, "remove", this.removeMarkers);
  },

  removeMarkers: function (map) {
    var markersToRemove = [];
    var currentMarkers = this.collection.pluck("marker")

    for (var i = 0; i < this.arrMarkers.length; i++) {
      if (currentMarkers.indexOf(this.arrMarkers[i]) === -1) {
        this.arrMarkers[i].setMap(null)
      }
    }
  },

  moveToSearchCenter: function () {
    var geocoder = new google.maps.Geocoder();
    var center = { lat: 31.1310, lng: 29.9769 }
    var mapOptions = {
      zoom: 4,
      center: { lat: 122.4167, lng: 37.7833 }
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
    var that = this,
        marker;

    this.collection.each(function (listing) {
      var lat = listing.get('latitude');
      var lng = listing.get('longitude');
      var mark = new google.maps.LatLng(lat, lng);

      if (!listing.get("marker")) {
        listing.set("marker", that._addMark(listing, mark));
      }
    });

  },

  _addMark: function (listing, location) {
    var marker = new google.maps.Marker({
      position: location,
      title: listing.get('list_title'),
      map: this.map,
      animation: google.maps.Animation.DROP,
      icon: {
        path: fontawesome.markers.HAND_O_DOWN,
        scale: 0.4,
        strokeWeight: 1,
        strokeColor: 'black',
        strokeOpacity: 2,
        fillColor: '#007a87',
        fillOpacity: 2,
    },

    });

    var infowindow = new google.maps.InfoWindow({
      content: this.mapTemplate({ listing: listing })
    });

    google.maps.event.addListener(marker, "click", function () {
      infowindow.open(this.map, marker);
    });

    marker.setMap(this.map);
    this.arrMarkers.push(marker);
    return marker;
  },


  onRender: function () {
    var mapOptions = {
      zoom: 13,
      mapTypeId: google.maps.MapTypeId.TERRAIN
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
  }, 3000)
});
