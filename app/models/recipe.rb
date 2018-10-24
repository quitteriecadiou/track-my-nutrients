class Recipe < ApplicationRecord
  belongs_to :category
  has_many :ingredients
  has_many :food_item, through: :ingredients
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes

  validates :name, presence: true
  validates :portion, presence: true
  validates :category, presence: true, inlcusion: { in: ['breakfast', 'lunch', 'dinner', 'snack', 'dessert'] }
end
