class RemovePersonalDietIdFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :personal_diet_id, :bigint
  end
end
