class RecipesController < ApplicationController
  def index
    @profile = current_user.profile
    @added_recipe = @profile.added_recipes.where(date: Date.today)
    @personal_diet = @profile.personal_diet
    @tracker = AddedRecipe.tracker(@added_recipe)
    diet = current_user.profile.diet
    @diet_recipes = diet.recipes
    @recipes = @diet_recipes.includes(:categories).where(profile_id: [User.where(email: "admin@admin.com").first.profile.id, current_user.profile.id]) # TODO: Should probably move to the else part of the below statement

    if params[:query].present?
      @recipes = Recipe.includes(:categories).where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      category = Category.find(params[:category][:id])
      @recipes = category.recipes
    elsif params[:fooditem].present?
      ingredients = FoodItem.find(params[:fooditem][:id]).ingredients
      @recipes = ingredients.map { |i| i.recipe }
    else
      @recipes
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
    params[:recipe][:category_ids].each do |category_id|
      @recipe.categories << Category.find(category_id.to_i)
    end
    @recipe.prep_time = "Unknown" if @recipe.prep_time.nil?
    @recipe.difficulty = "Unknown" if @recipe.difficulty.nil?
    @recipe.description = "No instructions available" if @recipe.description.nil?
    @recipe[:photo] = "placeholder_1.jpg" if @recipe[:photo].nil?
    @recipe.profile_id = current_user.profile.id
    Diet.all.each do |diet|
      @recipe.diets << Diet.find(diet.id)
    end
    NUTRIENTS.each do |nutrient|
      nutrient_per_portion = "#{nutrient}_per_portion".to_sym
      @recipe[nutrient_per_portion] = 0
    end

    if @recipe.save
      redirect_to edit_recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    if @recipe.profile_id == current_user.profile.id
      @recipe.prep_time = nil if @recipe.prep_time == "Unknown"
      @recipe.difficulty = nil if @recipe.difficulty == "Unknown"
      @recipe.description = nil if @recipe.description == "No instructions available"
      @ingredient = Ingredient.new
    else
      redirect_to recipe_path(@recipe)
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)

      @recipe.prep_time = "Unknown" if @recipe.prep_time == ""
      @recipe.difficulty = "Unknown" if @recipe.difficulty == ""
      @recipe.description = "No instructions available" if @recipe.description == ""
      @recipe.save

      if @recipe.ingredients.count < 1
        redirect_to edit_recipe_path(@recipe)
      else
        redirect_to recipe_path(@recipe)
      end
    else
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :portion, :prep_time, :ingredient_id, :difficulty, :photo)
  end
end
