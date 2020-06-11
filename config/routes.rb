Rails.application.routes.draw do
  resources :ducks 
  resources :students
  
  
  # get '/students', to: 'students#index', as: 'students'
  # get '/student/:id', to: 'students#show', as: 'student'
end
