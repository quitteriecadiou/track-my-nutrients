class CreatePersonalDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_diets do |t|
      t.references :diet, foreign_key: true
      t.float :protein_obj_personal
      t.float :carbohydrate_obj_personal
      t.float :fat_obj_personal
      t.float :sugars_obj_personal
      t.float :fibres_obj_personal
      t.float :fa_saturated_obj_personal
      t.float :fa_mono_obj_personal
      t.float :fa_poly_obj_personal
      t.float :cholesterol_obj_personal
      t.float :salt_obj_personal
      t.float :calcium_obj_personal
      t.float :copper_obj_personal
      t.float :iron_obj_personal
      t.float :magnesium_obj_personal
      t.float :manganese_obj_personal
      t.float :phosphorus_obj_personal
      t.float :potassium_obj_personal
      t.float :sodium_obj_personal
      t.float :zinc_obj_personal
      t.float :retinol_obj_personal
      t.float :beta_carotene_obj_personal
      t.float :vitamin_d_obj_personal
      t.float :vitamin_e_obj_personal
      t.float :vitamin_c_obj_personal
      t.float :vitamin_b1_obj_personal
      t.float :vitamin_b2_obj_personal
      t.float :vitamin_b3_obj_personal
      t.float :vitamin_b5_obj_personal
      t.float :vitamin_b6_obj_personal
      t.float :vitamin_b9_obj_personal
      t.float :vitamin_b12_obj_personal

      t.timestamps
    end
  end
end
