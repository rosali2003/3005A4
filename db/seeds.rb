# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

students = Student.create([{first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', enrollment_date: '2023-09-01'},
{first_name: 'Jane', last_name: 'Smith', email: 'jane.smith@example.com', enrollment_date: '2023-09-01'},
{first_name: 'Jim', last_name: 'Beam', email: 'jim.beam@example.com', enrollment_date: '2023-09-02'}])

