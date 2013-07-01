Readingapp.Routers.Comments = Backbone.Router.extend({
	initialize: function (options) {
		this.$rootelement = options.rootelement
	}, 
	
	routes: {
		"": "index"
	}, 
	
	index: function () {
		var index = new Readingapp.Views.CommentsIndex({
			collection: Readingapp.Store.comments
		}); 
		this.$rootelement.html(index.render().$el); 
	}
});
