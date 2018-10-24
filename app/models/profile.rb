class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :personal_diet
end
