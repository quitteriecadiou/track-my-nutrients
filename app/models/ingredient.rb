class Ingredient < ApplicationRecord
  belongs_to :food_item
  belongs_to :recipe

  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
