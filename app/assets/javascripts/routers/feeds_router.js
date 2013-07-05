Readingapp.Routers.Feeds = Backbone.Router.extend({
	initialize: function (options) {
		this.tagcollection = options.tagcollection; 
		this.feedcollection = options.feedcollection; 
		this.friendcollection = options.friendcollection;
		this.$feed = options.rootElement; 
		this.$currentlyReading = options.currentlyReading; 
		this.$totalRead = options.totalRead; 
		this.$toRead = options.toRead; 
		
		var readCount = this.tagcollection.where({name: "read"}).length;
		var toCount = this.tagcollection.where({name: "to-read"}).length;
		
		var minitable = new Readingapp.Views.TagTable({
			collection: this.tagcollection
		}); 
		
		this.$currentlyReading.html(minitable.render().$el); 
		this.$totalRead.html(readCount); 
		this.$toRead.html(toCount); 
		
	}, 
	
	routes: {
		"": 'index', 
		'friends': 'showFriends'
	},
	
	index: function () {
		var feed = new Readingapp.Views.FeedsIndex({
			collection: this.feedcollection
		}); 
		
		this.$feed.html(feed.render().$el); 
	}, 
	
	showFriends: function () {
		var content = JST['dashboards/show_friends']({
			friends: this.friendcollection 
		}); 
		this.$feed.html(content); 
	}
	
});
