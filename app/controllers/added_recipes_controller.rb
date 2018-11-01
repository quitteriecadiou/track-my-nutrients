class AddedRecipesController < ApplicationController

  def new
    @added_recipe = AddedRecipe.new
  end

  def create
    @added_recipe = AddedRecipe.new(added_recipe_params)
    @added_recipe.date = Date.today
    @added_recipe.profile = current_user.profile

    if @added_recipe.save
      redirect_to dashboard_path(current_user.profile)
    end

  end

  def added_recipe_params
    params.require(:added_recipe).permit(:recipe_id)
  end
end
