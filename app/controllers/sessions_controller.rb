class SessionsController < ApplicationController
  
  def create
    @user = User.find_by_email(params[:email])
    if @user.verify_password(params[:password])
      redirect_to 'root#dashboard'
    else
      redirect_to :back
    end
  end
  
  def destroy
    @user = User.find_by_token(session[:token])
    @user.token = nil
    session[:token] = nil 
    redirect_to login_path
  end
  
end
