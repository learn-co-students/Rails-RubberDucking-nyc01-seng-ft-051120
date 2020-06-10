Rails.application.routes.draw do
  resources :ducks, only: [:index, :edit, :show, :create, :new, :destroy, :update ]
  resources :students, only: [:index,:edit, :show, :create, :new, :destroy, :update]
end
