class UsersController < ApplicationController
  before_action :move_to_index, except: %i[index show]
  before_action :set_user_by_name, only: %i[show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      @users = [current_user]
    else
      @users = []
      render :new
    end
  end

  def show
    # @user
    Rails.logger.debug "show: @user = #{@user.inspect}"
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
    # @user
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.name), notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'User was successfully destroyed.'
  end

  private

  def set_user_by_name
    @user = User.find_by!(name: params[:name])
    Rails.logger.debug "set_user_by_name: params[:name] = #{params[:name]}, @user = #{@user.inspect}"
    unless @user
      redirect_to root_path, alert: "User not found"
    end
  end
  
  def user_params
    params.require(:user).permit(:strengths, :hobbies, :skills,
                                 :funeral_wishes, :funeral_form, :posthumous_name_budget, :funeral_home_budget, :reword_budget, :others_budget, :chief_mourner, :kinship, :ashes, :posthumous_name, :belongings, :legacy, :emotion)
  end

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
