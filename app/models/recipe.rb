class Recipe < ApplicationRecord
  has_many :categories
  belongs_to :profile
  has_many :ingredients
  has_many :food_item, through: :ingredients
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes

  validates :name, presence: true, uniqueness: true
  validates :portion, presence: true
  validates :categories, presence: true

  mount_uploader :photo, PhotoUploader

  def compute_recipe_nutrients
    NUTRIENTS.each do |nutrient|
      nutrient_per_portion = "#{nutrient}_per_portion".to_sym
      nutrient = "#{nutrient}".to_sym
      self[nutrient_per_portion] = 0
      self.ingredients.each do |ingredient|
        self[nutrient_per_portion] += (((ingredient.food_item[nutrient] * ingredient.food_item[:mg_equivalent_per_unit]) / 100000 ) * ingredient.quantity) / self.portion
      end
    end
    self.save
  end
end


