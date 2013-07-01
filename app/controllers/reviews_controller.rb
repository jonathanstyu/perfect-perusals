class ReviewsController < ApplicationController

  def index
    @reviews = @current_user.reviews
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @reviews}
    end
    
  end
  
end
