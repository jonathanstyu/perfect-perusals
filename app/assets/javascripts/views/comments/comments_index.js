Readingapp.Views.CommentsIndex = Backbone.View.extend({

  template: JST['comments/index'], 
	
	render: function () {
		var content = this.template({
			comments: this.collection
		}); 
		this.$el.html(content); 
		return this; 
	}

});
