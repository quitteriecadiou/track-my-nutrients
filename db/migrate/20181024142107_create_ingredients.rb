class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.references :food_item, foreign_key: true
      t.references :recipe, foreign_key: true
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
