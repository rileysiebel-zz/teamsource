class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new user_params
    if @user.save
      render :text => "User Created!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:screen_name, :password, :email)
  end
end
