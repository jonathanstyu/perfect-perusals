class SessionsController < ApplicationController
  
  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.verify_password(params[:password])
      session[:token] = @user.generate_token!
      flash[:success] = "You are signed in"
      redirect_to root_path
    else
      flash[:error] = "Please Try Again"
      redirect_to :back
    end
  end
  
  def destroy
    @user = User.find_by_token(session[:token])
    @user.token = nil
    session[:token] = nil 
    flash[:success] = "You have signed out"
    redirect_to login_path
  end
  
end
