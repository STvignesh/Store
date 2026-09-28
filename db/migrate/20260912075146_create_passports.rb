class CreatePassports < ActiveRecord::Migration[8.1]
  def change
    create_table :passports do |t|
      t.references :user, null: false, foreign_key: true
      t.string :passport_number
      t.string :country

      t.timestamps
    end
  end
end
