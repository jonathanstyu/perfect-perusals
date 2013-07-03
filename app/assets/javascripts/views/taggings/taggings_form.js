Readingapp.Views.TaggingsForm = Backbone.View.extend({
	
	initialize: function (options) {
		this.collection = options.collection; 
		this.bookId = options.book; 
	},

  formtemplate: JST['taggings/form'], 
	modtemplate: JST['taggings/module'],
	
	events: {

	},
	
	render: function () {
		
		var bookTag = this.collection.findWhere({book_id: +this.bookId}); 
		console.log(bookTag);
		var content = this.modtemplate({
			tag: bookTag
		}); 
		

		this.$el.html(content); 
		return this 
	}

});
