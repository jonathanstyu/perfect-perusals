class UsersController < ApplicationController
  
  def new
    render :signup
  end

  def show
    if params[:id] == @current_user.id
      render 'root/dashboard'
    else
      @user = User.includes(:authored_books).find(params[:id])
      render :public_profile
    end
  end
  
  def edit
    render :account
  end

end
