class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :diet
  has_one :personal_diet
  has_many :added_recipes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :diet_id, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :gender, inclusion: { in: ['Female', 'Male'] }

  after_create :add_personal_diet












  private

# compute les objectifs de la personal diet apres la creation du profile
  def add_personal_diet
    PersonalDiet.create(profile: self).compute_personal_diet(self)
  end


end
