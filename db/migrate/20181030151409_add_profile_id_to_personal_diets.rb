class AddProfileIdToPersonalDiets < ActiveRecord::Migration[5.2]
  def change
    add_reference :personal_diets, :profile, foreign_key: true
  end
end
