class AddStudentToBlogs < ActiveRecord::Migration[8.1]
  def change
    add_reference :blogs, :student, null: false, foreign_key: true
  end
end
