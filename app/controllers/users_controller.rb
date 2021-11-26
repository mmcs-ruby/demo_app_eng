class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    render json: User.find_by_id(params[:id])
  end

end