class ChiefMournersController < ApplicationController
  def new; end

  def create
    User.create(user_params[:id])
    redirect_to '/'
  end

  def edit
    @user = User.find_by!(name: params[:id])
  end

  def update
    user_chief_mourner = User.find(params[:id])
    binding.pry
    user_chief_mourner.update(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:chief_mourner).permit(:chief_mourner)
  end
end
