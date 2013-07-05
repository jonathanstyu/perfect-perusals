Readingapp.Views.FeedsIndex = Backbone.View.extend({
	initialize: function (options) {
		this.collection = options.collection;  
	}, 

  template: JST['dashboards/index'],
	
	render: function () {
		var content = this.template({
			feeds: this.collection
		}); 
		
		this.$el.html(content); 
		return this; 
	}

});
