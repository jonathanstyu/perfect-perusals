Readingapp.Views.TaggingsTable = Backbone.View.extend({

  template: JST['taggings/table'], 
	
	render: function () {
		// console.log(this.collection.models[0].get("book").cover_image); 
		var content = this.template({
			taggings: this.collection
		}); 
		console.log(this.collection); 
		this.$el.html(content); 
		return this 
	}

});
