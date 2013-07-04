class UsersController < ApplicationController
  
  def new
    render :signup
  end

  def show
    if @current_user && params[:id] == @current_user.id
      respond_to do |format|
        format.html {render 'root/dashboard'}
        format.json {render json: @current_user.events}
      end
      
    else
      @user = User.includes(:authored_books).find(params[:id])
      if @user.authored_books.empty?
        respond_to do |format|
          format.html {render :public_profile}
          format.json {render json: @user.events }
        end
        
      else
        render :author_profile
      end
    end
  end
  
  def edit
    render :account
  end

end
