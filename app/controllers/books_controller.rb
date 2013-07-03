class BooksController < ApplicationController
  before_filter :require_login, except: [:show, :index]
    
  def show
    @book = Book.includes(:authors, :reviews).find(params[:id])
    render :show
  end
  
  def new
    @book = Book.new 
    render :new
  end
  
  def create
    @book = Book.new(params[:book])
    if @book.save 
      render json: @book
    else
      render json: @book.errors
    end
  end
  
end
