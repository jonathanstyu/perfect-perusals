class CommentsController < ApplicationController
  
  def index
    @review = Review.find(params[:review_id])
    render json: @review.comments
  end
  
end
