FixieBNB.Views.CreateListing = Backbone.CompositeView.extend({

  template: JST["listings/form"],

  initialize: function () {
  },

  events: {
    "submit": "submit"
  },

  submit: function (event) {
    event.preventDefault();
    var $address = this.$('#listing-address').val();
    var $data = $('form').serializeJSON();

    var listing = new FixieBNB.Models.Listing();
    listing.set($data);
    listing.save({}, {
      success: function (model, data) {
        Backbone.history.navigate("#/search/index/" + $address, { trigger: true })
      }, error: function (model, data) {
        alert("Please fill in all fields correctly =]");
      }
    });

  },

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  }

});
