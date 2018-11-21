class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include ApplicationHelper

  NUTRIENTS = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "cholesterol", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_d", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]

  NUTRIENTS_UL = {
    protein: 1,
    carbohydrate: 1,
    fat: 1,
    sugars: 1,
    fibres: 1.2,
    fa_saturated: 1,
    fa_mono: 1,
    fa_poly: 1,
    cholesterol: 1,
    salt: 1,
    calcium: 2,
    copper: 1,
    iron: 2,
    magnesium: 2,
    manganese: 2,
    phosphorus: 2,
    potassium: 2,
    sodium: 2,
    zinc: 2,
    retinol: 1,
    beta_carotene: 2,
    vitamin_d: 2,
    vitamin_e: 1,
    vitamin_c: 2,
    vitamin_b1: 2,
    vitamin_b2: 2,
    vitamin_b3: 2,
    vitamin_b5: 2,
    vitamin_b6: 2,
    vitamin_b9: 2,
    vitamin_b12: 1.5
  }

  NUTRIENTS_WEIGHT = {
    protein: 3,
    carbohydrate: 1,
    fat: 1,
    sugars: 1,
    fibres: 1,
    fa_saturated: 1,
    fa_mono: 1,
    fa_poly: 1,
    cholesterol: 1,
    salt: 1,
    calcium: 1,
    copper: 1,
    iron: 1,
    magnesium: 1,
    manganese: 1,
    phosphorus: 1,
    potassium: 1,
    sodium: 1,
    zinc: 1,
    retinol: 1,
    beta_carotene: 1,
    vitamin_d: 1,
    vitamin_e: 1,
    vitamin_c: 1,
    vitamin_b1: 1,
    vitamin_b2: 1,
    vitamin_b3: 1,
    vitamin_b5: 1,
    vitamin_b6: 1,
    vitamin_b9: 1,
    vitamin_b12: 1
  }
end
