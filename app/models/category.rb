class Category < ApplicationRecord
  has_many :recipes

  def category_capitalize
    name.capitalize
  end
end
