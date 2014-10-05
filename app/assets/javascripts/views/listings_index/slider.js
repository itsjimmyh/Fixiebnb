FixieBNB.Views.SliderView = Backbone.CompositeView.extend({

  template: JST["listings/slider"],

  events: {
    "submit form": "submit",
  },

  submit: function (event) {
    event.preventDefault();
    var searchQuery = $('#location').val()

    Backbone.history.navigate("#/search/index/" + searchQuery, { trigger: true })
  },

  render: function () {
    var renderedContent = this.template({});
    this.$el.html(renderedContent);
    this.addGeoComplete();
    return this;
  },

  addGeoComplete: function () {
    this.$('#location').geocomplete();
  }

});
