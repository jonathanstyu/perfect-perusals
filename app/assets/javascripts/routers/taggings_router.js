Readingapp.Routers.Taggings = Backbone.Router.extend({
	
	initialize: function (options) {
		this.$sidebar = options.sidebar; 
		this.$content = options.content; 
	},
	
	routes: {
		"": "index", 
		"shelf/:id": "shelfView"
	}, 
	
	index : function () {
		var sidebar_content = JST['taggings/index'](); 
		this.$sidebar.html(sidebar_content); 
		
		var table_content = new Readingapp.Views.TaggingsTable({
			collection: Readingapp.Store.taggings
		}); 
		
		this.$content.html(table_content.render().$el)
	}, 
	
	shelfView: function (id) {
		var sidebar_content = JST['taggings/index'](); 
		this.$sidebar.html(sidebar_content); 
		
		var shelf = Readingapp.Store.taggings.where({name: id});
		var table_content = new Readingapp.Views.TaggingsTable({
			collection: shelf
		}); 
		
		this.$content.html(table_content.render().$el)
		
	}
	
});
