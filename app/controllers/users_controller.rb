class UsersController < ApplicationController
  
  def new
    render :signup
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

end
