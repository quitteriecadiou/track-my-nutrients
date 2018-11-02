class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @ingredient.recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recipe = @recipe

    if @ingredient.save
      @recipe.compute_recipe_nutrients
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to cocktail_path(@ingredient.cocktail)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:food_item_id, :quantity)
  end
end
