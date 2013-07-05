Readingapp.Routers.Recommendations = Backbone.Router.extend({
	initialize: function (options) {
		this.$maincontent = options.maincontent; 
		this.$sidebar = options.sidebar; 
		this.recentRecs = options.recentRecs; 
		this.friendscollection = options.friendscollection; 
		
		this.$sidebar.html(JST['recommendations/navbar']({
			friends: this.friendscollection
		})); 
	}, 
	
	routes: {
		"": "index"
	}, 
	
	index: function () {
		var carouselView = new Readingapp.Views.RecommendationsIndex({
			recentRecs: this.recentRecs
		}); 
		this.$maincontent.html(carouselView.render().$el); 
	}
});
