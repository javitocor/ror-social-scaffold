class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
    @pending_requests = @user.friendships.where(confirmed: false)
  end  

  def send_friend
    friendship = Friendship.create(user_id: current_user.id, friend_id: params[:id], confirmed: false)

    redirect_to users_path, notice: 'Friend request sent.'
  end

  def accept_friend(friendship)
  end

  def reject_friend(friendship)
  end
end
