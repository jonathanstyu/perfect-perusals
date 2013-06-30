class BooksController < ApplicationController
  
  def index
    render :explore
  end
  
  def show
    @book = Book.includes(:authors, :reviews).find(params[:id])
    render :show
  end
  
end
