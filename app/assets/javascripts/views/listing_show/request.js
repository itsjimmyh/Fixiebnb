FixieBNB.Views.RequestView = Backbone.CompositeView.extend({
  template: JST["listing_show/request"],

  initialize: function () {
  },

  events: {
    "submit form": "submit"
  },

  submit: function (event) {
    event.preventDefault();
    var startDate = $("#start").val()
    var endDate = $("#end").val()

    var request = new FixieBNB.Models.Request({
      listing_id: this.model.id,
      start_date: startDate,
      end_date: endDate
    })

    request.save({}, {
      success: function (model, response) {
        Backbone.history.navigate("#/users/dashboard/", { trigger: true })
        alert("request successful")
      },
      error: function (model, response) {
        Backbone.history.navigate("#/users/dashboard/", { trigger: true} )
        alert("request overlaps with approved request or it's your own bike")
      }
    })
  },

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  },

});
