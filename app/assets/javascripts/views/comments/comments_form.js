Readingapp.Views.CommentsForm = Backbone.View.extend({
	
  template: JST['comments/form'], 
	
	events: {
		'click button.addcomment': "addComment"
	},
	
	render: function () {
		var content = this.template({
			
		}); 
		this.$el.html(content); 
		return this; 
	}, 
	
	addComment: function (event) {
		event.preventDefault(); 
		var model = new Readingapp.Models.Comment($(event.target.form).serializeJSON()); 
		this.collection.create(model); 		
		Backbone.history.navigate("", {trigger: true}); 
	}

});
