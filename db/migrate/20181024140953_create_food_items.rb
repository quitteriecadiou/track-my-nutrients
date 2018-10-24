class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :name
      t.float :protein
      t.float :carbohydrate
      t.float :fat
      t.float :sugars
      t.float :fibres
      t.float :fa_saturated
      t.float :fa_mono
      t.float :fa_poly
      t.float :cholesterol
      t.float :salt
      t.float :calcium
      t.float :copper
      t.float :iron
      t.float :magnesium
      t.float :manganese
      t.float :phosphorus
      t.float :potassium
      t.float :sodium
      t.float :zinc
      t.float :retinol
      t.float :beta_carotene
      t.float :vitamin_d
      t.float :vitamin_e
      t.float :vitamin_c
      t.float :vitamin_b1
      t.float :vitamin_b2
      t.float :vitamin_b3
      t.float :vitamin_b5
      t.float :vitamin_b6
      t.float :vitamin_b9
      t.float :vitamin_b12

      t.timestamps
    end
  end
end
