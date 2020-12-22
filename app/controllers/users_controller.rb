class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

  end

  def show
    @user = User.find(params[:id])
    @allergies = @user.allergies
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :bio, :age, :skill_level)
  end
end
