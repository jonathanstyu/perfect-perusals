class UsersController < ApplicationController
  
  def new
    render :signup
  end

  def show
    @user = User.find(param[:id])
    render :show
  end

end
