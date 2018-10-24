class AddedRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :profile
end
