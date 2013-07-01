Readingapp.Views.CommentsIndex = Backbone.View.extend({
	initialize: function (options) {
		this.collection = options.collection; 
		this.listenTo(this.collection, "sync", this.render)
	},
	
  template: JST['comments/index'],
	
	render: function () {
		var content = this.template({
			comments: this.collection
		}); 
		this.$el.html(content); 
		return this; 
	}
	
});
