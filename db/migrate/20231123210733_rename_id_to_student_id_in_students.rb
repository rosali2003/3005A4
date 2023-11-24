class RenameIdToStudentIdInStudents < ActiveRecord::Migration[6.0]
  def up
    rename_column :students, :id, :student_id

    # If you have foreign keys pointing to this table, you will need to update them as well.
    # Example: 
    # rename_column :another_table, :student_id, :new_student_id
    # add_foreign_key :another_table, :students, column: :new_student_id, primary_key: :student_id

    execute "ALTER TABLE students DROP CONSTRAINT students_pkey"
    execute "ALTER TABLE students ADD PRIMARY KEY (student_id)"

    # If you have indexes on the `id` column, you need to recreate them for `student_id`.
    # Example: 
    # remove_index :students, name: :index_students_on_id
    # add_index :students, :student_id, unique: true
  end

  def down
    # Don't forget to add the reverse migration logic.
    rename_column :students, :student_id, :id
    execute "ALTER TABLE students DROP CONSTRAINT students_pkey"
    execute "ALTER TABLE students ADD PRIMARY KEY (id)"

    # Similarly, reverse any changes made to foreign keys and indexes.
  end
end
