FixieBNB.Views.RequestView = Backbone.CompositeView.extend({
  template: JST["listing/request"],

  initialize: function () {
    console.log(this.model.id + " model ID from requestView")
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
        console.log(model)
        console.log(response)
        Backbone.history.navigate("#/users/dashboard/", { trigger: true })
        alert("request successful")
      },
      error: function (model, response) {
        console.log(model)
        console.log(response)
        Backbone.history.navigate("#/users/dashboard/", { trigger: true} )
        alert("request overlaps with approved request or it's your own bike")
        //TODO render an error on the screen
      }
    })
  },

  render: function () {
    var renderedContent = this.template({})
    this.$el.html(renderedContent);
    return this;
  },

});
