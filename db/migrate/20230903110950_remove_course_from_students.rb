class RemoveCourseFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :course, :string
  end
end
