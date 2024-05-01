class BelongingsController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
end
