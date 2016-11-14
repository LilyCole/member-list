class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
  end

  # def new
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      # something
      redirect_to users_path
    else
      # something else
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name,:avatar)
  end

end
