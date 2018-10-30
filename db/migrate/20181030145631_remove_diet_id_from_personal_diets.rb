class RemoveDietIdFromPersonalDiets < ActiveRecord::Migration[5.2]
  def change
    remove_column :personal_diets, :diet_id, :bigint
  end
end
