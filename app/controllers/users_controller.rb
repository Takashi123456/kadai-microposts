class UsersController < ApplicationController
  def index
    @pagy, @users = pagy(User.order(id: :desc), items:25)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
  end
end
