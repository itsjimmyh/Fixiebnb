FixieBNB.Views.SideBar = Backbone.CompositeView.extend({
  initialize: function (options) {
  },

  template: JST["users/sidebar"],

  events: {
    "click a#profile": "profile",
    "click a#my-listings": "myListings",
    "click a#my-requests": "myRequests"
  },

  profile: function (event) {
    event.preventDefault();
    this.trigger("profileView");
  },

  myListings: function (event) {
    event.preventDefault();
    this.trigger("myListings");
    console.log("myListings")
  },

  myRequests: function (event) {
    event.preventDefault();
    this.trigger("myRequests");
  },

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }

})
