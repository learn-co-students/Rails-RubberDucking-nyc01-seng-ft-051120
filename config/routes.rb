Rails.application.routes.draw do
  resources :ducks#, only: [:index]
  resources :students#, only: [:index, :show, :new, :create, :edit, :update]

  # get '/ducks', to: 'ducks#index', as: "ducks"
  # get '/ducks/new', to: 'ducks#new', as: "new_duck"
  # get '/ducks/:id', to: 'ducks#show', as: "duck"
  # post '/ducks', to: 'ducks#create'
  # get '/ducks/:id/edit', to: 'ducks#edit'
end