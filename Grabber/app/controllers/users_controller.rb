class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    user_params
    @user = User.new(params[:user])
    
    if @user.save
        redirect_to @user, notice: "Thank you for signing up for Grabber!"
    else
        render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:avatar_url, :email, :name, :password, :password_confirmation, :username)
  end
end
