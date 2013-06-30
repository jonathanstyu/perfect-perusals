class BooksController < ApplicationController
  
  def index
    render :explore
  end
  
  def show
    @book = Book.find(param[:id])
    render :show
  end
  
end
