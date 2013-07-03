Readingapp.Routers.TaggingsStats = Backbone.Router.extend ({
	initialize: function (options) {
		this.$currentlyReading = options.currentlyReading; 
		this.collection = options.collection; 
	}, 

	routes: {
		"": "minitable"
	}, 
	
	minitable: function () {
		var minitable = new Readingapp.Views.TagTable({
			collection: this.collection
		}); 
		
		this.$currentlyReading.html(minitable.render().$el)
	}
	
}); 