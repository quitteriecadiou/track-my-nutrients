class CreateAddedRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :added_recipes do |t|
      t.date :date
      t.references :recipe, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
