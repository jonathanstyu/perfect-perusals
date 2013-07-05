Readingapp.Views.RecommendationsIndex = Backbone.View.extend({
	initialize: function (options) {
		this.recentRecs = options.recentRecs; 
	},

  template: JST['recommendations/carousel'], 
	
	render: function () {
		var content = this.template({
			recentRecs: this.recentRecs
		}); 
		
		this.$el.html(content); 
		return this; 
	}

});
