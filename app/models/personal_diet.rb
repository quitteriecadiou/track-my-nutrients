class PersonalDiet < ApplicationRecord
  belongs_to :diet
  belongs_to :profile
end
