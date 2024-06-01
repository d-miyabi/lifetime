class FuneralsController < ApplicationController
  def edit
    @user = User.find(name: params[:id])
  end
end
