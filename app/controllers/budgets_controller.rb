class BudgetsController < ApplicationController
  def edit
    @user = User.find_by!(name: params[:id])
  end
end
