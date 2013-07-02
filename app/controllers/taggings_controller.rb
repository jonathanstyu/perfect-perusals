class TaggingsController < ApplicationController
  before_filter :require_login
  
  def index
    @tagging = @current_user.taggings
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @tagging}
    end
    
  end
  
end
