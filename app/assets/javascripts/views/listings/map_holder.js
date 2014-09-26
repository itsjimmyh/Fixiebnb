// initialize: function (options) {
//   if (options && options.mapOptions) {
//     this.mapOptions = options.mapOptions;
//   } else {
//     this.mapOptions = {
//       center: { lat: 37.781898, lng: -122.411536 },
//       zoom: 14
//     }
//   };
//
//   this.listenTo(this.collection, 'sync', this.render)
//
// },
//
// render: function () {
//   var renderedContent = this.template();
//
//   this.$el.html(renderedContent);
//
//   this.map = new google.maps.Map(this.$("#map-canvas")[0], this.mapOptions);
//
//   this.collection.each( function (listing) {
//     var title = listing.get('list_title')
//     var lat = listing.get('lat');
//     var long = listing.get('long')
//     var latlng = new google.maps.LatLng(lat, long);
//
//     var marker = new google.maps.Marker({
//       position: latlng,
//       map: this.map,
//       title: title
//     })
//
//     marker.setMap(this.map);
//   }.bind(this))
//
//   return this;
// },
//
// onRender: function () {
//   // console.log(this.$el.height());
// }
//
// });
