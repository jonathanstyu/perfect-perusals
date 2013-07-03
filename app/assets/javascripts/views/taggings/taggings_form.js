Readingapp.Views.TaggingsForm = Backbone.View.extend({
	
	initialize: function (options) {
		var that = this; 
		
		that.collection = options.collection; 
		that.bookId = options.book; 
		
		['add', 'destroy', 'change:name'].forEach(function (event) {
			that.listenTo(that.collection, event, that.render); 
		}); 
	},

  formtemplate: JST['taggings/form'], 
	modtemplate: JST['taggings/module'],
	
	events: {
		"click span#edit": 'openEdit', 
		"click span#create": 'create', 
		'click input[type="submit"]': 'editTag'
	},
	
	render: function () {
		var bookTag = this.collection.findWhere({book_id: +this.bookId}); 
		var content = this.modtemplate({
			tag: bookTag
		}); 

		this.$el.html(content); 
		return this 
	}, 
	
	openEdit : function () {
		var bookTag = this.collection.findWhere({book_id: +this.bookId}); 
		var content = this.formtemplate({
			tag: bookTag
		}); 
		
		this.$el.html(content); 
		return this; 
	}, 
	
	create: function () {
		var that = this; 
		
		var newTag = new Readingapp.Models.Tagging({
			book_id: +this.bookId, 
			name: "to-read"
		}); 
		
		var options = {
			success: function (model, response) {
				newTag = new Readingapp.Models.Tagging(response); 			
				console.log(that.collection);
				that.collection.add(newTag); 
				console.log(that.collection);
			}
		}; 
		
		newTag.save({}, options); 
	}, 
	
	editTag: function (event) {
		event.preventDefault(); 
		
		var taggingData = $(event.target.form).serializeJSON(); 
		var bookTag = this.collection.findWhere({book_id: +this.bookId}); 
		
		if (taggingData.name == "delete") {
			bookTag.destroy(); 
		} else {
			bookTag.set('name', taggingData); 
			bookTag.save(); 			
		}
	}

});
