class UsersController < ApplicationController
  before_action :logged_in_user, only:[:show,:list]
  def home
  end
  def show
    if User.where(public_uid: params[:id]).empty?
      @user = nil
    else
      @user = User.find_by(public_uid: params[:id])
    end
  end
  def list
    @users = User.all
  end
end
