class UsersController < ApplicationController
  
  def new
    render :signup
  end

  def show
    if params[:id] == @current_user.id
      render 'root/dashboard'
    else
      @user = User.includes(:authored_books).find(params[:id])
      if @user.authored_books.empty?
        render :public_profile
      else
        render :author_profile
      end
    end
  end
  
  def edit
    render :account
  end

end
