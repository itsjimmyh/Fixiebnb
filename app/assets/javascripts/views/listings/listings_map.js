FixieBNB.Views.ListingsMap = Backbone.CompositeView.extend({

  template: JST["listings/map"],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.addMarkers);
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

      placeMarker(listing, mark);
    });

    function placeMarker(listing, location) {
      var marker = new google.maps.Marker({
        position: location,
        title: listing.get('list_title'),
        map: that.map
      });

      var infowindow = new google.maps.InfoWindow({
        content: '<a href="#/listings/'
                 + listing.get('user_id')
                 + '">'
                 + listing.get("list_title")
                 + '</a>'
                 + '<div class="infoBox" style=" visiblity: visible; z-index: 330; width: 150px; height: 150px;">'
                 + '<img class="img-responsive img-thumbnail" src="'
                 + listing.get('feature_img')
                 + '"></img></div>'
      });

      google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(that.map, marker);
      });

      marker.setMap(that.map);
    }
  },

  onRender: function () {
    var mapOptions = {
      zoom: 14,
      center: { lat: 37.781898, lng: -122.411536 }
    };

    this.map = new google.maps.Map(this.$("#map-canvas")[0], mapOptions);

    google.maps.event.addListener(this.map, 'bounds_changed', function () {
      this.trigger('map_moved', this.map);
      console.log("moved")
    }.bind(this))
  },

  });
