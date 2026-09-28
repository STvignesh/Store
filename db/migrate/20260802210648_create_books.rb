class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :author_name
      t.string :no_of_pages
      t.string :genre
      t.timestamps
    end
  end
end
