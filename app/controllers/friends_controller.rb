class FriendsController < ApplicationController
  def new
    @friend = Friend.new
  end

  def show; end

  def create
    @friend = current_user.friends.build(friend_params)
    if @friend.save
      redirect_to root_path
    else
      @errors = @friend.errors.full_messages
      render :new
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:friends_name, :contact)
  end
end
