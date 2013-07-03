Readingapp.Views.TaggingsForm = Backbone.View.extend({
	
	initialize: function (options) {
		this.collection = options.collection; 
		this.bookId = options.book; 
		this.listenTo(this.collection, "add", this.render)
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
		var newTag = new Readingapp.Models.Tagging({
			book_id: +this.bookId, 
			name: "to-read"
		}); 
		
		newTag.save({
			success: function (data) {
				newTag = new Readingapp.Models.Tagging(data); 
				this.collection.add(newTag); 
			}
		}); 
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
