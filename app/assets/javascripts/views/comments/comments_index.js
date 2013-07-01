Readingapp.Views.CommentsIndex = Backbone.View.extend({
	initialize: function () {
		this.listenTo(this.collection, "add", this.render())
	}, 
	
  template: JST['comments/index'], 
	
	events: {
		'click button.addcomment': "addComment"
	},
	
	render: function () {
		var content = this.template({
			comments: this.collection
		}); 
		this.$el.html(content); 
		return this; 
	}, 
	
	addComment: function (event) {
		console.log($(event.target).form)
	}

});
