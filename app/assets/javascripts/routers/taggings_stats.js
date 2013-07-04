Readingapp.Routers.TaggingsStats = Backbone.Router.extend ({
	initialize: function (options) {
		this.$currentlyReading = options.currentlyReading; 
		this.$totalRead = options.totalRead; 
		this.$toRead = options.toRead; 
		this.collection = options.collection; 
	}, 

	routes: {
		"": "minitable"
	}, 
	
	minitable: function () {
		
		var readCount = this.collection.where({name: "read"}).length;
		var toCount = this.collection.where({name: "to-read"}).length;
		
		var minitable = new Readingapp.Views.TagTable({
			collection: this.collection
		}); 
		
		this.$currentlyReading.html(minitable.render().$el); 
		this.$totalRead.html(readCount); 
		this.$toRead.html(toCount); 
		
	}
	
}); 