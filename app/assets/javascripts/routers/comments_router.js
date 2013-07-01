Readingapp.Routers.Comments = Backbone.Router.extend({
	initialize: function (options) {
		this.$rootelement = options.rootelement
		this.$form = options.formelement
	}, 
	
	routes: {
		"": "index"
	}, 
	
	index: function () {
		var index = new Readingapp.Views.CommentsIndex({
			collection: Readingapp.Store.comments
		}); 
	
		this.$rootelement.html(index.render().$el); 
		
		var form = new Readingapp.Views.CommentsForm({
			collection: Readingapp.Store.comments
		}); 
		
		this.$form.html(form.render().$el); 
		
	}
	
});
