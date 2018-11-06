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
      respond_to do |format|
        format.html { redirect_to edit_recipe_path(@recipe) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to edit_recipe_path(@recipe) }
      format.js
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:food_item_id, :quantity)
  end
end
