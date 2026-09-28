class AddConstraintsToPassports < ActiveRecord::Migration[8.1]
  def change
    remove_index :passports, :user_id if index_exists?(:passports, :user_id)
    add_index :passports, :user_id, unique: true
  end
end
