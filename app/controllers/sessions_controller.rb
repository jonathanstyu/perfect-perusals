class SessionsController < ApplicationController
  
  def create
    @user = User.find_by_email(params[:email])
    if @user.verify_password(params[:password])
      redirect_to 'root#dashboard'
    else
      redirect_to :back
    end
  end
  
end
