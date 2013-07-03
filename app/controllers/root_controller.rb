class RootController < ApplicationController
  before_filter :require_login, :only => [:my_books]
    
  def home
    @books = Book.all
    if @current_user
      render :dashboard
    else
      render :home
    end
  end
  
  def my_books
    render :my_books
  end
  
  def search
    @search = Book.search do 
      fulltext params[:title]
    end
    
    @results = @search.results
    
    render :search_results
  end
  
end
