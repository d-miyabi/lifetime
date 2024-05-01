class BudgetsController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
end
