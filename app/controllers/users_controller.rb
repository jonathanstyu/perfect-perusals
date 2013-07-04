class UsersController < ApplicationController
  
  def new
    render :signup
  end

  def show
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
  
  def edit
    render :account
  end

end
