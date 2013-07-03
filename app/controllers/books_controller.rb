class BooksController < ApplicationController
  before_filter :require_login, except: [:show, :index]
    
  def show
    @book = Book.includes(:authors, :reviews).find(params[:id])
    render :show
  end
  
end
