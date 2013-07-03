class TaggingsController < ApplicationController
  before_filter :require_login
  
  def index
    @tagging = @current_user.taggings
    respond_to do |format|
      format.json {render json: @tagging}
    end
  end
  
  def create
    @tagging = @current_user.taggings.build(params[:tagging])
    if @tagging.save!
      render json: @tagging
    else
      render json: @tagging.errors, status: 400
    end
  end
  
  def update
    @tagging = @current_user.taggings.find(params[:id])
    if @tagging && @tagging.update_attributes!(params[:name])
      render json: @tagging
    else
      render json: @tagging.errors, status: 400
    end
  end
  
  def destroy
    @tagging = @current_user.taggings.find(params[:id])
    if @tagging && @tagging.destroy()
      render json: @tagging, status: 200
    else
      render json: @tagging.errors, status: 400
    end
  end
  
end
