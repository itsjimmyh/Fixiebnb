FixieBNB.Views.ListingsIndexItem = Backbone.CompositeView.extend({

  template: JST['listings/item'],

  className: 'listing-item',
  tagName: 'li',
  // 
  // initialize: function () {
  //   // console.log(this.model)
  // },

  render: function () {
    var renderedContent = this.template({
      listing: this.model
    })

    this.$el.html(renderedContent)

    return this;
  },

});
