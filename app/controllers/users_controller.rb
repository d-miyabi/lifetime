class UsersController < ApplicationController
before_action :move_to_index, except: [:index, :show]

  def index
    if user_signed_in?
    @users = [current_user]
    else
    @users = []
    end
  end

  def show
    @user = User.find(params[:id])
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
    params.require(:user).permit(:personal_info, :funeral, :budget, :chief_mourner, :emotion)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
