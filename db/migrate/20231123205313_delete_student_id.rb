class DeleteStudentId < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :student_id, :integer
  end
end
