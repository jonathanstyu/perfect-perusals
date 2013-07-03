Readingapp.Routers.TaggingsStats = Backbone.Router.extend ({
	initialize: function (options) {
		this.collection = option.collection; 
	}, 
	
	template: JST['taggings/minitable'], 
	
	routes: {
		"": "minitable"
	}, 
	
	minitable: function () {
		
	}
	
}); 