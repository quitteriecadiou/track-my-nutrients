class AddedRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :profile

  def self.tracker(added_recipes)
    tracker = {}
    NUTRIENTS.each do |nutrient|
      tracker[nutrient.to_sym] = 0
    end

    added_recipes.each do |added_recipe|
      NUTRIENTS.each do |nutrient|
        nutrient_per_portion = "#{nutrient}_per_portion".to_sym
        tracker[nutrient.to_sym] += added_recipe.recipe[nutrient_per_portion]
      end
    end
    return tracker
  end

end
