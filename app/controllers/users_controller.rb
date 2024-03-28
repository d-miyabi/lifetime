class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:personal_info, :funeral)
  end
end
