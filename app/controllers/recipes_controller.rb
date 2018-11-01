class RecipesController < ApplicationController
  def index
    if params[:query].present?
      @recipes = Recipe.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @recipes = Recipe.where(category_id: params[:category][:id])
    elsif params[:fooditem].present?
      ingredients = FoodItem.find(params[:fooditem][:id]).ingredients
      @recipes = ingredients.map { |i| i.recipe }
    else
      @recipes = Recipe.all
    end
  end

  def show
    @profile = current_user.profile
    @added_recipe = @profile.added_recipes
    @personal_diet = @profile.personal_diet
    @tracker = AddedRecipe.tracker(@added_recipe)
  end

private

end
