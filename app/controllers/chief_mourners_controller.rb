class ChiefMournersController < ApplicationController  

  def new
  end

  def create
    User.create(user_params)
    redirect_to '/'
  end

  def update
    @user = User.find(params[:id])
    redirect_to root_path
  end

  private
  
  def user_params
    params.require(:chief_mourner).permit(:chief_mourner)
  end

end
