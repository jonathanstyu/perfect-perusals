class ReviewsController < ApplicationController
  before_filter :require_login

  def index
    @reviews = @current_user.reviews
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @reviews}
    end    
  end
  
  def create
    @review = @current_user.reviews.build(params[:review])
    @review.book_id = params[:book_id]
    
    if @review.save
      render json: @review, status: 200
    else
      render json: @review.errors, status: 404
    end
  end
  
  def show
    @review = Review.includes(:reviewer, :book).find(params[:id])
    render :show
  end
  
end
