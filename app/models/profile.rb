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

  def suggested_recipes(added_recipes)
    tracker = AddedRecipe.tracker(added_recipes)


    Recipe.where("protein_per_portion <= ? and carbohydrate_per_portion <= ? and calcium_per_portion <= ? and sodium_per_portion <= ?",
                  personal_diet[:protein_obj_personal] - tracker[:protein] < 0 ? 0 : personal_diet[:protein_obj_personal] - tracker[:protein],
                  personal_diet[:carbohydrate_obj_personal] - tracker[:carbohydrate] < 0 ? 0 : personal_diet[:carbohydrate_obj_personal] - tracker[:carbohydrate],
                  personal_diet[:calcium_obj_personal] - tracker[:calcium] < 0 ? 0 : personal_diet[:calcium_obj_personal] - tracker[:calcium],
                  personal_diet[:sodium_obj_personal] - tracker[:sodium] < 0 ? 0 : personal_diet[:sodium_obj_personal] - tracker[:sodium]).first(4)
  end

end

  def filter(added_recipes)
    tracker = AddedRecipe.tracker(added_recipes)
    @four_nutrients = ["protein", "carbohydrate", "calcium", "sodium"]
    @remaining_g_per_nutrients = []
    four_nutrients.each do |nutrient|
      nutrient_obj_personal = "#{nutrient}_obj_personal".to_sym
      nutrient = "#{nutrient}".to_sym
      nutrient_per_portion = "#{nutrient}_per_portion".to_sym
      if personal_diet[nutrient_obj_personal] - tracker[nutrient] < 0
        remaining_g_per_nutrient = 0
      else
        remaining_g_per_nutrient = personal_diet[nutrient_obj_personal] - tracker[nutrient]
      end
      @remaining_g_per_nutrients << remaining_g_per_nutrients
    end
    return @remaining_g_per_nutrients
  end
