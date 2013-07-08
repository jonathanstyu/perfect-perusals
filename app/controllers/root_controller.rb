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
    @book_results = PgSearch.multisearch(params[:title])
      .where(searchable_type: "Book")
    @people_results = PgSearch.multisearch(params[:title])
      .where(searchable_type: "User")
    
    render :search_results
  end
  
end
