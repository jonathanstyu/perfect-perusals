class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_current_user
  
  def current_user
    @current_user ||= User.find_by_token(session[:token])
  end
  
  def find_current_user
    if session[:token]
      current_user
    else
      @current_user = nil
    end
  end
  
  def require_login
    if @current_user == nil 
      redirect_to login_path
    end
  end
  
end
