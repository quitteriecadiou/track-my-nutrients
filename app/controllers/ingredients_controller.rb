class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @ingredient.recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recipe = Recipe.find(params[:recipe_id])

    if @ingredient.save
      redirect_to recipe_path(@ingredient.recipe)
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:food_item_id, :quantity)
  end
end
