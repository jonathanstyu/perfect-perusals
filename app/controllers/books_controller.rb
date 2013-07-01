class BooksController < ApplicationController
  before_filter :require_login, except: :show
  
  def index
    @books = Book.all
    render :explore
  end
  
  def show
    @book = Book.includes(:authors, :reviews).find(params[:id])
    render :show
  end
  
end
