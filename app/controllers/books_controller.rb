class BooksController < ApplicationController
  
  def index
    render :explore
  end
  
  def show
    @book = Book.includes(:authors).find(params[:id])
    render :show
  end
  
end
