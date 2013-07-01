class BooksController < ApplicationController
  
  def index
    @books = Book.all
    render :explore
  end
  
  def show
    @book = Book.includes(:authors, :reviews).find(params[:id])
    render :show
  end
  
end
