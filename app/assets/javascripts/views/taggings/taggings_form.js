Readingapp.Views.TaggingsForm = Backbone.View.extend({
	
	initialize: function (options) {
		this.collection = options.collection
	},

  formtemplate: JST['taggings/form'], 
	modtemplate: JST['taggings/module'],
	
	render: function () {
		var content = this.modtemplate({
			taggings: this.collection
		}); 
		

		this.$el.html(content); 
		return this 
	}

});
