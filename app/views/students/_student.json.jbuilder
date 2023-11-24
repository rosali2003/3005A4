json.extract! student, :student_id, :first_name, :last_name, :email, :enrollment_date, :created_at, :updated_at
json.url student_url(student, format: :json)
