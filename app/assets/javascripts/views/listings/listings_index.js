FixieBNB.Views.ListingsIndex = Backbone.CompositeView.extend({

  template: JST['listings/index'],

  className: 'listings-index',

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render)
    
    console.log("from FixieBNB.views.listingsIndex CompositeViewssss")
  },

  render: function () {
    var renderedContent = this.template({
      listings: this.collection
    })

    this.$el.html(renderedContent);
    return this;
  },




});
