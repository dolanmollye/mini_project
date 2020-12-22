class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @ingredients = Ingredient.all
  end

  def create
    @user = User.create(name: user_params[:name], bio: user_params[:bio], age: user_params[:age], skill_level: user_params[:skill_level])

    if !@user.valid?
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end

    if user_params[:ingredient_ids]
      user_params[:ingredient_ids].each do |id|
        Allergy.create(ingredient_id: id, user_id: @user.id)
      end
    end

    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
    @allergies = @user.allergies
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user - User.find(params[:id])
    @user.update(user_params)

    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :bio, :age, :skill_level, ingredient_ids: [])
  end
end
