class Student < ApplicationRecord
    self.primary_key = 'student_id'
    validates :email, uniqueness: true
    validates :first_name, :last_name, :email, presence: true
end
