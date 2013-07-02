Readingapp.Views.TaggingsTable = Backbone.View.extend({

  template: JST['taggings/table'], 
	
	render: function () {
		var content = this.template({
			taggings: this.collection
		}); 
		console.log(this.collection); 
		this.$el.html(content); 
		return this 
	}

});
