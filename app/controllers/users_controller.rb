class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if Rails.env.production?
      @user.location = request.location.country
    end  
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
