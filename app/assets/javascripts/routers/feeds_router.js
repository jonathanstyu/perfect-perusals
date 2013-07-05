Readingapp.Routers.Feeds = Backbone.Router.extend({
	initialize: function (options) {
		this.tagcollection = options.tagcollection; 
		this.feedcollection = options.feedcollection; 
		this.$feed = options.rootElement; 
		this.$currentlyReading = options.currentlyReading; 
		this.$totalRead = options.totalRead; 
		this.$toRead = options.toRead; 
	}, 
	
	routes: {
		"": 'index', 
		"account": 'showAccount'
	},
	
	index: function () {
		var feed = new Readingapp.Views.FeedsIndex({
			collection: this.feedcollection
		}); 
		
		var readCount = this.tagcollection.where({name: "read"}).length;
		var toCount = this.tagcollection.where({name: "to-read"}).length;
		
		var minitable = new Readingapp.Views.TagTable({
			collection: this.tagcollection
		}); 
		
		this.$currentlyReading.html(minitable.render().$el); 
		this.$totalRead.html(readCount); 
		this.$toRead.html(toCount); 
		this.$feed.html(feed.render().$el); 
	}, 
	
	showAccount: function () {
		var account = new Readingapp.Views.AccountShow({
		}); 
		
		this.$feed.html(account.render().$el); 
	}
});
