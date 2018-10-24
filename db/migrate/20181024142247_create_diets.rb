class CreateDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.string :name
      t.string :description
      t.float :protein_obj_diet
      t.float :carbohydrate_obj_diet
      t.float :fat_obj_diet
      t.float :sugars_obj_diet
      t.float :fibres_obj_diet
      t.float :fa_saturated_obj_diet
      t.float :fa_mono_obj_diet
      t.float :fa_poly_obj_diet
      t.float :cholesterol_obj_diet
      t.float :salt_obj_diet
      t.float :calcium_obj_diet
      t.float :copper_obj_diet
      t.float :iron_obj_diet
      t.float :magnesium_obj_diet
      t.float :manganese_obj_diet
      t.float :phosphorus_obj_diet
      t.float :potassium_obj_diet
      t.float :sodium_obj_diet
      t.float :zinc_obj_diet
      t.float :retinol_obj_diet
      t.float :beta_carotene_obj_diet
      t.float :vitamin_d_obj_diet
      t.float :vitamin_e_obj_diet
      t.float :vitamin_c_obj_diet
      t.float :vitamin_b1_obj_diet
      t.float :vitamin_b2_obj_diet
      t.float :vitamin_b3_obj_diet
      t.float :vitamin_b5_obj_diet
      t.float :vitamin_b6_obj_diet
      t.float :vitamin_b9_obj_diet
      t.float :vitamin_b12_obj_diet

      t.timestamps
    end
  end
end
