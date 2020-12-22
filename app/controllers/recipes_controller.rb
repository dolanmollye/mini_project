class RecipesController < ApplicationController
  def index
    if params["sort"] == "Least"
      @recipes = Recipe.joins(:recipe_ingredients).group("recipe_id").order("count(recipe_id) ASC")
    elsif params["sort"] == "Most"
      @recipes = Recipe.joins(:recipe_ingredients).group("recipe_id").order("count(recipe_id) DESC")
    else
      @recipes = Recipe.all
    end
  end

  def new
    @recipe = Recipe.new
    @users = User.all
    @ingredients = Ingredient.all
  end

  def create
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = @recipe.recipe_ingredients
    @user = @recipe.user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
