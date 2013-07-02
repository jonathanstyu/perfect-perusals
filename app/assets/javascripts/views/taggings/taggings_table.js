Readingapp.Views.TaggingsTable = Backbone.View.extend({

  template: JST['taggings/table'], 
	
	render: function () {

		var myReviews = JSON.parse($('#bootstrapped_reviews').html()); 
		console.log(myReviews); 
		var content = this.template({
			taggings: this.collection
		}); 

		this.$el.html(content); 
		return this 
	}

});
