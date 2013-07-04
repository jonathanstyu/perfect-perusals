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
      
    redirect_to :back
  end
  
  def unfriend
    @friendship = @current_user
      .friendships
      .where(friendee_id: params[:user_id]).first
    
    @friendship.destroy()
    redirect_to :back
  end
  
  def feed
    if params[:user_id]
      @user = User.find(params[:user_id])
      @events = @user.events
    else
      @events = @current_user.events
      # Put the friend feed here. 
    end
    
    render 'rabl_templates/feed', formats: :json
  end

end
