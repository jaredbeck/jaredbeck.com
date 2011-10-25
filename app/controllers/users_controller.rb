class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.order :email
  end
  
  def show
    @user = User.find(params[:id])
  end
  
end
