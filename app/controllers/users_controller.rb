class UsersController < ApplicationController
  before_filter :require_login, except: [:new, :show, :create, :update]
    
  
  def index
    respond_to do |format|
      format.json {render json: @current_user.to_json({except: :password_hash})}
    end
  end
  
  def new
    @user = User.new
    render :signup
  end
  
  def create
    unless params[:user][:password] == params[:passconfirm]
      flash[:error] = "The passwords do not match"
      render :signup, :status => 422
    end
    
    @user = User.new(params[:user])
    p @user
    if @user.save 
      redirect_to user_path(@user)
    else
      render :signup, :status => 422
    end
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
      @events = []
      @current_user.friends.each do |friend|
        @events += friend.events
      end
      @events.sort_by {|event| event.updated_at }.reverse
    end
    
    render 'rabl_templates/friend_feed', formats: :json
  end
  
  def friends
    @friends = @current_user.friends
    render 'rabl_templates/friends', formats: :json
  end

end
