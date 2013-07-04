class UsersController < ApplicationController
  before_filter :require_login, except: [:new, :show]
  
  
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
  
  def friend    
    @person_to_friend = User.find(params[:user_id])
    @current_user.friend(@person_to_friend)
    @friendship = @current_user
      .friendships
      .where(friendee_id: @person_to_friend.id).first
      
    # render json: @friendship
    redirect_to :back
  end
  
  def unfriend
    @friendship = @current_user
      .friendships
      .where(friendee_id: params[:user_id]).first
    
    @friendship.destroy()
    redirect_to :back
  end

end
