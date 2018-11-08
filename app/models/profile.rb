class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :diet
  has_one :personal_diet
  has_many :added_recipes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :diet_id, presence: true
  validates :height, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :gender, inclusion: { in: ['Female', 'Male'] }, presence: true

  after_create :add_personal_diet

  def suggested_recipes(added_recipes, recipes, user)
    nutrients_eaten = AddedRecipe.tracker(added_recipes)
    nutrients_obj = user.profile.personal_diet

    diet = user.profile.diet


    # Main condition: only recipes where focus nutrient objective (protein, sodium or carb) will not be exceeded
    if diet.name == "High Protein"
      approved_recipes = recipes.where( "protein_per_portion < ?", (nutrients_obj[:protein_obj_personal] - nutrients_eaten[:protein]) )
    elsif diet.name == "Low Carb"
      approved_recipes = recipes.where( "carbohydrate_per_portion < ?", (nutrients_obj[:carbohydrate_obj_personal] - nutrients_eaten[:carbohydrate]) )
    elsif diet.name == "Low Sodium"
      approved_recipes = recipes.where( "sodium_per_portion < ?", (nutrients_obj[:sodium_obj_personal] - nutrients_eaten[:sodium]) )
    else
      approved_recipes = recipes
    end


    recipe_scores = {}

    approved_recipes.each do |recipe|
      recipe_score = 0
      NUTRIENTS.each do |nutrient|
        nutrient_score = (nutrients_obj["#{nutrient}_obj_personal".to_sym] - (nutrients_eaten[nutrient.to_sym] + recipe["#{nutrient}_per_portion".to_sym])) / nutrients_obj["#{nutrient}_obj_personal".to_sym]
        if nutrient_score < 0
          updated_nutrient_score = (nutrients_obj["#{nutrient}_obj_personal".to_sym] * NUTRIENTS_UL[nutrient.to_sym] - (nutrients_eaten[nutrient.to_sym] + recipe["#{nutrient}_per_portion".to_sym])) / (nutrients_obj["#{nutrient}_obj_personal".to_sym] * NUTRIENTS_UL[nutrient.to_sym])
          nutrient_score = 0 if updated_nutrient_score > 0
        end
        recipe_score += nutrient_score * NUTRIENTS_WEIGHT[nutrient.to_sym]
      end
      recipe_score = recipe_score / NUTRIENTS.count
      recipe_scores[recipe.id] = recipe_score
    end

    recipe_scores.delete_if {|recipe_id, recipe_score| recipe_score < 0 }

    recipe_scores.sort_by {|recipe_id, recipe_score| recipe_score }

    suggested_recipes = []

    recipe_scores.each do |recipe_id, recipe_score|
      suggested_recipes << Recipe.find(recipe_id)
    end


    return suggested_recipes.first(8)
    # tracker = AddedRecipe.tracker(added_recipes)
    # recipes.where("protein_per_portion <= ? and carbohydrate_per_portion <= ? and calcium_per_portion <= ? and sodium_per_portion <= ?",
    #               personal_diet[:protein_obj_personal] - tracker[:protein] < 0 ? 0 : personal_diet[:protein_obj_personal] - tracker[:protein],
    #               personal_diet[:carbohydrate_obj_personal] - tracker[:carbohydrate] < 0 ? 0 : personal_diet[:carbohydrate_obj_personal] - tracker[:carbohydrate],
    #               personal_diet[:calcium_obj_personal] - tracker[:calcium] < 0 ? 0 : personal_diet[:calcium_obj_personal] - tracker[:calcium],
    #               personal_diet[:sodium_obj_personal] - tracker[:sodium] < 0 ? 0 : personal_diet[:sodium_obj_personal] - tracker[:sodium]).shuffle.first(8)
  end





  private

# compute les objectifs de la personal diet apres la creation du profile
  def add_personal_diet
    PersonalDiet.create(profile: self).compute_personal_diet(self)
  end


end
