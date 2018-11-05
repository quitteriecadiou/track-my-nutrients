class CreateCategoriesRecipesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_recipes, id: false do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :category, index: true
    end
  end
end
