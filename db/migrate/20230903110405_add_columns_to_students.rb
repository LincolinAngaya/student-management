class AddColumnsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :course, :string
  end
end
