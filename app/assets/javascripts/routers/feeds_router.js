Readingapp.Routers.Feeds = Backbone.Router.extend({
	initialize: function (options) {
		this.collection = options.collection; 
		this.$rootelement = options.rootElement; 
	}, 
	
	routes: {
		"": 'index'
	},
	
	index: function () {
		var feed = new Readingapp.Views.FeedsIndex({
			collection: this.collection
		}); 
		this.$rootelement.html(feed.render().$el); 
	}
});
