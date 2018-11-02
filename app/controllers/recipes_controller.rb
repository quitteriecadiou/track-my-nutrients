class RecipesController < ApplicationController
  def index
    @profile = current_user.profile
    @added_recipe = @profile.added_recipes.where(date: Date.today)
    @personal_diet = @profile.personal_diet
    @tracker = AddedRecipe.tracker(@added_recipe)

    if params[:query].present?
      @recipes = Recipe.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @recipes = Recipe.where(name: "#{params[:category]}")
    else
    @recipes = Recipe.all
    end
  end

  def show
    @profile = current_user.profile
    @recipe = Recipe.find(params[:id])
    @added_recipe = @profile.added_recipes.where(date: Date.today)
    @personal_diet = @profile.personal_diet
    @tracker = AddedRecipe.tracker(@added_recipe)
  end

private

end
