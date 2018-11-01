class Recipe < ApplicationRecord
  belongs_to :category
  has_many :ingredients
  has_many :food_item, through: :ingredients
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes

  validates :name, presence: true, uniqueness: true
  validates :portion, presence: true
  validates :category, presence: true

  def compute_recipe_nutrients(recipe)
    @recipe = recipe
    nutrients = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "cholesterol", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_d", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]
    nutrients.each do |nutrient|
      nutrient_per_portion = "#{nutrient}_per_portion".to_sym
      nutrient = "#{nutrient}".to_sym
      @recipe[nutrient_per_portion] = 0
      @recipe.ingredients.each do |ingredient|
        @recipe[nutrient_per_portion] += (((ingredient.food_item[nutrient] * ingredient.food_item[:mg_equivalent_per_unit]) / 100000 ) * ingredient.quantity) / @recipe.portion
      end
    end
    @recipe.save
  end
end


