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
		"": "index",
		"friend/:id": "friendRec"
	}, 
	
	index: function () {
		var carouselView = new Readingapp.Views.RecommendationsIndex({
			recentRecs: this.recentRecs
		}); 
		this.$maincontent.html(carouselView.render().$el); 
	}, 
	
	friendRec: function (id) {
		var that = this; 
		var url = '/users/'+ id +'/feed'; 
		var parseReviews = function (data) {
			var reviews = []
			data.forEach(function (json) {
				if (json.type == "Review" && json.review.stars > 3) {
					reviews.push(json); 
				}
			}); 
			return reviews; 
		}
		
		$.ajax({
			url: url, 
			method: "get", 
			success: function (data) {
				var friendRecs = parseReviews(data); 
				if (friendRecs.length == 0) {
					that.$maincontent.html(JST['recommendations/empty_rec']({})); 					
				} else {
					that.$maincontent.html(JST['recommendations/friend_rec']({
						friendRec: friendRecs
					})); 					
				}
			}
		}); 
	}
});
