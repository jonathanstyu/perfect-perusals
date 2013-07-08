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
      redirect_to book_path(@book)
    else
      flash[:error] = "There has been some errors saving this book: #{@book.errors}"
      render :new
    end
  end
  
end
