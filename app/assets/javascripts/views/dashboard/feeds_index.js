Readingapp.Views.FeedsIndex = Backbone.View.extend({
	initialize: function (options) {
		this.collection = options.collection;  
	}, 

  template: JST['dashboards/friend_feed'],
	emptyTemplate: JST['dashboards/no_friends'],
	
	render: function () {
		if (this.collection.length == 0) {
			this.$el.html(this.emptyTemplate({})); 
			return this; 
		}
		
		var content = this.template({
			feeds: this.collection
		}); 
		
		this.$el.html(content); 
		return this; 
	}

});
