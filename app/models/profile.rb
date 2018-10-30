class Profile < ApplicationRecord
  belongs_to :user
  has_one :personal_diet
  has_many :added_recipes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :diet_id, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :gender, inclusion: { in: ['Female', 'Male'] }
end
