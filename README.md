Running the project
1. Clone the github repository
2. Ensure your system has ruby version 3.2.2 and rails version 7.0.8. If you don't have ruby on your system, please refer to this doc to install ruby: https://www.ruby-lang.org/en/documentation/installation/
and this doc to install rails: https://guides.rubyonrails.org/v5.1/getting_started.html
3. After installing the ruby and rails, run `rails db:migrate` to run all the migrations
4. To run the server, run `rails s`
5. To connect to the postgres server without pgAdmin, you can use the rails console by running `rails c`


get_all_students
- this function grabs all tuples of Student

add_student
- this function creates a new student

update
- this function updates the student's email

destroy
- this function deletes a student

Video:
https://youtu.be/iGGN1lmvgg4