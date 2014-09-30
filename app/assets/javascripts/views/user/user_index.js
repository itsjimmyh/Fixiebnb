FixieBNB.Views.UserView = Backbone.CompositeView.extend({

  template: JST["users/dashboard"],

  initialize: function () {
    console.log("usersDashBort");
    this.addSideBar();
    this.addUserContent();
  },

  addSideBar: function () {
    var sideBarView = new FixieBNB.Views.SideBar({})
    this.addSubview("div.side-bar", sideBarView)
  },

  addUserContent: function () {
    var userContent = new FixieBNB.Views.UserContent({})
    this.addSubview("div.user-content", userContent)
  },

  render: function () {
    var renderedContent = this.template({

    })

    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }

})
