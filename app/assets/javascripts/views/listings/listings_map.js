FixieBNB.Views.ListingsMap = Backbone.CompositeView.extend({

  template: JST["listings/map"],
  // mapTemplate: JST[]

  initialize: function () {
    this.listenTo(this.collection, "sync", this.addMarkers);
  },

  render: function () {
    var renderedContent = this.template()
    this.$el.html(renderedContent);
    return this;
  },

  addMarkers: function () {
    var that = this,
        markers = [];

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

      google.maps.event.addListener(marker, "click", function () {
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

    google.maps.event.addListener(this.map, "bounds_changed", this._handleMapUpdate.bind(this));
    // google.maps.event.addListener(this.map, "zoom_changed", this._handleMapUpdate.bind(this));
    // google.maps.event.addListener(this.map, "dragend", this._handleMapUpdate.bind(this));
  },


  _handleMapUpdate: _.throttle(function () {
    var bounds = this.map.getBounds();


    this.collection.fetch({
      data: {
        top_right_lat: bounds.getNorthEast().lat(),
        top_right_long: bounds.getNorthEast().lng(),
        bottom_left_lat: bounds.getSouthWest().lat(),
        bottom_left_long: bounds.getSouthWest().lng()
      },
      success: function (data) {
        console.log(data)

      }.bind(this)
    })

  }, 2000)



});
