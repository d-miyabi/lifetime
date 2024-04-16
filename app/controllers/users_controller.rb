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
    @user = User.new(user_params)

    if @user.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
     user = User.find(params[:id])
     user.update(user_params)
     redirect_to root_path
  end

  private
  
  def user_params
    params.require(:user).permit(:personal_info, :funeral_wishes, :funeral_form, :posthumous_name_budget, :funeral_home_budget, :reword_budget, :others_budget, :chief_mourner, :emotion)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
