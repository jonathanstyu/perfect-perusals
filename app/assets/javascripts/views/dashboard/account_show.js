Readingapp.Views.AccountShow = Backbone.View.extend({
	initialize: function (options) {
		this.user = options.model;  
	},
	
	template: JST['dashboards/user_account'], 
	
	render: function () {
		var content = this.template({
			user: this.user
		}); 
		
		this.$el.html(content); 
		
		return this; 
	}
}); 
