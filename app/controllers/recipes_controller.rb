class RecipesController < ApplicationController
  def index
    @profile = current_user.profile
    @added_recipe = @profile.added_recipes.where(date: Date.today)
    @personal_diet = @profile.personal_diet
    @tracker = AddedRecipe.tracker(@added_recipe)

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
    @recipe = Recipe.find(params[:id])
    @added_recipe = @profile.added_recipes.where(date: Date.today)
    @personal_diet = @profile.personal_diet
    @tracker = AddedRecipe.tracker(@added_recipe)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.profile_id = current_user.profile.id

    if @recipe.save
      redirect_to dashboard_path
    else
      render :new
    end

  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :category_id, :portion, :prep_time, :ingredient_id, :difficulty)
  end

end
