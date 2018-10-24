class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.integer :height
      t.integer :weight
      t.references :user, foreign_key: true
      t.references :personal_diet, foreign_key: true

      t.timestamps
    end
  end
end
