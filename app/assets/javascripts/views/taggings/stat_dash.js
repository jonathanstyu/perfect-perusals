Readingapp.Views.TagTable = Backbone.View.extend ({
	
	minitabletemplate: JST['taggings/minitable'], 
	
	render: function () {
		
		var currentlyReading = this.collection.where({name: "currently-reading" }); 
		
		var content = this.minitabletemplate({
			taggings: currentlyReading
		}); 
		
		this.$el.html(content); 
		return this; 
	}
}); 