class DropRecipesCategoriesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :recipes_categories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
