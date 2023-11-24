Rails.application.routes.draw do
  # Resourceful routes for students
  resources :students

  # If you need a custom root route, you can specify it here. For example:
  # root 'students#index'
end
