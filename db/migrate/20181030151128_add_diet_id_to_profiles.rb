class AddDietIdToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :diet, foreign_key: true
  end
end
