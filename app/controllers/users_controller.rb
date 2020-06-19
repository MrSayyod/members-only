class UsersController < ApplicationController

def index

  @users= User.all

end


  def new
    @user = User.new
  end


  def create

    @user = User.new(user_params)
    @user.save


    redirect_to users_path
  end


end

 private

def set_user
    @user = User.find(params[:id])
  end


 def user_params

params.permit(:username, :password )


end
