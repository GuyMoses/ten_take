class UsersController < ApplicationController
  def index
  	@users = User.all
  	render json: {users: @users}
  end

  def show
  	@user = User.find(params[:id])
  	render json: {user: @user}
  end
end
