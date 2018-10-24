class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :prep_time
      t.integer :portion
      t.references :category, foreign_key: true
      t.string :difficulty
      t.float :protein_per_portion
      t.float :carbohydrate_per_portion
      t.float :fat_per_portion
      t.float :sugars_per_portion
      t.float :fibres_per_portion
      t.float :fa_saturated_per_portion
      t.float :fa_mono_per_portion
      t.float :fa_poly_per_portion
      t.float :cholesterol_per_portion
      t.float :salt_per_portion
      t.float :calcium_per_portion
      t.float :copper_per_portion
      t.float :iron_per_portion
      t.float :magnesium_per_portion
      t.float :manganese_per_portion
      t.float :phosphorus_per_portion
      t.float :potassium_per_portion
      t.float :sodium_per_portion
      t.float :zinc_per_portion
      t.float :retinol_per_portion
      t.float :beta_carotene_per_portion
      t.float :vitamin_d_per_portion
      t.float :vitamin_e_per_portion
      t.float :vitamin_c_per_portion
      t.float :vitamin_b1_per_portion
      t.float :vitamin_b2_per_portion
      t.float :vitamin_b3_per_portion
      t.float :vitamin_b5_per_portion
      t.float :vitamin_b6_per_portion
      t.float :vitamin_b9_per_portion
      t.float :vitamin_b12_per_portion

      t.timestamps
    end
  end
end
