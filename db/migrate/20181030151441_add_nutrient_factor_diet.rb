class AddNutrientFactorDiet < ActiveRecord::Migration[5.2]
  def change
    add_column :diets, :protein_factor_diet, :float
    add_column :diets, :carbohydrate_factor_diet, :float
    add_column :diets, :fat_factor_diet, :float
    add_column :diets, :sugars_factor_diet, :float
    add_column :diets, :fibres_factor_diet, :float
    add_column :diets, :fa_saturated_factor_diet, :float
    add_column :diets, :fa_mono_factor_diet, :float
    add_column :diets, :fa_poly_factor_diet, :float
    add_column :diets, :cholesterol_factor_diet, :float
    add_column :diets, :salt_factor_diet, :float
    add_column :diets, :calcium_factor_diet, :float
    add_column :diets, :copper_factor_diet, :float
    add_column :diets, :iron_factor_diet, :float
    add_column :diets, :magnesium_factor_diet, :float
    add_column :diets, :manganese_factor_diet, :float
    add_column :diets, :phosphorus_factor_diet, :float
    add_column :diets, :potassium_factor_diet, :float
    add_column :diets, :sodium_factor_diet, :float
    add_column :diets, :zinc_factor_diet, :float
    add_column :diets, :retinol_factor_diet, :float
    add_column :diets, :beta_carotene_factor_diet, :float
    add_column :diets, :vitamin_d_factor_diet, :float
    add_column :diets, :vitamin_e_factor_diet, :float
    add_column :diets, :vitamin_c_factor_diet, :float
    add_column :diets, :vitamin_b1_factor_diet, :float
    add_column :diets, :vitamin_b2_factor_diet, :float
    add_column :diets, :vitamin_b3_factor_diet, :float
    add_column :diets, :vitamin_b5_factor_diet, :float
    add_column :diets, :vitamin_b6_factor_diet, :float
    add_column :diets, :vitamin_b9_factor_diet, :float
    add_column :diets, :vitamin_b12_factor_diet, :float
  end
end
