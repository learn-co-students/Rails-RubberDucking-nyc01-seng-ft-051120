Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
end
