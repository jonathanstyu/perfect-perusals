class ReviewsController < ApplicationController

  def index
    @reviews = @current_user.reviews
    render :index
  end
  
end
