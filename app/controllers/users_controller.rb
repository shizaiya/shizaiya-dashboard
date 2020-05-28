class UsersController < ApplicationController
  # before_action :logged_in_user, only:[:show]
  def home
  end
  def show
    @user = User.find(params[:id])
    
  end
end
