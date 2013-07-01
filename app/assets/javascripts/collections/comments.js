Readingapp.Collections.Comments = Backbone.Collection.extend({
	initialize: function (review_id) {
		this.review_id = review_id; 
	},

  model: Readingapp.Models.Comment, 
	url: function () {
		return this.review_id + "/comments"
	}

});
