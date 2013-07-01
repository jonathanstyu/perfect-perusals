class CommentsController < ApplicationController
  
  def index
    @review = Review.find(params[:review_id])
    render json: @review.comments
  end
  
  def create
    @comment = @current_user.comments.build(params[:comment])
    @comment.review_id = params[:review_id]
    
    if @comment.save!
      render json: @comment
    else
      render json: @comment.errors
    end
  end
  
end
