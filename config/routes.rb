Rails.application.routes.draw do
  resources :students
  get 'get_all_students', to: 'students#get_all_students', as: 'get_all_students'
  post 'add_new_student', to: 'students#add_new_student', as: 'add_new_student'
  root 'students#get_all_students'
end
 