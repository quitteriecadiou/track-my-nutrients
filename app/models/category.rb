class Category < ApplicationRecord
  has_and_belongs_to_many :recipes

  def category_capitalize
    name.capitalize
  end
end
