class AddTitleToBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :books, :title, :string
  end
end
