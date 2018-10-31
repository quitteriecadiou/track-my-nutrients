class AddUnitAndMgEquivalentPerUnitToFoodItems < ActiveRecord::Migration[5.2]
  def change
    add_column :food_items, :unit, :string
    add_column :food_items, :mg_equivalent_per_unit, :integer
  end
end
