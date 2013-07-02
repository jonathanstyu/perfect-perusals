Readingapp.Routers.TaggingsModule = Backbone.Router.extend({
	initialize: function (options) {
		this.$rootelement = options.rootelement, 
		this.collection = options.collection
	},
	
	routes: {
		"": 'index'
	}, 
	
	index: function () {
		var module = new Readingapp.Views.TaggingsForm({
			collection: this.collection
		}); 
		
		this.$rootelement.html(module.render().$el); 
	}
}); 