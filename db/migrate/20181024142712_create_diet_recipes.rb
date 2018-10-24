class CreateDietRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :diet_recipes do |t|
      t.references :diet, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
