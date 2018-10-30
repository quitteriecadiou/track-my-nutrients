class RemoveNutrientObjDietFromDiets < ActiveRecord::Migration[5.2]
  def change
    remove_column :diets, :protein_obj_diet, :float
    remove_column :diets, :carbohydrate_obj_diet, :float
    remove_column :diets, :fat_obj_diet, :float
    remove_column :diets, :sugars_obj_diet, :float
    remove_column :diets, :fibres_obj_diet, :float
    remove_column :diets, :fa_saturated_obj_diet, :float
    remove_column :diets, :fa_mono_obj_diet, :float
    remove_column :diets, :fa_poly_obj_diet, :float
    remove_column :diets, :cholesterol_obj_diet, :float
    remove_column :diets, :salt_obj_diet, :float
    remove_column :diets, :calcium_obj_diet, :float
    remove_column :diets, :copper_obj_diet, :float
    remove_column :diets, :iron_obj_diet, :float
    remove_column :diets, :magnesium_obj_diet, :float
    remove_column :diets, :manganese_obj_diet, :float
    remove_column :diets, :phosphorus_obj_diet, :float
    remove_column :diets, :potassium_obj_diet, :float
    remove_column :diets, :sodium_obj_diet, :float
    remove_column :diets, :zinc_obj_diet, :float
    remove_column :diets, :retinol_obj_diet, :float
    remove_column :diets, :beta_carotene_obj_diet, :float
    remove_column :diets, :vitamin_d_obj_diet, :float
    remove_column :diets, :vitamin_e_obj_diet, :float
    remove_column :diets, :vitamin_c_obj_diet, :float
    remove_column :diets, :vitamin_b1_obj_diet, :float
    remove_column :diets, :vitamin_b2_obj_diet, :float
    remove_column :diets, :vitamin_b3_obj_diet, :float
    remove_column :diets, :vitamin_b5_obj_diet, :float
    remove_column :diets, :vitamin_b6_obj_diet, :float
    remove_column :diets, :vitamin_b9_obj_diet, :float
    remove_column :diets, :vitamin_b12_obj_diet, :float
  end
end
