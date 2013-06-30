class RootController < ApplicationController
  
  def dashboard
    render :dashboard
  end
  
  def home
    if @current_user
      render :dashboard
    else
      render :home
    end
  end
  
end
