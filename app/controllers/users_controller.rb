class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
  end

  def friends_check
    return true if Friendship.where(user_id: current_user.id, friend_id: params[:id], confirmed: true)
  end

  def send_friend 
  end

  def accept_friend
  end

  def reject_friend 
  end
end
