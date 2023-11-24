class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.text :first_name
      t.text :last_name
      t.text :email
      t.date :enrollment_date

      t.timestamps
    end
  end
end
